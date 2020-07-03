const authorModel = require('../models/authorModel');
const helper = require('../helpers/index');

module.exports = {
	getAllAuthors: async function (request, response) {
		try {
			const result = await authorModel.getAllAuthors();
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	},

	getAuthor: async function (request, response) {
		try {
			const id = request.params.id;
			const result = await authorModel.getAuthor(id);
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	},

	addAuthor: async function (request, response) {
		try {
			const setData = request.body;
			const result = await authorModel.addAuthor(setData);
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	},

	updateAuthor: async function (request, response) {
		try {
			const setData = request.body;
			const id = request.params.id;
			const result = await authorModel.updateAuthor(setData, id);
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	},

	deleteAuthor: async function (request, response) {
		try {
			const id = request.params.id;
			const result = await authorModel.deleteAuthor(id);
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	}
};
