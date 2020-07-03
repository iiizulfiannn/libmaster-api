const express = require('express');
const Route = express.Router();
const statusController = require('../controllers/statusController');

Route.get('/', statusController.getAllStatus)
	.get('/:id', statusController.getStatus)
	.post('/', statusController.addStatus)
	.put('/:id', statusController.updateStatus)
	.delete('/:id', statusController.deleteStatus);

module.exports = Route;
