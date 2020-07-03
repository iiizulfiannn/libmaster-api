const connection = require('../config/mysql')

module.exports = {
	getAllStatus: function () {
		return new Promise(function (resolve, reject) {
			const query = 'SELECT * FROM status'
			connection.query(query, function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	getStatus: function (id) {
		return new Promise(function (resolve, reject) {
			const query = 'SELECT * FROM status WHERE id=?'
			connection.query(query, id, function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	addStatus: function (setData) {
		return new Promise(function (resolve, reject) {
			const query = 'INSERT INTO status SET ?'
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

	updateStatus: function (setData, id) {
		return new Promise(function (resolve, reject) {
			const query = 'UPDATE status SET ? WHERE id=?'
			connection.query(query, [setData, id], function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	deleteStatus: function (id) {
		return new Promise(function (resolve, reject) {
			const query = 'DELETE FROM status WHERE id=?'
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
