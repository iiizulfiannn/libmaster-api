const multer = require('multer')
const path = require('path')

// directory file will save
const storage = multer.diskStorage({
	destination: path.join(__dirname + './../public/images/books'),
	filename: function (req, file, cb) {
		cb(null, `book-${Date.now() + path.extname(file.originalname)}`)
	}
})

// init upload
const upload = multer({
	storage: storage,
	limits: { fileSize: 1000000 },
	fileFilter: function (req, file, cb) {
		checkFileType(file, cb)
	}
}).single('image')

// check file type
function checkFileType(file, cb) {
	const fileTypes = /jpg|jpeg|png|gif/
	const extName = fileTypes.test(path.extname(file.originalname).toLowerCase())
	const mimeType = fileTypes.test(file.mimetype)
	if (extName && mimeType) {
		return cb(null, true)
	} else {
		cb('Error: Image Only!')
	}
}

module.exports = upload
