const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'burgershop'
});

connection.connect();

connection.query('SELECT * FROM orders', (error, results) => {
    if (error) throw error;
    console.log(results);
});

connection.end();