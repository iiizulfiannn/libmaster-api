const connection = require('../config/mysql')

module.exports = {
	getAllRoles: function () {
		return new Promise(function (resolve, reject) {
			const query = 'SELECT * FROM roles'
			connection.query(query, function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	getRole: function (id) {
		return new Promise(function (resolve, reject) {
			const query = 'SELECT * FROM roles WHERE id=?'
			connection.query(query, id, function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	addRole: function (setData) {
		return new Promise(function (resolve, reject) {
			const query = 'INSERT INTO roles SET ?'
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

	updateRole: function (setData, id) {
		return new Promise(function (resolve, reject) {
			const query = 'UPDATE roles SET ? WHERE id=?'
			connection.query(query, [setData, id], function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	deleteRole: function (id) {
		return new Promise(function (resolve, reject) {
			const query = 'DELETE FROM roles WHERE id=?'
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
