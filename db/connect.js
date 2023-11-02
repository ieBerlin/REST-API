const mysql = require('mysql2');

// connect to database 

const connection =
    mysql.createPool({
        host: "localhost",
        user: "root",
        password: "",
        database: "tp_03"
    });
module.exports = connection;