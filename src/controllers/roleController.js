const roleModel = require('../models/roleModel')
const helper = require('../helpers/index')

module.exports = {
	getAllRoles: async function (request, response) {
		try {
			const result = await roleModel.getAllRoles()
			return helper.response(response, 200, result)
		} catch (error) {
			return helper.response(response, 500, error)
		}
	},

	getRole: async function (request, response) {
		try {
			const id = request.params.id
			const result = await roleModel.getRole(id)
			return helper.response(response, 200, result)
		} catch (error) {
			return helper.response(response, 500, error)
		}
	},

	addRole: async function (request, response) {
		try {
			const setData = request.body
			const result = await roleModel.addRole(setData)
			return helper.response(response, 200, result)
		} catch (error) {
			return helper.response(response, 500, error)
		}
	},

	updateRole: async function (request, response) {
		try {
			const setData = request.body
			const id = request.params.id
			const result = await roleModel.updateRole(setData, id)
			return helper.response(response, 200, result)
		} catch (error) {
			return helper.response(response, 500, error)
		}
	},

	deleteRole: async function (request, response) {
		try {
			const id = request.params.id
			const result = await roleModel.deleteRole(id)
			return helper.response(response, 200, result)
		} catch (error) {
			return helper.response(response, 500, error)
		}
	}
}
