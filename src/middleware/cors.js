// const whitelist = ['http://localhost:3001', 'http://localhost:3000']
// const corsOps = {
// 	origin: function (origin, callback) {
// 		// accessing by whitelist or server-to-server
// 		if (whitelist.indexOf(origin) !== -1 || !origin) {
// 			callback(null, true)
// 		} else {
// 			callback(new Error('Not allowed by CORS'))
// 		}
// 	},
// 	methods: ['GET', 'HEAD', 'POST', 'PUT', 'PATCH', 'DELETE'],
// 	allowedHeaders: ['Content-Type', 'Authorization'],
// 	credentials: true,
// 	// exposedHeaders: ['Content-Range', 'X-Content-Range'],
// 	preflightContinue: true
// }

// exports.module = corsOps
