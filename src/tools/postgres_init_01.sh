#!/bin/bash

# Create a database called "semehr"
# Create a schema called "semehr"
# Create a role called "semehr_user" which is read-only
# Create a role called "semehr_admin" which is read-write
# Create a user called "semehr" password "semehr" who is a member of the "semehr_admin" role
# Create a table semehr.semehr_results(SOPInstanceUID varchar(64), semehr_results JSONB, PRIMARY KEY (SOPInstanceUID))

# Choose whether you are using docker or a local copy of postgres:
docker=False
if [ "$1" == "--docker" ]; then docker=True; fi

DB="semehr"       # database name
SCH="semehr"      # schema within that database
UMLS_SCH="umls"   # schema for umls tables in that database

UN="semehr"               # username who can edit tables
PW_SEMEHR="semehr"        # password
UNAPI="semehrapi"         # username for web users read-only
PW_SEMEHRAPI="@awnwge@"   # password

# If using docker (with -e POSTGRES_PASSWORD=semehr)
if [ $docker == "True" ]; then
    export PGPASSWORD="semehr" 
    CONNECTION="-h localhost -U postgres"
else
    AUTH="sudo -u postgres"
fi

# Prevent errors from accessing current directory when sudo
cd /tmp

drop()
{
    echo "$(date) Dropping old database/roles"
    $AUTH psql $CONNECTION postgres -c "DROP DATABASE ${DB};"
    $AUTH psql $CONNECTION postgres -c "DROP ROLE IF EXISTS ${UN};"
    $AUTH psql $CONNECTION postgres -c "DROP ROLE IF EXISTS ${UNAPI};"
    $AUTH psql $CONNECTION postgres -c "DROP ROLE IF EXISTS semehr_user;"
    $AUTH psql $CONNECTION postgres -c "DROP ROLE IF EXISTS semehr_admin;"
}

create_roles()
{
    # Create roles for read-only and read-write
    echo "$(date) Create new roles"
    $AUTH psql $CONNECTION postgres -c "CREATE ROLE semehr_user;"
    $AUTH psql $CONNECTION postgres -c "CREATE ROLE semehr_admin;"

    # Create user
    echo "$(date) Create new users ${UN} and ${UNAPI}"
    $AUTH psql $CONNECTION -c "CREATE ROLE ${UN} PASSWORD '${PW_SEMEHR}' LOGIN CREATEDB CREATEROLE;"
    $AUTH psql $CONNECTION -c "CREATE ROLE ${UNAPI} PASSWORD '${PW_SEMEHRAPI}' LOGIN;"

    # Assign the users to the roles
    echo "$(date) Assign users to roles"
    $AUTH psql $CONNECTION postgres -c "GRANT semehr_admin TO ${UN};"
    $AUTH psql $CONNECTION postgres -c "GRANT semehr_user  TO ${UNAPI};"
}

create_database()
{
    # Create the database and allow connections to it from roles
    echo "$(date) Create database ${DB} and allow connections"
    $AUTH psql $CONNECTION postgres -c "CREATE DATABASE ${DB} OWNER semehr_admin;"
    $AUTH psql $CONNECTION postgres -c "GRANT CONNECT ON DATABASE ${DB} TO semehr_user;"
    $AUTH psql $CONNECTION postgres -c "GRANT CONNECT ON DATABASE ${DB} TO semehr_admin;"

    # Prevent the 'public' role (which everyone inherits) from everything!
    echo "$(date) Remove access to public schema"
    $AUTH psql $CONNECTION ${DB} -c "REVOKE CREATE ON SCHEMA public FROM PUBLIC;"
    $AUTH psql $CONNECTION ${DB} -c "REVOKE ALL ON DATABASE ${DB} FROM PUBLIC;"

    # Create the schema
    echo "$(date) Create schema ${SCH}"
    $AUTH psql $CONNECTION ${DB} -c "CREATE SCHEMA ${SCH} AUTHORIZATION semehr_admin;"
    $AUTH psql $CONNECTION ${DB} -c "CREATE SCHEMA ${UMLS_SCH} AUTHORIZATION semehr_admin;"

    # Allow access to schema
    echo "$(date) Allow access to schema"
    $AUTH psql $CONNECTION ${DB} -c "GRANT USAGE ON SCHEMA ${SCH} TO semehr_user;"
    $AUTH psql $CONNECTION ${DB} -c "GRANT USAGE ON SCHEMA ${UMLS_SCH} TO semehr_user;"
    $AUTH psql $CONNECTION ${DB} -c "GRANT USAGE,CREATE ON SCHEMA ${SCH} TO semehr_admin;"

    # Allow access to tables
    echo "$(date) Allow access to tables"
    $AUTH psql $CONNECTION ${DB} -c "GRANT SELECT ON ALL TABLES IN SCHEMA ${SCH} TO semehr_user;"
    $AUTH psql $CONNECTION ${DB} -c "GRANT SELECT ON ALL TABLES IN SCHEMA ${UMLS_SCH} TO semehr_user;"
    $AUTH psql $CONNECTION ${DB} -c "GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA ${SCH} TO semehr_admin;"

    # Allow access to future tables
    echo "$(date) Allow access to future tables"
    $AUTH psql $CONNECTION ${DB} -c "ALTER DEFAULT PRIVILEGES FOR ROLE semehr_admin IN SCHEMA ${SCH} GRANT SELECT ON TABLES TO semehr_user;"
    $AUTH psql $CONNECTION ${DB} -c "ALTER DEFAULT PRIVILEGES FOR ROLE semehr_admin IN SCHEMA ${UMLS_SCH} GRANT SELECT ON TABLES TO semehr_user;"
    $AUTH psql $CONNECTION ${DB} -c "ALTER DEFAULT PRIVILEGES FOR ROLE semehr_admin IN SCHEMA ${SCH} GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO semehr_admin;"

    # Same for sequences
    echo "$(date) Allow access to sequences"
    $AUTH psql $CONNECTION ${DB} -c "GRANT USAGE ON ALL SEQUENCES IN SCHEMA ${SCH} TO semehr_admin;"
    $AUTH psql $CONNECTION ${DB} -c "ALTER DEFAULT PRIVILEGES FOR ROLE semehr_admin IN SCHEMA ${SCH} GRANT USAGE ON SEQUENCES TO semehr_admin;"

    # Remove access to the 'postgres' database
    echo "$(date) Remove access to system database"
    $AUTH psql $CONNECTION postgres -c "REVOKE ALL PRIVILEGES ON DATABASE postgres FROM ${UN};"
}

create_tables()
{
    # Create the main table
    echo "$(date) Create ${SCH}.semehr_results"
    $AUTH psql $CONNECTION ${DB} -c "SET ROLE semehr_admin; CREATE TABLE ${SCH}.semehr_results(SOPInstanceUID varchar(64), semehr_results JSONB, PRIMARY KEY (SOPInstanceUID));"

    # Create the table holding a count of each CUI
    echo "$(date) Create CUI count table"
    $AUTH psql $CONNECTION ${DB} -c "SET ROLE semehr_admin; CREATE TABLE ${SCH}.cui_count (cui varchar(20) primary key, count bigint);"

    # Create the table holding CUI for doc
    echo "$(date) Create CUI mapping table"
    $AUTH psql $CONNECTION ${DB} -c "SET ROLE semehr_admin; CREATE TABLE ${SCH}.cui_sop (cui varchar(20), SOPInstanceUID varchar(64));"
}

create_functions()
{
    # Add the trigram extension
    echo "$(date) Add PostgreSQL extensions"
    $AUTH psql $CONNECTION ${DB} -c "CREATE EXTENSION pg_trgm WITH SCHEMA pg_catalog;"
    $AUTH psql $CONNECTION ${DB} -c "CREATE EXTENSION pg_trgm WITH SCHEMA semehr;"

    # Define functions used for indexing
    echo "$(date) Define functions"
    $AUTH psql $CONNECTION ${DB} -c 'create or replace function semehr.annotation_array_as_text(doc jsonb, fieldname text) returns text as $$ '\
    " select array_agg(x)::text from (select jsonb_array_elements(doc->'annotations')->>fieldname) as f(x); "\
    ' $$ language sql strict immutable;'
    $AUTH psql $CONNECTION ${DB} -c 'create or replace function semehr.annotation_array_as_text_array(doc jsonb, fieldname text) returns text[] as $$ '\
    "   select array_agg(x) from (select jsonb_array_elements(doc->'annotations')->>fieldname) as f(x); "\
    ' $$ language sql strict immutable;'
    $AUTH psql $CONNECTION ${DB} -c 'create or replace function semehr.cast_to_date(str text) returns date as $$ '\
    "   select to_date(str, 'YYYYMMDD'); "\
    ' $$ language sql strict immutable;'
}

create_indexes()
{
    # Create indexes
    echo "$(date) Create indexes"
    #$AUTH psql $CONNECTION ${DB} -c "CREATE INDEX cui_count_idx ON semehr.cui_count (cui);" # cui is already primary key
    $AUTH psql $CONNECTION ${DB} -c "CREATE INDEX cui_sop_idx ON semehr.cui_sop (cui);"
    $AUTH psql $CONNECTION ${DB} -c "CREATE INDEX sopinstanceuid_idx ON semehr.semehr_results (SOPInstanceUID);"
    $AUTH psql $CONNECTION ${DB} -c "CREATE INDEX sopclassuid_idx ON semehr.semehr_results ((semehr_results->>'SOPClassUID'));"
    $AUTH psql $CONNECTION ${DB} -c "CREATE INDEX seriesinstanceuid_idx ON semehr.semehr_results ((semehr_results->>'SeriesInstanceUID'));"
    $AUTH psql $CONNECTION ${DB} -c "CREATE INDEX studyinstanceuid_idx ON semehr.semehr_results ((semehr_results->>'StudyInstanceUID'));"
    $AUTH psql $CONNECTION ${DB} -c "CREATE INDEX patientid_idx ON semehr.semehr_results ((semehr_results->>'PatientID'));"
    $AUTH psql $CONNECTION ${DB} -c "CREATE INDEX cui_as_array_idx ON semehr.semehr_results USING GIN (semehr.annotation_array_as_text_array(semehr_results, 'cui'));"
    $AUTH psql $CONNECTION ${DB} -c "CREATE INDEX sty_as_array_idx ON semehr.semehr_results USING GIN (semehr.annotation_array_as_text_array(semehr_results, 'sty'));"
    $AUTH psql $CONNECTION ${DB} -c "CREATE INDEX pref_as_text_idx ON semehr.semehr_results USING GIN (semehr.annotation_array_as_text(semehr_results, 'pref') gin_trgm_ops);"
    $AUTH psql $CONNECTION ${DB} -c "CREATE INDEX str_as_text_idx ON semehr.semehr_results USING GIN (semehr.annotation_array_as_text(semehr_results, 'str') gin_trgm_ops);"
    $AUTH psql $CONNECTION ${DB} -c "CREATE INDEX str_as_english_idx ON semehr.semehr_results USING GIN (to_tsvector('english', semehr.annotation_array_as_text(semehr_results, 'str')));"
    $AUTH psql $CONNECTION ${DB} -c "CREATE INDEX pref_as_english_idx ON semehr.semehr_results USING GIN (to_tsvector('english', semehr.annotation_array_as_text(semehr_results, 'pref')));"
    $AUTH psql $CONNECTION ${DB} -c "CREATE INDEX content_date_idx ON semehr.semehr_results (semehr.cast_to_date(semehr_results->>'ContentDate'));"
    $AUTH psql $CONNECTION ${DB} -c "CREATE INDEX modalities_idx ON semehr.semehr_results (regexp_split_to_array(semehr_results->>'ModalitiesInStudy', '\\\\'));"
}

drop
create_roles
create_database
create_tables
create_functions
create_indexes
