#install.packages('httr') # may need OS packages libssl-dev libcurl4-openssl-dev
#install.packages('digest')
#install.packages('jsonlite')
#install.packages('dplyr')
library(httr)
library(digest)
library(jsonlite)
#library(dplyr)

hostname="192.168.63.18"
port="8485"
api_url=paste0("https://", hostname, ":", port, "/api/")

# PicturesDevAB = https://20.68.25.9:8485/vis/
# curl -g -k 'https://20.68.25.9:8485/api/search_anns/C0205076/?j={"terms":[{"q":"C0205076"}]}'

# Allow insecure requests (as the certificate is self-signed)
httr::set_config(config(ssl_verifypeer = 0L))

# Check password
password="CHANGEME"
enc_pass=digest(password, algo="sha256", serialize=F)
need_pass=content(GET(paste0(api_url, "need_passphrase/")), as="parsed")
pass_ok=content(GET(paste0(api_url, "check_phrase/", enc_pass, "/")), as="parsed")
print(paste0('Need password?', need_pass))
print(paste0('Password ok?', pass_ok))

# Simple request for code C0205076
rc <- GET(paste0(api_url, 'search_anns/json/'),
    query = list(j = '{"terms":[{"q":"C0205076"}], "filter":{"start_date":"2018-01-01", "end_date":"2018-02-01"}}',
        passphrase = enc_pass))
http_type(rc)    # should be "application/json"
http_error(rc)   # should be FALSE
rcJsonText <- content(rc, as="text")
rcJsonText
rcJsonParsed <- content(rc, as="parsed")
rcJsonParsed
fromJSON(rcJsonText)
# You can see num_results, results, transactionId
# Results should be an array of document identifiers:
result_list <- rcJsonParsed$results
result_list[1]
result_list[2]
