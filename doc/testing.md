# Testing

## Database

The main requirement for testing is a postgres database, preferably
populated with some sample (or real!) data.  The options are:

* a locally installed copy of postgres
* postgres running in a docker container
* the whole annotation service running in a docker container

If you have a local copy of postgres running then you also have the `postgres` user
and the `psql` command line tool. You can run the database initialisation scripts
normally.

If you have postgres running in a docker container then you won't have the
`postgres` user (so sudo postgres won't work) and you won't have the psql command.
First, install your operating system package which provides `psql` (probably
postgresql-client or similar). Then you can run the database initialisation scripts
with the `--docker` option.

If you are using the whole annotation service in a docker container
(see CogStack-SemEHR/Dockerfile.md) then you don't interact with postgres itself,
only the externally-visible API, and it already has some sample documents loaded.

### Starting postgresql

To use the standard postgresql docker run
```
sudo docker run -d --rm --name=pg -p 5432:5432 -e POSTGRES_PASSWORD=semehr postgres
```

To use the annotation_server docker run
```
sudo docker run -d --rm --name=pg -p 8485:8485 -p 5432:5432 howff/annotation_server
```

### Database creation

First run `StructuredReports/src/tools/postgres_init_01.sh [--docker]` to create the
database and tables.

### Ancillary data

Run `CogStack-SemEHR/umls/umls_create_postgres.sh [--docker]` to populate the UMLS
database. Before running this uncompress the supplied CSV files, `tar xf umls_20210905.tar.xz`

### Sample data

Uncompress the supplied data files:
```
cd StructuredReports/src/data
tar xf mtsamples_ihi_semehr_results.tar.xz
```

Populate the database with the samples:
./semehr_to_postgres.py -t ../data/mtsamples_ihi_docs -j ../data/mtsamples_ihi_semehr_results -m ../data/mtsamples_ihi_meta

### Query

See the script to check if `postgres_query_cui` restricts to a range of dates, then
```
./semehr_to_postgres.py -q cui:C0205076
```
