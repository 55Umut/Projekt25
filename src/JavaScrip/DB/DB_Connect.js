﻿const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'burgershop'
});

connection.connect();

module.exports = connection;