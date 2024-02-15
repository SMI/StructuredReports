#!/usr/bin/env python3
# test cursors
import psycopg2
from psycopg2 import sql
from psycopg2.extensions import AsIs
from psycopg2.extras import Json

pgConnection = psycopg2.connect(host='localhost', user='semehr', password='semehr', dbname='semehr')

pgCursor = pgConnection.cursor()
pgCursor.execute('select * from test')
#for j in pgCursor:
#    print('got %s' % j[0]['annotations'][0]['key'])
#exit(0)
while True:
    print('NEXT')
    fetched=0
    pgCursor.scroll(9, mode='absolute')
    for j in pgCursor.fetchmany(size=3):
        fetched = fetched+1
        print('got %s = %s' % (j[0], j[1]['annotations'][0]['key']))
    if not fetched:
        break
