#!/bin/bash
tmp=/tmp/mongo.$$.js

cat << _EOF > $tmp
db.createUser(
  {
    user: "semehr",
    pwd: "semehr",
    roles: [
       { role: "readWrite", db: "semehr" }
    ]
  }
)
_EOF

mongo --authenticationDatabase admin -u root -p root admin $tmp

rm -f $tmp
