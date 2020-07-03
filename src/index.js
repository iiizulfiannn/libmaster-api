const express = require('express')
const Route = express.Router()

const bookRoutes = require('./routes/bookRoutes')
const authorRoutes = require('./routes/authorRoutes')
const genreRoutes = require('./routes/genreRoutes')
const statusRoutes = require('./routes/statusRoutes')
const userRoutes = require('./routes/userRoutes')
const authRoutes = require('./routes/authRoutes')
const roleRoutes = require('./routes/roleRoutes')
const borrowRoutes = require('./routes/borrowRoutes')

const { authorization } = require('./middleware/auth')

Route.use('/books', bookRoutes)
Route.use('/authors', authorRoutes)
Route.use('/genres', genreRoutes)
Route.use('/status', statusRoutes)
Route.use('/users', userRoutes)
Route.use('/auth', authRoutes)
Route.use('/roles', roleRoutes)
Route.use('/borrow', borrowRoutes)

module.exports = Route
