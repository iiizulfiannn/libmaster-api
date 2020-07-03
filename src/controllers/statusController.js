const statusModel = require('../models/statusModel');
const helper = require('../helpers/index');

module.exports = {
	getAllStatus: async function (request, response) {
		try {
			const result = await statusModel.getAllStatus();
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	},

	getStatus: async function (request, response) {
		try {
			const id = request.params.id;
			const result = await statusModel.getStatus(id);
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	},

	addStatus: async function (request, response) {
		try {
			const setData = request.body;
			const result = await statusModel.addStatus(setData);
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	},

	updateStatus: async function (request, response) {
		try {
			const setData = request.body;
			const id = request.params.id;
			const result = await statusModel.updateStatus(setData, id);
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	},

	deleteStatus: async function (request, response) {
		try {
			const id = request.params.id;
			const result = await statusModel.deleteStatus(id);
			return helper.response(response, 200, result);
		} catch (error) {
			return helper.response(response, 500, error);
		}
	}
};
