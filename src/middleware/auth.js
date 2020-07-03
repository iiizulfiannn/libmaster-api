const jwt = require('jsonwebtoken')
const helper = require('../helpers/index')
const authModel = require('../models/authModel')

module.exports = {
	authorization: function (request, response, next) {
		const token = request.headers.authorization
		if (token == undefined) {
			return helper.response(response, 400, { message: 'You need to sign in' })
		} else {
			// authenthication
			jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, function (error, result) {
				if ((error && error.name === 'TokenExpiredError') || (error && error.name === 'JsonWebTokenError')) {
					return helper.response(response, 400, { message: error.name })
				} else {
					request.token = result
					next()
				}
			})
		}
	},

	authRole: function (role1, role2) {
		return function (request, response, next) {
			const role_id = request.token.result.role_id

			if (role_id === role2 || role_id === role1) {
				next()
			} else {
				if (role_id === 2) {
					return helper.response(response, 400, { message: 'Not Allowed, only SuperAdmin' })
				} else if (role_id === role1) {
					next()
				}
				return helper.response(response, 400, { message: 'Not Allowed, only Admin' })
			}
		}
	}
}
