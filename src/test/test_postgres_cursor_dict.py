#!/usr/bin/env python3
# test cursors DictCursor RealDictCursor
# it turns out that DictCursors are useless because json queries are returned with a column name of ?column?
# so they all end up overwriting each other in the returned dict, so we need our own row_to_dict function.
import psycopg2
from psycopg2 import sql
from psycopg2.extensions import AsIs
from psycopg2.extras import DictCursor
from psycopg2.extras import Json
from psycopg2.extras import RealDictCursor

def row_to_dict(row, colnames):
    retdict = {}
    for ii in range(len(colnames)):
        retdict[colnames[ii]] = row[ii]
    return retdict

pgConnection = psycopg2.connect(host='localhost', user='semehr', password='semehr', dbname='semehr')

#pgCursor = pgConnection.cursor(cursor_factory = RealDictCursor)
pgCursor = pgConnection.cursor()

colnames=[ 'SOPInstanceUID', 'StudyInstanceUID', 'SeriesInstanceUID']

# SOPInstanceUID,semehr_results ->> 'SOPInstanceUID',semehr_results ->> 'StudyInstanceUID' 
sql = """SELECT SOPInstanceUID,semehr_results ->> 'StudyInstanceUID',semehr_results ->> 'SeriesInstanceUID' FROM "semehr_results" WHERE (annotation_array_as_text_array(semehr_results, 'cui') && ARRAY['C0224357','C1744536','C1279035','C0224337','C1183784','C0224338','C0224358','C0205076','C1744608','C0581269','C0222762','C0225799','C1744535']) AND (semehr_results->'annotations' @> '[{"cui":"C0205076"}]')  AND (regexp_split_to_array(semehr_results->>'ModalitiesInStudy', '\\\\') && ARRAY['MR','CT'])  AND (cast_to_date(semehr_results->>'ContentDate') BETWEEN '20200202' AND '20210907')"""
#pgCursor.execute('select SOPInstanceUID, semehr_results ->> 'StudyInstanceUID' from semehr_results limit 3')
pgCursor.execute(sql)

fetched=0
for row in pgCursor.fetchall():
    print('===============================================')
    fetched = fetched+1
    #print('result row %d got %s = %s' % (fetched, row[0], row[1]['annotations'][0]['key']))
    #print('result row %d got %s = %s' % (fetched, row[0], row[1]['annotations'][0]))
    print('result row %d got %s' % (fetched, row_to_dict(row, colnames)))
    #print(dict(row))
