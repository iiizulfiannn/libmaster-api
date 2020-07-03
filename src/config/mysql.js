const mysql = require('mysql')

const connection = mysql.createConnection({
	host: process.env.MYSQL_HOST,
	user: process.env.MYSQL_USER,
	password: process.env.MYSQL_PASSWORD,
	database: process.env.MYSQL_DATABASE
})

connection.connect(function (error) {
	if (error) throw error
	console.log('Database has connected...')
})

module.exports = connection
