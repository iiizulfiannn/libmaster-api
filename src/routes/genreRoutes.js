const express = require('express')
const Route = express.Router()
const genreController = require('../controllers/genreController')

Route.get('/', genreController.getAllGenres)
	.get('/:id', genreController.getGenre)
	.post('/', genreController.addGenre)
	.put('/:id', genreController.updateGenre)
	.delete('/:id', genreController.deleteGenre)

module.exports = Route
