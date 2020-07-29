const bookModel = require('../models/bookModel');
const helper = require('../helpers/index');
const path = require('path');

module.exports = {
    getAllBooks: async function (request, response) {
        try {
            const search = request.query.search;
            const page = parseInt(request.query.page);
            const sort = request.query.sort;
            const order = request.query.order;
            const limit = parseInt(request.query.limit);

            let setData;
            if (search && sort && order) {
                setData = `WHERE b.title LIKE '${search}%' AND g.name = '${sort}' ORDER BY b.created_at ${order}`;
            } else if (search && sort) {
                setData = `WHERE b.title LIKE '${search}%' AND g.name = '${sort}'`;
            } else if (search) {
                setData = `WHERE b.title LIKE '${search}%'`;
            } else if (sort && order) {
                setData = `WHERE g.name = '${sort}' ORDER BY b.created_at ${order}`;
            } else if (sort) {
                setData = `WHERE g.name = '${sort}'`;
            } else if (order) {
                setData = `ORDER BY b.created_at ${order}`;
            }

            if (setData === undefined) {
                setData = '';
            }
            const result = await bookModel.getAllBooks(setData);

            if (result == '') {
                return helper.response(response, 400, {
                    message: 'Data not found',
                });
            }

            let pagination;
            let newData;
            if (page) {
                const start = (page - 1) * limit;
                const end = page * limit;

                newData = result.slice(start, end);

                const total_data = result.length;
                const total_data2 = newData.length;
                const total_page = Math.ceil(total_data / limit);
                const next_page =
                    page === total_page || page > total_page ? false : page + 1;
                const prev_page =
                    page === 1 || page > total_page ? false : page - 1;

                pagination = {
                    total_data,
                    total_page,
                    prev_page,
                    page,
                    next_page,
                    limit,
                };
            } else {
                pagination = '';
                newData = result;
            }

            return helper.response(response, 200, newData, pagination);
        } catch (error) {
            console.log(error);
            return helper.response(response, 500, error);
        }
    },

    getBook: async function (request, response) {
        try {
            const id = request.params.id;
            await bookModel.addCounter(id);
            const result = await bookModel.getBook(id);
            return helper.response(response, 200, result);
        } catch (error) {
            return helper.response(response, 500, error);
        }
    },

    addBook: async function (request, response) {
        try {
            const setData = {
                ...request.body,
                image: request.file.filename,
            };
            let result = await bookModel.addBook(setData);
            result = await bookModel.getBook(result.id);
            return helper.response(response, 200, result);
        } catch (error) {
            console.log(error);
            return helper.response(response, 500, error);
        }
    },

    updateBook: async function (request, response) {
        try {
            const setData = {
                ...request.body,
                image: request.file.filename,
            };
            const id = request.params.id;
            const book = await bookModel.getBook(id);
            await bookModel.deleteImageBook(book.image);
            await bookModel.updateBook(setData, id);
            const newResult = await bookModel.getBook(id);
            return helper.response(response, 200, newResult);
        } catch (error) {
            console.log(error);
            return helper.response(response, 500, error);
        }
    },

    deleteBook: async function (request, response) {
        try {
            const id = request.params.id;
            const image = await bookModel.getBook(id);
            const result = await bookModel.deleteBook(id);
            if (result) await bookModel.deleteImageBook(image.image);
            return helper.response(response, 200, result);
        } catch (error) {
            console.log(error);
            return helper.response(response, 500, error);
        }
    },
};
