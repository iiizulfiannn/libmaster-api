const userModel = require('../models/userModel')
const helper = require('../helpers/index')
const bcrypt = require('bcrypt')

module.exports = {
	getAllUsers: async function (request, response) {
		try {
			const result = await userModel.getAllUsers()
			return helper.response(response, 200, result)
		} catch (error) {
			return helper.response(response, 500, error)
		}
	},

	getUser: async function (request, response) {
		try {
			const id = request.params.id
			const result = await userModel.getUser(id)
			return helper.response(response, 200, result)
		} catch (error) {
			return helper.response(response, 500, error)
		}
	},

	// addUser: async function (request, response) {
	// 	try {
	// 		const setData = request.body
	// 		setData.password = await bcrypt.hash(setData.password, 12)
	// 		const result = await userModel.addUser(setData)
	// 		return helper.response(response, 200, result)
	// 	} catch (error) {
	// 		console.log(error)
	// 		return helper.response(response, 500, error)
	// 	}
	// },

	updateUser: async function (request, response) {
		try {
			const setData = request.body
			const id = request.params.id
			setData.password = await bcrypt.hash(setData.password, 12)
			const result = await userModel.updateUser(setData, id)
			return helper.response(response, 200, result)
		} catch (error) {
			return helper.response(response, 500, error)
		}
	},

	deleteUser: async function (request, response) {
		try {
			const id = request.params.id
			const result = await userModel.deleteUser(id)
			return helper.response(response, 200, result)
		} catch (error) {
			return helper.response(response, 500, error)
		}
	}
}
