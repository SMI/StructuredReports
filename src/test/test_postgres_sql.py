#!/usr/bin/env python3
# test SQL
import psycopg2
from psycopg2 import sql
from psycopg2.extras import Json
from psycopg2.extensions import AsIs
import sys

x='myCol'
y='myTable'
z='checkCol'
val='myVal'

pgConnection = psycopg2.connect(host='localhost', user='semehr', password='semehr', dbname='semehr')

pgCursor = pgConnection.cursor()
a = sql.SQL('SELECT {x} FROM {y} ').format(x=sql.Identifier(x),y=sql.Identifier(y),z=sql.Identifier(z), poo=sql.Identifier(''))
tupl=()
b = sql.SQL('WHERE {z} = %s').format(x=sql.Identifier(x),y=sql.Identifier(y),z=sql.Identifier(z))
tupl+=(val,)
print(pgCursor.mogrify(a+b, tupl).decode())
x=pgCursor.mogrify(sql.SQL('SELECT {x} FROM {y} WHERE {z} = %s').format(x=sql.Identifier(x),y=sql.Identifier(y),z=sql.Identifier(z)), (val,))
print(x.decode())
