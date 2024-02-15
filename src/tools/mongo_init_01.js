// Configure MongoDB to use access control,
//  make the "admin" database where user roles are stored
//  shutdown the database.
// Run this with mongo mongo_init_01.js

conn = new Mongo();
db = conn.getDB("admin");
// OR
// db = connect("localhost:27020/admin");

//use admin;

db.createUser(
  {
    user: "root",
    pwd: "root", // cleartext password, or passwordPrompt()
    roles: [ { role: "userAdminAnyDatabase", db: "admin" }, "readWriteAnyDatabase" ]
  }
);

// No need to do this, next script will restart mongo: db.adminCommand( { shutdown: 1 } )
