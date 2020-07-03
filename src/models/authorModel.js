const connection = require('../config/mysql')

module.exports = {
	getAllAuthors: function () {
		return new Promise(function (resolve, reject) {
			const query = 'SELECT * FROM authors'
			connection.query(query, function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	getAuthor: function (id) {
		return new Promise(function (resolve, reject) {
			const query = 'SELECT * FROM authors WHERE id=?'
			connection.query(query, id, function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	addAuthor: function (setData) {
		return new Promise(function (resolve, reject) {
			const query = 'INSERT INTO authors SET ?'
			connection.query(query, setData, function (error, result) {
				if (!error) {
					const newData = {
						id: result.insertId,
						...setData
					}
					resolve(newData)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	updateAuthor: function (setData, id) {
		return new Promise(function (resolve, reject) {
			const query = 'UPDATE authors SET ? WHERE id=?'
			connection.query(query, [setData, id], function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	deleteAuthor: function (id) {
		return new Promise(function (resolve, reject) {
			const query = 'DELETE FROM authors WHERE id=?'
			connection.query(query, id, function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	}
}
