const express = require('express')
const Route = express.Router()
const borrowController = require('../controllers/borrowController')

Route.get('/', borrowController.getAllBorrows)
    .get('/:id', borrowController.getBorrow)
    .post('/', borrowController.addBorrow)
    .post('/return-book', borrowController.returnBook)
    .put('/:id', borrowController.updateBorrow)
    .delete('/:id', borrowController.deleteBorrow)

module.exports = Route
