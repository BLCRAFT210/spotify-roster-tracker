var mysql = require('mysql2');
const dotenv = require('dotenv');
dotenv.config();

var connection = mysql.createConnection({
    host: 'localhost',
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    port: process.env.DB_PORT,
    database: 'label_artist_database'
});

connection.connect(function(err) {
    if (err) throw err;
    console.log('Connected!');
});