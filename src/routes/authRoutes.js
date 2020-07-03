const express = require('express')
const Route = express.Router()
const authController = require('../controllers/authController')

Route.post('/register', authController.postUser).post('/login', authController.postLogin)

module.exports = Route
