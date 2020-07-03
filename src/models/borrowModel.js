const connection = require("../config/mysql");

module.exports = {
  getAllBorrows: function () {
    return new Promise(function (resolve, reject) {
      const query = `SELECT 
            bor.id AS id, bor.date_of_borrow AS date_of_borrow, bor.date_of_return AS date_of_return,
            bor.book_id AS book_id, bor.user_id AS user_id,
            book.title AS book_title, book.image AS image, user.fullname AS user_fullname
            FROM borrow AS bor
            INNER JOIN books AS book ON bor.book_id = book.id
            INNER JOIN users AS user ON bor.user_id = user.id
            `;
      connection.query(query, function (error, result) {
        if (!error) {
          resolve(result);
        } else {
          reject(new Error(error));
        }
      });
    });
  },

  getBorrow: function (id) {
    return new Promise(function (resolve, reject) {
      const query = `SELECT 
            bor.id AS id, bor.date_of_borrow AS date_of_borrow, bor.date_of_return AS date_of_return,
            bor.book_id AS book_id, bor.user_id AS user_id,
            book.title AS book_title, user.fullname AS user_fullname
            FROM borrow AS bor
            INNER JOIN books AS book ON bor.book_id = book.id
            INNER JOIN users AS user ON bor.user_id = user.id
            WHERE bor.user_id=?`;
      connection.query(query, id, function (error, result) {
        if (!error) {
          resolve(result);
        } else {
          reject(new Error(error));
        }
      });
    });
  },

  addBorrow: function (setData) {
    return new Promise(function (resolve, reject) {
      const query = `INSERT INTO borrow (user_id, book_id, date_of_borrow) VALUES (${setData.user_id}, ${setData.book_id}, Now())`;
      connection.query(query, function (error, result) {
        if (!error) {
          const newData = {
            id: result.insertId,
            ...setData,
          };
          resolve(newData);
        } else {
          console.log(error);
          reject(new Error(error));
        }
      });
    });
  },

  updateBookToUnvailable: function (idBook) {
    return new Promise(function (resolve, reject) {
      const query = "UPDATE books SET status_id = 2 WHERE id = ?";
      connection.query(query, idBook, function (error, result) {
        if (!error) {
          resolve(result);
        } else {
          reject(new Error(error));
        }
      });
    });
  },

  returnBook: function (borrowId) {
    return new Promise(function (resolve, reject) {
      // const t = new Date().toISOString().slice(0, 19).replace('T', ' ').split(/[- :]/)
      // var dateTime = new Date(Date.UTC(t[0], t[1] - 1, t[2], t[3], t[4], t[5]))
      // console.log(dateTime[0])
      const query = `UPDATE borrow SET date_of_return = Now() WHERE id = ${borrowId}`;
      connection.query(query, function (error, result) {
        if (!error) {
          resolve(result);
        } else {
          console.log("model: " + error);
          reject(new Error(error));
        }
      });
    });
  },

  updateBookToAvailable: function (idBook) {
    return new Promise(function (resolve, reject) {
      const query = `UPDATE books SET status_id = 1 WHERE id = ${idBook}`;
      connection.query(query, function (error, result) {
        if (!error) {
          const newData = {
            id: idBook,
            status_id: 2,
          };
          resolve(newData);
        } else {
          reject(new Error(error));
        }
      });
    });
  },

  updateBorrow: function (setData, id) {
    return new Promise(function (resolve, reject) {
      const query = "UPDATE borrow SET ? WHERE id=?";
      connection.query(query, [setData, id], function (error, result) {
        if (!error) {
          resolve(result);
        } else {
          reject(new Error(error));
        }
      });
    });
  },

  deleteBorrow: function (id) {
    return new Promise(function (resolve, reject) {
      const query = "DELETE FROM borrow WHERE id=?";
      connection.query(query, id, function (error, result) {
        if (!error) {
          resolve(result);
        } else {
          console.log(error);
          reject(new Error(error));
        }
      });
    });
  },
};
