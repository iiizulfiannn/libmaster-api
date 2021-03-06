const borrowModel = require("../models/borrowModel");
const helper = require("../helpers/index");

module.exports = {
  getAllBorrows: async function (request, response) {
    try {
      // const idUser = request.body.id;
      const result = await borrowModel.getAllBorrows();
      return helper.response(response, 200, result);
    } catch (error) {
      return helper.response(response, 500, error);
    }
  },

  getBorrow: async function (request, response) {
    try {
      const id = request.params.id;
      const result = await borrowModel.getBorrow(id);
      return helper.response(response, 200, result);
    } catch (error) {
      console.log(error);
      return helper.response(response, 500, error);
    }
  },

  addBorrow: async function (request, response) {
    try {
      const setData = request.body;
      let result = await borrowModel.addBorrow(setData);
      if (result) await borrowModel.updateBookToUnvailable(result.book_id);
      result = await borrowModel.getBorrowById(result.id);
      return helper.response(response, 200, result);
    } catch (error) {
      return helper.response(response, 500, error);
    }
  },

  returnBook: async function (request, response) {
    try {
      const borrowId = request.body.borrowId;
      const bookId = request.body.book_id;
      const result = await borrowModel.returnBook(borrowId);
      if (result) await borrowModel.updateBookToAvailable(bookId);
      const newResult = await borrowModel.getBorrowById(borrowId);
      return helper.response(response, 200, newResult);
    } catch (error) {
      console.log(error);
      return helper.response(response, 500, error);
    }
  },

  updateBorrow: async function (request, response) {
    try {
      const setData = request.body;
      const id = request.params.id;
      const result = await borrowModel.updateBorrow(setData, id);
      return helper.response(response, 200, result);
    } catch (error) {
      return helper.response(response, 500, error);
    }
  },

  deleteBorrow: async function (request, response) {
    try {
      const id = request.params.id;
      const result = await borrowModel.deleteBorrow(id);
      return helper.response(response, 200, result);
    } catch (error) {
      return helper.response(response, 500, error);
    }
  },
};
