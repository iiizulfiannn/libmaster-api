const express = require('express')
const Route = express.Router()
const roleController = require('../controllers/roleController')
const { authorization, authRole } = require('../middleware/auth')

Route.all('*', authorization, authRole(1))
	.get('/', roleController.getAllRoles)
	.get('/:id', roleController.getRole)
	.post('/', roleController.addRole)
	.put('/:id', roleController.updateRole)
	.delete('/:id', roleController.deleteRole)

module.exports = Route
