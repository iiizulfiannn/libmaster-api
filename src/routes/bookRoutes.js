const express = require('express')
const Route = express.Router()
const bookController = require('../controllers/bookController')
const uploadImage = require('../middleware/uploadImage')

Route.get('/', bookController.getAllBooks)
	.get('/:id', bookController.getBook)
	.post('/', uploadImage, bookController.addBook)
	.put('/:id', uploadImage, bookController.updateBook)
	.delete('/:id', bookController.deleteBook)

module.exports = Route
