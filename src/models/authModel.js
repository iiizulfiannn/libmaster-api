const connection = require('../config/mysql')

module.exports = {
    checkEmail: function (setData) {
        return new Promise(function (resolve, reject) {
            const sql = 'SELECT email, role_id FROM users WHERE email=?'
            connection.query(sql, setData.email, function (error, result) {
                if (!error) {
                    resolve(result[0])
                } else {
                    reject(new Error(error))
                }
            })
        })
    },

    postUser: function (setData) {
        return new Promise(function (resolve, reject) {
            const sql = 'INSERT INTO users SET ?'
            connection.query(sql, setData, function (error, result) {
                if (!error) {
                    const newData = {
                        id: result.insertId,
                        ...setData
                    }
                    delete newData.password
                    resolve(newData)
                } else {
                    reject(new Error(error))
                }
            })
        })
    },

    postLogin: function (getData) {
        return new Promise(function (resolve, reject) {
            const query = `SELECT u.id AS id, u.fullname AS fullname, u.email AS email, u.password AS password, u.role_id AS role_id, r.name AS role_name
			FROM users AS u INNER JOIN roles AS r ON u.role_id = r.id WHERE email=?`
            connection.query(query, getData.email, function (error, result) {
                if (!error) {
                    resolve(result[0])
                } else {
                    reject(new Error(error))
                }
            })
        })
    }
}
