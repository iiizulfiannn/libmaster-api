const genreModel = require('../models/genreModel');
const helper = require('../helpers/index');

module.exports = {
	getAllGenres: async function (request, response) {
		try {
			const result = await genreModel.getAllGenres();
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	},

	getGenre: async function (request, response) {
		try {
			const id = request.params.id;
			const result = await genreModel.getGenre(id);
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	},

	addGenre: async function (request, response) {
		try {
			const setData = request.body;
			const result = await genreModel.addGenre(setData);
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	},

	updateGenre: async function (request, response) {
		try {
			const setData = request.body;
			const id = request.params.id;
			const result = await genreModel.updateGenre(setData, id);
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	},

	deleteGenre: async function (request, response) {
		try {
			const id = request.params.id;
			const result = await genreModel.deleteGenre(id);
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	}
};
