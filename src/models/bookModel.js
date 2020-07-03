const connection = require('../config/mysql')
const fs = require('fs')

module.exports = {
    getAllBooks: function (setData) {
        return new Promise(function (resolve, reject) {
            const query = `SELECT 
			b.id AS id, b.title AS title, b.description AS description, b.image AS image,
			b.genre_id AS genre_id, g.name AS genre_name, b.author_id AS author_id,
			a.name AS author_name, b.status_id AS status_id, s.name AS status_name,
			b.updated_at AS updated_at, b.created_at AS created_at			
			FROM books AS b
			INNER JOIN authors AS a ON b.author_id = a.id
			INNER JOIN genres AS g ON b.genre_id = g.id
			INNER JOIN status AS s ON b.status_id = s.id ${setData}
			`
            connection.query(query, function (error, result) {
                if (!error) {
                    resolve(result)
                } else {
                    console.log(error)
                    reject(new Error(error))
                }
            })
        })
    },

    getBook: function (id) {
        return new Promise(function (resolve, reject) {
            const query = `SELECT 
			b.id AS id, b.title AS title, b.description AS description, b.image AS image,
			b.genre_id AS genre_id, g.name AS genre_name, b.author_id AS author_id,
			a.name AS author_name, b.status_id AS status_id, s.name AS status_name,
			b.updated_at AS updated_at, b.created_at AS created_at			
			FROM books AS b
			INNER JOIN authors AS a ON b.author_id = a.id
			INNER JOIN genres AS g ON b.genre_id = g.id
			INNER JOIN status AS s ON b.status_id = s.id
			WHERE b.id=?`
            connection.query(query, id, function (error, result) {
                if (!error) {
                    resolve(result[0])
                } else {
                    reject(new Error(error))
                }
            })
        })
    },

    addCounter: function (id) {
        return new Promise(function (resolve, reject) {
            const query = 'UPDATE books SET count_view = count_view + 1 WHERE id=?'
            connection.query(query, id, function (error, result) {
                if (!error) {
                    resolve(result)
                } else {
                    reject(new Error(error))
                }
            })
        })
    },

    deleteImageBook: function (image) {
        return new Promise(function (resolve, reject) {
            fs.unlink(__dirname + './../public/images/books/' + image, function (err) {
                if (err) return reject(new Error(err))
                resolve(console.log('File delete succesfully'))
            })
        })
    },

    addBook: function (setData) {
        return new Promise(function (resolve, reject) {
            const query = 'INSERT INTO books SET ?'
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

    updateBook: function (setData, id) {
        return new Promise(function (resolve, reject) {
            const query = 'UPDATE books SET ? WHERE id=?'
            connection.query(query, [setData, id], function (error, result) {
                if (!error) {
                    const newData = {
                        id,
                        ...setData
                    }
                    resolve(newData)
                } else {
                    reject(new Error(error))
                }
            })
        })
    },

    deleteBook: function (id) {
        return new Promise(function (resolve, reject) {
            const query = 'DELETE FROM books WHERE id=?'
            connection.query(query, id, function (error, result) {
                if (!error) {
                    const newData = {
                        id,
                        result
                    }
                    resolve(newData)
                } else {
                    reject(new Error(error))
                }
            })
        })
    }
}
