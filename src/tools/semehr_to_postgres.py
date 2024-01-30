#!/usr/bin/env python3

# Add the semehr_results to the PostgreSQL database.
#   Reads the json files containing annotations,
#   adds the content of the redacted (anonymous) text files
#   and adds the SOPInstanceUID as a primary key index.
# Can be used to query the PostgreSQL database.

# NOTE:
#   To do: log into the SMI_LOGS_ROOT directory or LogsRoot from yaml

# Usage:
#   --drop-table - will delete the table before doing anything else (can be used alone)
#   --add-index       - will add several optional indexes (can be used alone)
#   -j   directory of .json files
#   -t   directory of .txt file (the redacted text)
#   -q   optional query to perform, eg. cui:C0205076 to find documents mentioning "chest wall"

# Table semehr_results schema is SOPInstanceUID, semehr_results
# where the semehr_results columns contains jsonb:
#  "PatientID": "xxx",
#  "ContentDate": "20100118",
#  "SOPClassUID": "1.2.840.10008.5.1.4.1.1.88.33",
#  "SOPInstanceUID": "1.2.840.113704.7.1.2219283228.6664.1263808370.4048",
#  "StudyInstanceUID": "1.2.124.113532.10.48.85.25.20100118.54509.3249161",
#  "ModalitiesInStudy": "CT\\SR",
#  "SeriesInstanceUID": "1.2.840.113704.7.1.1.1485948920.1205405541.11190.194.2.26535"
#  "redacted_text", "sentences", "annotations", "phenotypes"

# output_docs has features:
#   "PREF": "Rhythm"
#   "Experiencer": "Patient"
#   "Negation": "Affirmed"
#   "STY": "Finding"
#   "TUI": "T033"
#   "Temporality": "Recent"
#   "VOCABS": "CHV"
#   "inst": "C0871269"
#   "string_orig": "rhythm"
# semehr_results has features in lower-case:
#   "pref", "negation", "sty", "study_concepts", "experiencer", "str", "temporality", "cui"
# semehr_results files are the definitive ones to be used.
#
# output_docs:
#  { "annotations":
#    [
#      [
#        { type: Mention, features: { X=Y } }, ...
#      ],
#      [
#        { type: Phenotype, features: { X=Y } }, ...
#      ],
#      [
#        { type: Mention, features: { X=Y } }, ...
#      ]
#    ]
#  }
# semehr_results:
# {
#   "annotations": [ {start,end,str,cui}, ... ]
#   "phenotypes": [ {start,end,major_type,minor_type}, ... ]
#   "sentences": [ {start,end}, ... ]
# }

import argparse
import glob
import json
import logging
import os, os.path
import pprint
import psycopg2
from psycopg2 import sql
from psycopg2.extras import Json
from psycopg2.extensions import AsIs
import re
import sys
import yaml

# DB config
pgHost = 'localhost'
pgUser = 'semehr'
pgPass = 'semehr' 
pgDatabaseName = 'semehr'
pgSchemaName = 'semehr'               # schema is semehr
pgTableName = 'semehr_results'        # table is semehr_results
pgCUITableName = 'cui_count'          # table is cui_count
pgCUISOPTableName = 'cui_sop'         # table is cui_sop
pgPKName = 'SOPInstanceUID'           # primary key column name
pgJsonColumnName = 'semehr_results'   # JSON column name
pgConnection = None # created in open()
verbose = False


def postgres_open():
    global pgConnection
    logging.info('Connecting to postgres')
    pgConnection = psycopg2.connect(host=pgHost, user=pgUser, password=pgPass, dbname=pgDatabaseName)
    # Set the schema name so it doesn't need to be specified before each table name
    pgConnection.cursor().execute(sql.SQL("SET search_path TO {},public").format(sql.Identifier(pgSchemaName)))
    pgConnection.commit()


def postgres_drop_table():
    pgCursor = pgConnection.cursor()
    try:
        logging.info('Delete contents of table')
        pgCursor.execute(sql.SQL("DELETE FROM {}").format(sql.Identifier(pgTableName)))
    except:
        logging.error('cannot delete content of %s' % (pgTableName))
    pgConnection.commit()
    pgCursor.close()


def postgres_add_index():
    pgCursor = pgConnection.cursor()
    try:
        # Create functions to be used in indexes
        pgCursor.execute("create or replace function annotation_array_as_text(doc jsonb, fieldname text) returns text as $$ "
                "   select array_agg(x)::text from (select jsonb_array_elements(doc->'annotations')->>fieldname) as f(x);"
            " $$ language sql strict immutable;")
        pgCursor.execute("create or replace function annotation_array_as_text_array(doc jsonb, fieldname text) returns text[] as $$ "
            "   select array_agg(x) from (select jsonb_array_elements(doc->'annotations')->>fieldname) as f(x);"
            " $$ language sql strict immutable;")
        # Create text indexes
        # eg. CREATE INDEX pref_as_text  ON semehr.semehr_results USING GIN (annotation_array_as_text(semehr_results, 'pref') gin_trgm_ops);
        for elem in ['pref', 'str']:
            query = "CREATE INDEX IF NOT EXISTS %s_as_text ON {tab} USING GIN (annotation_array_as_text(semehr_results, '%s') gin_trgm_ops);" % (elem,elem)
            logging.info('Create postgres index %s_as_text on %s using %s' % (elem, pgTableName, query))
            #print(pgCursor.mogrify(sql.SQL(query).format(tab=sql.Identifier(pgTableName))).decode())
            pgCursor.execute(sql.SQL(query).format(tab=sql.Identifier(pgTableName)))
        # Create array indexes
        # eg. CREATE INDEX cui_as_array ON semehr.semehr_results USING GIN (annotation_array_as_text_array(semehr_results, 'cui'));
        for elem in ['cui', 'sty']:
            query = "CREATE INDEX IF NOT EXISTS %s_as_array ON {tab} USING GIN (annotation_array_as_text_array(semehr_results, '%s') );" % (elem,elem)
            logging.info('Create postgres index %s_as_array on %s using %s' % (elem, pgTableName, query))
            pgCursor.execute(sql.SQL(query).format(tab=sql.Identifier(pgTableName)))
        # Create an English word index
        for elem in ['pref']:
            query = "CREATE INDEX IF NOT EXISTS %s_as_english ON {tab} USING GIN (to_tsvector('english', semehr.annotation_array_as_text(semehr_results, '%s')));" % (elem,elem)
            logging.info('Create postgres index %s_as_english on %s using %s' % (elem, pgTableName, query))
            pgCursor.execute(sql.SQL(query).format(tab=sql.Identifier(pgTableName)))
        # Could index the whole of the annotations array?
        # This creates a large index and not especially useful as cannot perform substring searches on text only @> etc
        #query = "CREATE INDEX IF NOT EXISTS annotations ON {tab} USING GIN ((%s->'annotations' jsonb_ops))" % pgJsonColumnName
        #logging.info('Create postgres index annotations on %s using %s' % (indexname, pgTableName, query))
        #pgCursor.execute(sql.SQL(query).format(tab=sql.Identifier(pgTableName)))
    except Exception as e:
        logging.error('cannot create index on %s (%s)' % (pgTableName, e))
        pgCursor.execute("ROLLBACK")
        exit(1)
    pgConnection.commit()
    pgCursor.close()
    return


def postgres_insert_files(jsonfiles):
    """ Do not use this method because it doesn't know about the txtfiles
    so cannot insert the redacted text into Posgres.
    """
    # Insert documents
    logging.info('%d files to insert to postgres' % len(jsonfiles))
    if len(jsonfiles):
        for jsonfile in jsonfiles:
            print('\r%s    \r' % jsonfile, end='')
            with open(jsonfile) as fd:
                doc = json.load(fd)
                # The filename (without .json or .txt) is actually the SOPInstanceUID
                jsonfilename = os.path.basename(jsonfile)
                doc['SOPInstanceUID'] = jsonfilename.replace('.txt', '').replace('.json','')
                # If filename is actually PatientID_SOPInstanceUID then extract both:
                if '_' in jsonfilename:
                    (doc['PatientID'], doc['SOPInstanceUID']) = jsonfilename.split('_')
                pgCursor = pgConnection.cursor()
                try:
                    pgCursor.execute(sql.SQL("INSERT INTO {tab} (SOPInstanceUID, semehr_results) VALUES (%s, %s)").format(tab=sql.Identifier(pgTableName)),
                        (doc['SOPInstanceUID'],
                        json.dumps(doc)))
                except psycopg2.errors.UniqueViolation:
                    logging.error('document with SOPInstanceUID %s already in database when trying to add %s' % (doc['SOPInstanceUID'], jsonfile))
                    pgCursor.execute("ROLLBACK")
                pgConnection.commit()
                pgCursor.close()
        print()
        os.system('date')


def postgres_insert_dir(jsondir, txtdir, metadatadir):
    """ For each .json file in json dir, look for corresponding .txt file in txtdir
    and corresponding json file in metadatadir.  Add the txt contents as a
    redacted_text attribute to the document and add the metadata attributes too.
    Insert into PostgreSQL using the SOPInstanceUID as the primary key taken from
    the metadata or using the filename (without .txt) if not in metadata.
    """
    jsonfiles = sorted(glob.glob(os.path.join(jsondir, '*.json')))
    logging.info('%d json files to insert from %s' % (len(jsonfiles), jsondir))
    # XXX should we create a "transaction" or turn off indexing to speed up bulk loads?
    for jsonfile in jsonfiles:
        print('\r%s    \r' % jsonfile, end='')
        # Change .json to .txt and remove the se_ann_ prefix to find the .txt file
        # (although the semehr settings file no longer writes se_ann_ prefix).
        txtfile = os.path.join(txtdir, os.path.basename(jsonfile).replace('.json', '.txt')).replace('se_ann_', '')
        txtfilename = os.path.basename(txtfile)
        txtdata = None
        if os.path.isfile(txtfile):
            with open(txtfile) as fd:
                txtdata = fd.read()
        # Find the metadata file file
        metafile = os.path.join(metadatadir, os.path.basename(jsonfile))
        metafilename = os.path.basename(metafile)
        metadata = None
        if os.path.isfile(metafile):
            with open(metafile) as fd:
                metadata = json.load(fd)
        # Read the annotations, append the text and metadata, insert to DB
        with open(jsonfile) as fd:
            doc = json.load(fd)
            # Add the whole document as a key
            if txtdata:
                doc['redacted_text'] = txtdata
            # Add the additional metadata into the jsonb doc
            # XXX could also add these fields as columns in the table
            if metadata:
                doc.update(metadata)
            # If the metadata doesn't hold the SOPInstanceUID then deduce it from filename
            if not 'SOPInstanceUID' in doc:
                doc['SOPInstanceUID'] = txtfilename.replace('.txt', '')
            # Insert document into database
            pgCursor = pgConnection.cursor()
            try:
                pgCursor.execute(sql.SQL("INSERT INTO {tab} (SOPInstanceUID, semehr_results) VALUES (%s, %s)").format(tab=sql.Identifier(pgTableName)),
                    (doc['SOPInstanceUID'],
                    json.dumps(doc)))
                # Make a list of all the CUIs in this document (keep duplicates)
                list_of_cui = [ ann['cui'] for ann in doc['annotations'] ]
            except psycopg2.errors.UniqueViolation:
                logging.warning('document with SOPInstanceUID %s already in database when trying to add %s' % (doc['SOPInstanceUID'], jsonfile))
                pgCursor.execute("ROLLBACK")
                list_of_cui = []
            pgConnection.commit()
            pgCursor.close()
            logging.info('insert document completed for %s' % doc['SOPInstanceUID'])
            # Increment the count of each CUI
            pgCursor = pgConnection.cursor()
            for cui in list_of_cui:
                pgCursor.execute(sql.SQL("INSERT INTO {tab} (cui, count) VALUES (%s, 1) "
                    "ON CONFLICT (cui) DO UPDATE SET count={tab}.count+1").format(tab=sql.Identifier(pgCUITableName)),
                    (cui,))
            pgConnection.commit()
            pgCursor.close()
            # Add each CUI to a CUI-SOP mapping table, without duplicates
            list_of_cui = set(list_of_cui)
            pgCursor = pgConnection.cursor()
            for cui in list_of_cui:
                pgCursor.execute(sql.SQL("INSERT INTO {tab} (cui, SOPInstanceUID) VALUES (%s, %s) ").format(tab=sql.Identifier(pgCUISOPTableName)),
                    (cui, doc['SOPInstanceUID']))
            pgConnection.commit()
            pgCursor.close()
            logging.info('insert %d CUIs completed for %s' % (len(list_of_cui), doc['SOPInstanceUID']))


def postgres_findOne(queryDict = {}):
    pgCursor = pgConnection.cursor()
    pgCursor.execute(sql.SQL("SELECT * FROM {} LIMIT 1;").format(sql.Identifier(pgTableName)))
    result = pgCursor.fetchone()
    if result:
        (SOPInstanceUID, semehr_results) = result
        print('Result of fetchone: %s' % semehr_results['annotations'])
    else:
        print('Result of fetchone: None')
    pgCursor.close()
    return


def postgres_query_cui(cui):
    # Construct SQL like this:
    #  SELECT semehr_results FROM semehr_results WHERE
    #    SOPInstanceUID IN ( SELECT SOPInstanceUID FROM cui_sop WHERE cui = 'C0205076' )
    # or with a date range:
    #  SELECT semehr_results FROM semehr_results WHERE
    #    (cast_to_date(semehr_results->>'ContentDate') BETWEEN '2010-01-02' AND '2010-01-10') AND
    #    SOPInstanceUID IN ( SELECT SOPInstanceUID FROM cui_sop WHERE cui = 'C0205076' )
    start_date = "2010-01-02"  # None or 'YYYY-MM-DD'
    end_date = None#"2010-01-10"    # None or 'YYYY-MM-DD'
    sql_args = ()
    pgCursor = pgConnection.cursor()
    sql_str = "SELECT semehr_results FROM {tab} WHERE "
    if start_date and end_date:
        sql_str += "(cast_to_date(semehr_results->>'ContentDate') BETWEEN %s AND %s) AND "
        sql_args += (start_date, end_date)
    sql_str += " SOPInstanceUID IN ("
    sql_str += "   SELECT SOPInstanceUID FROM {cuitab} WHERE cui = %s "
    sql_args += (cui,)
    sql_str += " );"
    if verbose:
        print(pgCursor.mogrify(sql_str.format(tab=sql.Identifier(pgTableName), cuitab=sql.Identifier(pgCUISOPTableName)), sql_args).decode())
    pgCursor.execute(sql.SQL(sql_str).format(tab=sql.Identifier(pgTableName), cuitab=sql.Identifier(pgCUISOPTableName)), sql_args)
    n=0
    for rc in pgCursor:
        print('%s' % json.dumps(rc[0]))
        n = n+1
    pgCursor.close()
    print('%d documents matched' % n, file=sys.stderr)

def postgres_query_annotation(featurename, featureval):
    # eg. "cui:C0205076"
    # Query for annotations which have the feature.
    # Can add other terms such as:  ,'negation':'Affirmed'
    # The dict is inside an array because each doc has an array of annotations
    if featurename == 'cui':
        postgres_query_cui(featureval)
        return
    query_obj = [ { featurename:featureval } ]
    if verbose:
        print('postgres_query_annotation: %s' % query_obj)
    pgCursor = pgConnection.cursor()
    # Query syntax: https://www.postgresql.org/docs/12/functions-json.html
    # @> means "does left contain right"
    # ::jsonb just signifis the query is a json doc (optional)
    # uses helper func Json to ensure python object properly converted to json string (could use json.dumps too)
    if verbose:
        pgCursor.execute(" SET enable_seqscan TO off;")
        pgCursor.execute("EXPLAIN ANALYZE SELECT * FROM semehr_results WHERE semehr_results->'annotations'  @>  %s::jsonb;", ( Json( query_obj ), ))
        print(pgCursor.fetchall())
    pgCursor.execute(sql.SQL("SELECT * FROM {} WHERE semehr_results->'annotations'  @>  %s::jsonb;").format(sql.Identifier(pgTableName)),
        ( Json( query_obj ), ))
    n=0
    for (SOPInstanceUID, semehr_results) in pgCursor:
        print('Got one %s' % (SOPInstanceUID)) # first annotation would be: semehr_results['annotations'][0]
        # find all annotations in this document which contain the featureval
        l = [i for i in semehr_results['annotations'] if i[featurename] == featureval]
        print(' -> %s' % pprint.pformat(l))
        n = n+1
    pgCursor.close()
    print('%d results' % n)

def postgres_query_key(featurename, featureval, countOnly):
    # eg. "PatientID:12345"
    # Query for toplevel items in the JSON which have the given value
    # The only complication is that ContentDate needs to be cast to a date
    # and the input format must be YYYY-MM-DD not the DICOM style YYYYMMDD
    # (we could do the latter but it wouldn't use the index).
    if verbose:
        print('postgres_query_key: %s = %s (countOnly=%s)' % (featurename, featureval, countOnly))
    pgCursor = pgConnection.cursor()
    if countOnly:
        sql_select = sql.SQL("SELECT COUNT(*) ")
    else:
        sql_select = sql.SQL("SELECT * ")
    sql_from = sql.SQL("FROM {tab} WHERE ").format(tab = sql.Identifier(pgTableName))
    sql_where = sql.SQL("semehr_results->>{f} = %s;").format(f = sql.Literal(featurename))
    if featurename == 'ContentDate':
        sql_where = sql.SQL("cast_to_date(semehr_results->>{f}) = %s;").format(f = sql.Literal(featurename))
    # XXX need to modify query for dates to use the cast_to_date function so the index is used.
    if verbose:
        print(pgCursor.mogrify(sql_select + sql_from + sql_where, ( featureval, )).decode())
    pgCursor.execute(sql_select + sql_from + sql_where, ( featureval, ))
    if countOnly:
        # returns (n,) tuple so take first element
        n = int(next(pgCursor)[0])
        print(n)
    else:
        n=0
        for (SOPInstanceUID, semehr_results) in pgCursor:
            print('Got one %s' % (SOPInstanceUID)) # first annotation would be: semehr_results['annotations'][0]
            print(' -> %s' % pprint.pformat(semehr_results))
            n = n+1
        print('%d results' % n)
    pgCursor.close()


def main():
    global pgHost, pgUser, pgPass, pgDatabaseName, pgTableName, verbose

    log_dir = '.'
    if os.environ['SMI_LOGS_ROOT']:
        log_dir = os.environ['SMI_LOGS_ROOT']

    parser = argparse.ArgumentParser(description='Convert SemEHR output into PostgreSQL')
    parser.add_argument('-v', dest='verbose', action='store_true', help='more verbose')
    parser.add_argument('-y', dest='yaml', action="store", help='default.yaml for PostgreSQL connection parameters')
    parser.add_argument('--pg-host', dest='pgHost', action="store", help="PostgreSQL hostname", default=pgHost)
    parser.add_argument('--pg-user', dest='pgUser', action="store", help="PostgreSQL username", default=pgUser)
    parser.add_argument('--pg-pass', dest='pgPass', action="store", help="PostgreSQL password", default=pgPass)
    parser.add_argument('--pg-database', dest='pgDatabaseName', action="store", help="PostgreSQL database name", default=pgDatabaseName)
    parser.add_argument('--pg-table', dest='pgTableName', action="store", help="PostgreSQL collection name", default=pgTableName)
    parser.add_argument('-j', dest='jsonfiles', action="store", help="list of JSON filenames", nargs='*', default=[])
    parser.add_argument('-t', dest='txtdir', action="store", help="Directory of redacted text files")
    parser.add_argument('-m', dest='metadatadir', action='store', help="Directory of metadata json files")
    parser.add_argument('-q', dest='query', action="store", help="Query an annotation in the form key:value, where key is a feature such as sty/pref/cui/inst/string_orig", default="cui:C0205076")
    parser.add_argument('--count', dest='querycount', action='store_true', help="Query only returns a count of matching records", default=False)
    parser.add_argument('--query-sopinstanceuid', dest='querysop', action="store", help="Query a specific SOPInstanceUID")
    parser.add_argument('--query-sopclassuid', dest='queryclass', action="store", help="Query a specific SOPClassUID")
    parser.add_argument('--query-studyinstanceuid', dest='querystudy', action="store", help="Query a specific StudyInstanceUID")
    parser.add_argument('--query-seriesinstanceuid', dest='queryseries', action="store", help="Query a specific SeriesInstanceUID")
    parser.add_argument('--query-contentdate', dest='querydate', action="store", help="Query a specific date YYYY-MM-DD")
    parser.add_argument('--query-modalitiesinstudy', dest='querymodalities', action="store", help="Query a specific Modality")
    parser.add_argument('--query-patientid', dest='querypatient', action="store", help="Query a specific PatientID")
    parser.add_argument('--drop-table', dest='drop', action='store_true', help='Drop (delete) the table contents before storing')
    parser.add_argument('--add-index', dest='index', action='store_true', help='Add suitable indexes')

    args = parser.parse_args()
    if args.verbose:
        verbose = True
    if args.yaml:
        with open(args.yaml, 'r') as ymlfile:
            cfg = yaml.safe_load(ymlfile)
            pgCfg = cfg.get('PostgresDatabases',{}).get('SemEHRStoreOptions')
            pgHost = pgCfg.get('HostName', '')
            pgUser = pgCfg.get('UserName', '')
            pgPass = pgCfg.get('Password', '')
            pgDatabaseName = pgCfg.get('DatabaseName', '')
            log_dir = cfg.get('LoggingOptions',{}).get('LogsRoot',log_dir)
    if args.pgHost: pgHost = args.pgHost
    if args.pgUser: pgUser = args.pgUser
    if args.pgPass: pgPass = args.pgPass
    if args.pgDatabaseName: pgDatabaseName = args.pgDatabaseName
    if args.pgTableName: pgTableName = args.pgTableName

    file_handler = logging.FileHandler(filename='semehr_to_postgres.log')
    file_handler.setLevel(logging.DEBUG)
    stdout_handler = logging.StreamHandler(sys.stdout)
    stdout_handler.setLevel(logging.WARNING)
    if verbose:
        stdout_handler.setLevel(logging.INFO)
    logging.basicConfig(handlers=[file_handler, stdout_handler],
        format='[%(asctime)s] {%(filename)s:%(lineno)d} %(levelname)s - %(message)s')

    postgres_open()

    if args.drop:
        postgres_drop_table()
    if args.index:
        postgres_add_index()

    # Insert the given JSON documents into the database
    #   If you give a json dir and a txtfile dir :
    if len(args.jsonfiles) == 1 and os.path.isdir(args.jsonfiles[0]):
        postgres_insert_dir(args.jsonfiles[0], args.txtdir, args.metadatadir)
        return
    #   If you give one or more actual filenames:
    elif len(args.jsonfiles) > 0:
        postgres_insert_files(args.jsonfiles)
        return

    # Run any given queries (these are top-level in the JSON, not inside annotations)
    if args.querysop or args.queryclass or args.queryseries or args.querystudy or args.querydate or args.querymodalities or args.querypatient:
        if args.querysop:
            featurename = 'SOPInstanceUID'
            featureval = args.querysop
        elif args.queryclass:
            featurename = 'SOPClassUID'
            featureval = args.queryclass
        elif args.queryseries:
            featurename = 'SeriesInstanceUID'
            featureval = args.queryseries
        elif args.querystudy:
            featurename = 'StudyInstanceUID'
            featureval = args.querystudy
        elif args.querydate:
            featurename = 'ContentDate'
            featureval = args.querydate
        elif args.querymodalities:
            featurename = 'ModalitiesInStudy'
            featureval = args.querymodalities
        elif args.querypatient:
            featurename = 'PatientID'
            featureval = args.querypatient
        postgres_query_key(featurename, featureval, args.querycount)
        return

    # Check by extracting any one random document
    #postgres_findOne()

    # Run the given query
    (k,v) = args.query.split(':')
    postgres_query_annotation(k, v)


if __name__ == "__main__":
    main()
