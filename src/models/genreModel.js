const connection = require('../config/mysql')

module.exports = {
	getAllGenres: function () {
		return new Promise(function (resolve, reject) {
			const query = 'SELECT * FROM genres'
			connection.query(query, function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	getGenre: function (id) {
		return new Promise(function (resolve, reject) {
			const query = 'SELECT * FROM genres WHERE id=?'
			connection.query(query, id, function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	addGenre: function (setData) {
		return new Promise(function (resolve, reject) {
			const query = 'INSERT INTO genres SET ?'
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

	updateGenre: function (setData, id) {
		return new Promise(function (resolve, reject) {
			const query = 'UPDATE genres SET ? WHERE id=?'
			connection.query(query, [setData, id], function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	deleteGenre: function (id) {
		return new Promise(function (resolve, reject) {
			const query = 'DELETE FROM genres WHERE id=?'
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
