#!/usr/bin/env python3
# Add the semehr_results to the MongoDB.
#   Reads the json files containing annotations,
#   adds the content of the redacted (anonymous) text files
#   and adds the SOPInstanceUID as a primary key index.
# Can be used to query the MongoDB to check collection size and index speedup.
# NOTE:
#   To do: log into the SMI_LOGS_ROOT directory or LogsRoot from yaml
# Usage:
#   --drop-collection - will delete the collection before doing anything else (can be used alone)
#   --add-index       - will add several optional indexes (can be used alone)
#   -j   directory of .json files
#   -t   directory of .txt file (the redacted text)
#   -q   optional query to perform, eg. cui:C0205076 to find documents mentioning "chest wall"
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
#      "start": 299, "end": 303,
#      "str": "used",
#      "id": "cui-1",
#      "negation": "Affirmed",
#      "temporality": "Recent",
#      "experiencer": "Patient",
#      "sty": "Finding",
#      "cui": "C1273517",
#      "pref": "Used by",
#      "study_concepts": [],
#      "ruled_by": []
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
import os.path
import pprint
import sys

import yaml
from pymongo import ASCENDING
from pymongo import MongoClient
from pymongo import TEXT
from pymongo.errors import DuplicateKeyError

# Mongo
mongoHost = 'localhost' # 'nsh-smi02'
mongoUser = 'semehr'    # 'abrooks'
mongoPass = 'semehr'    # specifically for the semehr collection 
mongoDatabaseName = 'semehr'
mongoCollectionName = 'semehr_results'
mongoIndexes = [
    # semehr_results format:

    # output_docs format
    "features.inst",         "annotations.cui",
    "features.STY",          "annotations.sty",
    "features.string_orig",  "annotations.str",
    "features.PREF",         "annotations.pref",
    "features.TUI", # this is only available in output_docs
]


def doc_to_mongo(doc):
    """ Convert the SemEHR document into something suitable for MongoDB
    by identifying the 'type' of each of the unnamed arrays and turning them into
    keys in the annotations dict.  Input must be from output_docs format.
    i.e. { annotations[ [xxx], [yyy], [zzz] ] }
    ->  { Mention=xxx, Phenotype=yyy, Sentence=zzz, annotations=[] }
    Modifies the doc itself, but also returns it.
    """
    if 'phenotypes' in doc or 'sentences' in doc:
        # semehr_results format
        # XXX TODO convert here ?
        pass
    else:
        # output_docs format
        for semlist in doc['annotations']:
            # The list of Phenotypes (or whatever) may be empty
            if not len(semlist):
                continue
            # Assume the 'type' of the first element is the same for all elements
            # Convert it into the same word which is used in semehr_results.
            semtype = semlist[0]['type']
            if semtype == 'Mention':
                semtype = 'annotations'
            elif semtype == 'Phenotype':
                semtype = 'phenotypes'
            elif semtype == 'Sentence':
                semtype = 'sentences'
            else:
                print('WARNING: unexpected type: %s (not Mention, Phenotype or Sentence' % semtype)
            # Go through and remove the 'type' item from each dict
            for sem in semlist:
                del sem['type']
            # Promote it to an entry in the dict named by the 'type'
            doc[semtype] = semlist
    return doc

def test_doc_to_mongo():
    # Test output_docs format
    output_docs = { 'annotations': [
        [ {'type':'Mention', 'features': {'STY':'Finding'}}, {'type':'Mention', 'features': {'STY':'Finding'}}],
        [ {'type':'Phenotype', 'start':0}],
        [ {'type':'Sentence','start':0}], ],
    }
    expected_result = {
        'annotations': [{ 'features': { 'STY': 'Finding'}}, {'features':{'STY':'Finding'}}],
        'phenotypes': [{'start':0}],
        'sentences': [{'start':0}], }
    assert(doc_to_mongo(output_docs) == expected_result)
    # Test semehr_results format
    semehr_results = {
        'annotations': [ {'sty':'Finding'}],
        'phenotypes': [ {'start':0}],
        'sentences': [ {'start':0}], } 
    expected_result = {
        'annotations': [ { 'sty': 'Finding'}],
        'phenotypes': [ {'start':0}],
        'sentences': [ {'start':0}], }
    assert(doc_to_mongo(semehr_results) == expected_result)


def mongo_open():
    """ Open, and create if necessary, the collection.
    Also adds a unique index on SOPInstanceUID which makes it the primary key.
    """
    global mongoConnection, mongoDb, mongoCollection
    # Connect to database
    mongoConnection = MongoClient(host=mongoHost, username=mongoUser, password=mongoPass, authSource='admin')
    mongoDb = mongoConnection[mongoDatabaseName]
    # Will create collection if it doesn't exist
    mongoCollection = mongoDb[mongoCollectionName]
    # Add a primary key (if not already present) now
    # Do not do this in the create_indexes call, it may be too late for checking uniqueness
    if not True in [(('SOPInstanceUID',ASCENDING) in v['key']) for k,v in mongoCollection.index_information().items()]:
        mongoCollection.create_index([('SOPInstanceUID', ASCENDING)], unique = True)


def mongo_db_stats():
    dbStats=mongoDb.command('dbstats')
    print('collections: %s' % mongoDb.list_collection_names())
    print('collections: %d' % dbStats['collections'])
    print('objects: %d' % dbStats['objects'])
    print('avgObjSize: %d' % dbStats['avgObjSize'])
    print('dataSize: %d' % dbStats['dataSize'])
    print('storageSize: %d' % dbStats['storageSize'])
    print('indexes: %d' % dbStats['indexes'])
    print('indexSize: %d' % dbStats['indexSize'])


def mongo_collection_stats():
    collStats = mongoDb.command('collstats', mongoCollectionName)
    print('collection: %s' % collStats['ns'])
    print('size: %d' % collStats['size'])
    print('count: %d' % collStats['count'])
    # Only show sizes if any objects actually exist
    if collStats['count'] > 0:
        print('avgObjSize: %d' % collStats['avgObjSize'])
        print('storageSize: %d' % collStats['storageSize'])


def mongo_drop_collection():
    """ Drop (delete) the whole eollection
    """
    rc = mongoCollection.drop()
    logging.info('drop_collection(%s) rc=%s' % (mongoCollectionName, rc))


def mongo_create_indexes():
    """ Create custom indexes (not the primary key)
    as defined globally in mongoIndexes.
    """
    for idx in mongoIndexes:
        rc = mongoCollection.create_index( [ (idx, ASCENDING)])
        logging.info('create_index(%s) on %s rc = %s' % (idx, mongoCollectionName, rc))
    # Create a "text" index on the "pref" field. Can add other fields into the same index,
    # BUT can only have ONE text index.
    rc = mongoCollection.create_index( [ ('annotations.pref', TEXT)])
    logging.info('create_index(%s, TEXT) on %s rc = %s' % ('annotations.pref', mongoCollectionName, rc))


def mongo_insert_files(jsonfiles):
    """ Do not use this method because it doesn't know about the txtfiles
    so cannot insert the redacted text into Mongo
    """
    # Insert documents
    print('%d files to insert' % len(jsonfiles))
    if len(jsonfiles):
        os.system('date')
        for jsonfile in jsonfiles:
            print('\r%s    \r' % jsonfile, end='')
            with open(jsonfile) as fd:
                doc = json.load(fd)
                doc_to_mongo(doc)
                # The filename (without .json or .txt) is actually the SOPInstanceUID
                jsonfilename = os.path.basename(jsonfile)
                doc['SOPInstanceUID'] = jsonfilename.replace('.txt', '').replace('.json','')
                # If filename is actually PatientID_SOPInstanceUID then extract both:
                if '_' in jsonfilename:
                    (doc['PatientID'], doc['SOPInstanceUID']) = jsonfilename.split('_')
                try:
                    mongoCollection.insert_one(doc)
                except DuplicateKeyError:
                    logging.error('document with SOPInstanceUID %s already in database when trying to add %s' % (doc['SOPInstanceUID'], jsonfile))
        print()
        os.system('date')


def mongo_insert_dir(jsondir, txtdir):
    """ For each .json file in json dir, look for corresponding .txt file in txtdir
    Add the txt contents as an attribute to the document and insert into MongoDB.
    Determine the primary key SOPInstanceUID from the filename (strips off .txt).
    (There's no other way of getting it as it's not in the text file because
    SemEHR strips off all header info.
    This relies on mongo_to_semehr writing files with SOPInstanceUID as the filename.)
    """
    jsonfiles = sorted(glob.glob(os.path.join(jsondir, '*.json')))
    logging.info('%d json files to insert from %s' % (len(jsonfiles), jsondir))
    for jsonfile in jsonfiles:
        print('\r%s    \r' % jsonfile, end='')
        # Change .json to .txt and remove the se_ann_ prefix
        # (although the semehr settings file no longer writes se_ann_ prefix).
        txtfile = os.path.join(txtdir, os.path.basename(jsonfile).replace('.json', '.txt')).replace('se_ann_', '')
        txtfilename = os.path.basename(txtfile)
        txtdata = None
        if os.path.isfile(txtfile):
            with open(txtfile) as fd:
                txtdata = fd.read()
        with open(jsonfile) as fd:
            doc = json.load(fd)
            doc_to_mongo(doc)
            # Add the whole document as a key
            if txtdata:
                doc['redacted_text'] = txtdata
            # The filename (without .txt) is actually the SOPInstanceUID
            doc['SOPInstanceUID'] = txtfilename.replace('.txt', '')
            # If filename is actually PatientID_SOPInstanceUID then extract both:
            if '_' in txtfilename:
                (doc['PatientID'], doc['SOPInstanceUID']) = txtfilename.split('_')
            # catch the pymongo.errors.DuplicateKeyError if necessary
            try:
                mongoCollection.insert_one(doc)
            except DuplicateKeyError:
                logging.error('document with SOPInstanceUID %s already in database when trying to add %s' % (doc['SOPInstanceUID'], txtfile))
    print()
    logging.info('insert completed')


def mongo_findOne(queryDict = {}):
    rc = mongoCollection.find_one(queryDict)
    print('Result of find_one(%s) =' % queryDict)
    print(rc)


def mongo_query_feature(featurename, featureval):
    # Query
    # OLD x = mongoCollection.find( { "annotations" : { "$elemMatch": { "$elemMatch": { "features.inst" : "C0175252" } } } } ).count()
    # OLD x = mongoCursor = mongoCollection.find( { "Mention" : { "$elemMatch": { "features."+featurename : featureval } } } )
    # NOW x = mongoCursor = mongoCollection.find( { "annotations" : { "$elemMatch": { featurename : featureval } } } )
    # append .count()  to get just the number of results
    # append .explain() to get the query explanation
    # append .explain()['executionStats']
    # Query for annotations which have the feature AND are negated/affirmed
    query_obj = { featurename : featureval, 'negation':'Negated'}
    # If you want to search for a regex then use this:
    #query_obj = { featurename : { "$regex": featureval }, 'negation':'Negated' }
    # If you want to search using the "text" index you need this:
    # BUT can it include other clauses like negation?
    #query_obj = { '$text': { '$search': featureval } }
    mongoCursor = mongoCollection.find( { "annotations" : { "$elemMatch": query_obj}})
    queryStats = mongoCursor.explain()['executionStats']
    print('Number of results: %d' % queryStats['nReturned'])
    print('Query time: %s ms' % queryStats['executionTimeMillis'])
    print('Index used: %s' % queryStats['executionStages'].get('inputStage', {}).get('indexName', '<none>'))
    print('First ten results:')
    # Search through all found documents
    n=0
    for doc in mongoCursor: # not mongoCursor[:10] for only first 10
        n = n+1
        # Get the plain text if available in this document otherwise empty string
        text = doc.get('redacted_text', '')
        # Search through all annotations in this doc to find the one in the query
        for annot in doc['annotations']:
            if annot[featurename] == featureval:
                # Display the actual text used which matches the query
                word = text[annot['start'] : annot['end']]
                word = annot['pref']
                print('%s is %s ("%s") at %d to %d' % (featurename, annot[featurename], word, annot['start'], annot['end']))
    print('%s results' % n)


def main():
    global mongoHost, mongoUser, mongoPass, mongoDatabaseName, mongoCollectionName

    log_dir = '.'
    if os.environ['SMI_LOGS_ROOT']:
        log_dir = os.environ['SMI_LOGS_ROOT']

    parser = argparse.ArgumentParser(description='Convert SemEHR output into MongoDB')
    parser.add_argument('-y', dest='yaml', action="store", help='default.yaml for MongoDB connection parameters')
    parser.add_argument('--mongo-host', dest='mongoHost', action="store", help="MongoDB hostname", default=mongoHost)
    parser.add_argument('--mongo-user', dest='mongoUser', action="store", help="MongoDB username", default=mongoUser)
    parser.add_argument('--mongo-pass', dest='mongoPass', action="store", help="MongoDB password", default=mongoPass)
    parser.add_argument('--mongo-database', dest='mongoDatabaseName', action="store", help="MongoDB database name", default=mongoDatabaseName)
    parser.add_argument('--mongo-collection', dest='mongoCollectionName', action="store", help="MongoDB collection name", default=mongoCollectionName)
    parser.add_argument('-j', dest='jsonfiles', action="store", help="list of JSON filenames", nargs='*', default=[])
    parser.add_argument('-t', dest='txtdir', action="store", help="Directory of redacted text files")
    parser.add_argument('-q', dest='query', action="store", help="Query in the form key:value, where key is a feature such as sty/pref/cui/inst/string_orig", default="cui:C0205076")
    parser.add_argument('--drop-collection', dest='drop', action='store_true', help='Drop (delete) the collection before storing')
    parser.add_argument('--add-index', dest='index', action='store_true', help='Add suitable indexes')

    args = parser.parse_args()
    if args.yaml:
        with open(args.yaml, 'r') as ymlfile:
            cfg = yaml.safe_load(ymlfile)
            mongoCfg = cfg.get('MongoDatabases',{}).get('SemEHRStoreOptions')
            mongoHost = mongoCfg.get('HostName', '')
            mongoUser = mongoCfg.get('UserName', '')
            mongoPass = mongoCfg.get('Password', '')
            mongoDatabaseName = mongoCfg.get('DatabaseName', '')
            log_dir = cfg.get('LoggingOptions',{}).get('LogsRoot',log_dir)
    if args.mongoHost: mongoHost = args.mongoHost
    if args.mongoUser: mongoUser = args.mongoUser
    if args.mongoPass: mongoPass = args.mongoPass
    if args.mongoDatabaseName: mongoDatabaseName = args.mongoDatabaseName
    if args.mongoCollectionName: mongoCollectionName = args.mongoCollectionName

    file_handler = logging.FileHandler(filename='semehr_to_mongo.log')
    stdout_handler = logging.StreamHandler(sys.stdout)
    logging.basicConfig(
        level=logging.DEBUG, handlers=[file_handler, stdout_handler],
        format='[%(asctime)s] {%(filename)s:%(lineno)d} %(levelname)s - %(message)s',
    )

    mongo_open()

    print('====================================== Stats before: ')
    mongo_db_stats()
    mongo_collection_stats()
    print('======================================')

    if args.drop:
        mongo_drop_collection()

    if args.index:
        mongo_create_indexes()

    # Insert the given JSON documents into the database
    #   If you give a json dir and a txtfile dir :
    if len(args.jsonfiles) == 1 and os.path.isdir(args.jsonfiles[0]):
        mongo_insert_dir(args.jsonfiles[0], args.txtdir)
    #   If you give one or more actual filenames:
    elif len(args.jsonfiles) > 0:
        mongo_insert_files(args.jsonfiles)

    print('====================================== Stats after: ')
    mongo_db_stats()
    mongo_collection_stats()
    print('======================================')

    # Check by extracting any one random document
    mongo_findOne()

    # Run the given query
    (k,v) = args.query.split(':')
    mongo_query_feature(k, v)


if __name__ == "__main__":
    main()
