#!/bin/bash

# Create a database called "semehr"
# Create a schema called "semehr"
# Create a role called "semehr_user" which is read-only
# Create a role called "semehr_admin" which is read-write
# Create a user called "semehr" password "semehr" who is a member of the "semehr_admin" role
# Create a table semehr.semehr_results(SOPInstanceUID varchar(64), semehr_results JSONB, PRIMARY KEY (SOPInstanceUID))


DB="semehr"       # database name
SCH="semehr"      # schema within that database
UMLS_SCH="umls"   # schema for umls tables in that database

UN="semehr"               # username who can edit tables
PW_SEMEHR="semehr"        # password
UNAPI="semehrapi"         # username for web users read-only
PW_SEMEHRAPI="@awnwge@"   # password

# Prevent errors from accessing current directory when sudo
cd /tmp

sudo -u postgres psql postgres -c "DROP DATABASE ${DB};"
sudo -u postgres psql postgres -c "DROP ROLE IF EXISTS ${UN};"
sudo -u postgres psql postgres -c "DROP ROLE IF EXISTS semehr_user;"
sudo -u postgres psql postgres -c "DROP ROLE IF EXISTS semehr_admin;"

# Create roles for read-only and read-write
sudo -u postgres psql postgres -c "CREATE ROLE semehr_user;"
sudo -u postgres psql postgres -c "CREATE ROLE semehr_admin;"

# Create user
sudo -u postgres psql -c "CREATE ROLE ${UN} PASSWORD '${PW_SEMEHR}' LOGIN CREATEDB CREATEROLE;"
sudo -u postgres psql -c "CREATE ROLE ${UNAPI} PASSWORD '${PW_SEMEHRAPI}' LOGIN;"

# Assign the users to the roles
sudo -u postgres psql postgres -c "GRANT semehr_admin TO ${UN};"
sudo -u postgres psql postgres -c "GRANT semehr_user  TO ${UNAPI};"

# Create the database and allow connections to it from roles
sudo -u postgres psql postgres -c "CREATE DATABASE ${DB} OWNER semehr_admin;"
sudo -u postgres psql postgres -c "GRANT CONNECT ON DATABASE ${DB} TO semehr_user;"
sudo -u postgres psql postgres -c "GRANT CONNECT ON DATABASE ${DB} TO semehr_admin;"

# Prevent the 'public' role (which everyone inherits) from everything!
sudo -u postgres psql ${DB} -c "REVOKE CREATE ON SCHEMA public FROM PUBLIC;"
sudo -u postgres psql ${DB} -c "REVOKE ALL ON DATABASE ${DB} FROM PUBLIC;"

# Create the schema
sudo -u postgres psql ${DB} -c "CREATE SCHEMA ${SCH} AUTHORIZATION semehr_admin;"

# Allow access to schema
sudo -u postgres psql ${DB} -c "GRANT USAGE ON SCHEMA ${SCH} TO semehr_user;"
sudo -u postgres psql ${DB} -c "GRANT USAGE ON SCHEMA ${UMLS_SCH} TO semehr_user;"
sudo -u postgres psql ${DB} -c "GRANT USAGE,CREATE ON SCHEMA ${SCH} TO semehr_admin;"

# Allow access to tables
sudo -u postgres psql ${DB} -c "GRANT SELECT ON ALL TABLES IN SCHEMA ${SCH} TO semehr_user;"
sudo -u postgres psql ${DB} -c "GRANT SELECT ON ALL TABLES IN SCHEMA ${UMLS_SCH} TO semehr_user;"
sudo -u postgres psql ${DB} -c "GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA ${SCH} TO semehr_admin;"

# Allow access to future tables
sudo -u postgres psql ${DB} -c "ALTER DEFAULT PRIVILEGES FOR ROLE semehr_admin IN SCHEMA ${SCH} GRANT SELECT ON TABLES TO semehr_user;"
sudo -u postgres psql ${DB} -c "ALTER DEFAULT PRIVILEGES FOR ROLE semehr_admin IN SCHEMA ${UMLS_SCH} GRANT SELECT ON TABLES TO semehr_user;"
sudo -u postgres psql ${DB} -c "ALTER DEFAULT PRIVILEGES FOR ROLE semehr_admin IN SCHEMA ${SCH} GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO semehr_admin;"

# Same for sequences
sudo -u postgres psql ${DB} -c "GRANT USAGE ON ALL SEQUENCES IN SCHEMA ${SCH} TO semehr_admin;"
sudo -u postgres psql ${DB} -c "ALTER DEFAULT PRIVILEGES FOR ROLE semehr_admin IN SCHEMA ${SCH} GRANT USAGE ON SEQUENCES TO semehr_admin;"

# Remove access to the 'postgres' database
sudo -u postgres psql postgres -c "REVOKE ALL PRIVILEGES ON DATABASE postgres FROM ${UN};"

# Create the main table
sudo -u postgres psql ${DB} -c "SET ROLE semehr_admin; CREATE TABLE semehr.semehr_results(SOPInstanceUID varchar(64), semehr_results JSONB, PRIMARY KEY (SOPInstanceUID));"

# Create the table holding a count of each CUI
sudo -u postgres psql ${DB} -c "SET ROLE semehr_admin; CREATE TABLE semehr.cui_count (cui varchar(20) primary key, count bigint);"

# Create the table holding CUI for doc
sudo -u postgres psql ${DB} -c "SET ROLE semehr_admin; CREATE TABLE semehr.cui_sop (cui varchar(20), SOPInstanceUID varchar(64));"

# Add the trigram extension
sudo -u postgres psql ${DB} -c "CREATE EXTENSION pg_trgm WITH SCHEMA pg_catalog;"
sudo -u postgres psql ${DB} -c "CREATE EXTENSION pg_trgm WITH SCHEMA semehr;"

# Define functions used for indexing
sudo -u postgres psql ${DB} -c 'create or replace function semehr.annotation_array_as_text(doc jsonb, fieldname text) returns text as $$ '\
" select array_agg(x)::text from (select jsonb_array_elements(doc->'annotations')->>fieldname) as f(x); "\
' $$ language sql strict immutable;'
sudo -u postgres psql ${DB} -c 'create or replace function semehr.annotation_array_as_text_array(doc jsonb, fieldname text) returns text[] as $$ '\
"   select array_agg(x) from (select jsonb_array_elements(doc->'annotations')->>fieldname) as f(x); "\
' $$ language sql strict immutable;'
sudo -u postgres psql ${DB} -c 'create or replace function semehr.cast_to_date(str text) returns date as $$ '\
"   select to_date(str, 'YYYYMMDD'); "\
' $$ language sql strict immutable;'

# Create indexes
#sudo -u postgres psql ${DB} -c "CREATE INDEX cui_count_idx ON semehr.cui_count (cui);" # cui is already primary key
sudo -u postgres psql ${DB} -c "CREATE INDEX cui_sop_idx ON semehr.cui_sop (cui);"
sudo -u postgres psql ${DB} -c "CREATE INDEX sopinstanceuid ON semehr.semehr_results ((semehr_results->>'SOPInstanceUID'));"
sudo -u postgres psql ${DB} -c "CREATE INDEX sopclassuid ON semehr.semehr_results ((semehr_results->>'SOPClassUID'));"
sudo -u postgres psql ${DB} -c "CREATE INDEX seriesinstanceuid ON semehr.semehr_results ((semehr_results->>'SeriesInstanceUID'));"
sudo -u postgres psql ${DB} -c "CREATE INDEX studyinstanceuid ON semehr.semehr_results ((semehr_results->>'StudyInstanceUID'));"
sudo -u postgres psql ${DB} -c "CREATE INDEX patientid ON semehr.semehr_results ((semehr_results->>'PatientID'));"
sudo -u postgres psql ${DB} -c "CREATE INDEX cui_as_array ON semehr.semehr_results USING GIN (semehr.annotation_array_as_text_array(semehr_results, 'cui'));"
sudo -u postgres psql ${DB} -c "CREATE INDEX sty_as_array ON semehr.semehr_results USING GIN (semehr.annotation_array_as_text_array(semehr_results, 'sty'));"
sudo -u postgres psql ${DB} -c "CREATE INDEX pref_as_text ON semehr.semehr_results USING GIN (semehr.annotation_array_as_text(semehr_results, 'pref') gin_trgm_ops);"
sudo -u postgres psql ${DB} -c "CREATE INDEX str_as_text ON semehr.semehr_results USING GIN (semehr.annotation_array_as_text(semehr_results, 'str') gin_trgm_ops);"
sudo -u postgres psql ${DB} -c "CREATE INDEX str_as_english ON semehr.semehr_results USING GIN (to_tsvector('english', semehr.annotation_array_as_text(semehr_results, 'str')));"
sudo -u postgres psql ${DB} -c "CREATE INDEX pref_as_english ON semehr.semehr_results USING GIN (to_tsvector('english', semehr.annotation_array_as_text(semehr_results, 'pref')));"
sudo -u postgres psql ${DB} -c "CREATE INDEX content_date ON semehr.semehr_results (semehr.cast_to_date(semehr_results->>'ContentDate'));"
sudo -u postgres psql ${DB} -c "CREATE INDEX modalities ON semehr.semehr_results (regexp_split_to_array(semehr_results->>'ModalitiesInStudy', '\\\\'));"
