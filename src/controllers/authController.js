const authModel = require('../models/authModel')
const helper = require('../helpers/index')
const jwt = require('jsonwebtoken')
const bcrypt = require('bcrypt')

module.exports = {
    postUser: async function (request, response) {
        try {
            const setData = request.body
            // Check email already exists or not
            const emailFound = await authModel.checkEmail(setData)
            if (emailFound == undefined) {
                setData.password = await bcrypt.hash(setData.password, 12)
                const result = await authModel.postUser(setData)
                return helper.response(response, 200, result)
            } else {
                return helper.response(response, 400, {
                    message: 'Email already exists'
                })
            }
        } catch (error) {
            return helper.response(response, 500, error)
        }
    },

    postLogin: async function (request, response) {
        try {
            const getData = request.body
            // console.log(getData)
            const result = await authModel.postLogin(getData)
            // console.log(result)
            if (result === undefined) {
                return helper.response(response, 204, { message: 'Email not found' })
            } else {
                bcrypt.compare(getData.password, result.password, function (
                    error,
                    match
                ) {
                    if (match == true) {
                        const token = jwt.sign(
                            { result },
                            process.env.ACCESS_TOKEN_SECRET,
                            { expiresIn: '1000' }
                        )
                        const results = { ...result, token }
                        delete results.password
                        return helper.response(response, 200, results)
                    } else {
                        return helper.response(response, 204, { message: 'Wrong password' })
                    }
                })
            }
        } catch (error) {
            console.log(error)
            return helper.response(response, 500, error)
        }
    }
}
