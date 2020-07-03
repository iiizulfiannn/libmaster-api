const express = require('express')
const Route = express.Router()
const userController = require('../controllers/userController')
const { authorization, authRole } = require('../middleware/auth')

Route
    .get('/', userController.getAllUsers)
    .get('/:id', userController.getUser)
    // .post('/', authRole(1), userController.addUser)
    .put('/:id', userController.updateUser)
    .delete('/:id', userController.deleteUser)

module.exports = Route
