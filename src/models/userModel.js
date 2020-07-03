const connection = require('../config/mysql')

module.exports = {
	getAllUsers: function () {
		return new Promise(function (resolve, reject) {
			const query = `SELECT u.id AS id, u.fullname AS fullname, u.email AS email, u.role_id AS role_id, r.name AS role_name,
			u.updated_at AS updated_at, u.created_at AS created_at FROM users AS u INNER JOIN roles AS r ON u.role_id = r.id`
			connection.query(query, function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	getUser: function (id) {
		return new Promise(function (resolve, reject) {
			const query = 'SELECT * FROM users WHERE id=?'
			connection.query(query, id, function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	// addUser: function (setData) {
	// 	return new Promise(function (resolve, reject) {
	// 		const sql = 'INSERT INTO users SET ?'
	// 		connection.query(sql, setData, function (error, result) {
	// 			if (!error) {
	// 				const newData = {
	// 					id: result.insertId,
	// 					...setData
	// 				}
	// 				delete newData.password
	// 				resolve(newData)
	// 			} else {
	// 				reject(new Error(error))
	// 			}
	// 		})
	// 	})
	// },

	updateUser: function (setData, id) {
		return new Promise(function (resolve, reject) {
			const query = 'UPDATE users SET ? WHERE id=?'
			connection.query(query, [setData, id], function (error, result) {
				if (!error) {
					resolve(result)
				} else {
					reject(new Error(error))
				}
			})
		})
	},

	deleteUser: function (id) {
		return new Promise(function (resolve, reject) {
			const query = 'DELETE FROM users WHERE id=?'
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
