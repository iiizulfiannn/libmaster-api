const express = require('express')
const Route = express.Router()
const authorController = require('../controllers/authorController')

Route.get('/', authorController.getAllAuthors)
	.get('/:id', authorController.getAuthor)
	.post('/', authorController.addAuthor)
	.put('/:id', authorController.updateAuthor)
	.delete('/:id', authorController.deleteAuthor)

module.exports = Route
