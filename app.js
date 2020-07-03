const express = require("express");
const app = express();
const dotenv = require("dotenv");
const cors = require("cors");

dotenv.config({ path: "./.env" });

const bodyParser = require("body-parser");
// const jsonParser = bodyParser.json() // has using qs in react
const morgan = require("morgan");
const routeNavigator = require("./src/index");

// cors
app.use(cors());

const server = app.listen(process.env.PORT, "192.168.1.3", function () {
  const host = server.address().address;
  const port = server.address().port;
  console.log("Server Running at " + host + ": " + port);
});

// app.use(jsonParser) // has using qs in react

app.use(express.static(__dirname + "/src/public/images/books"));

app.use(morgan("dev"));
app.use(bodyParser.urlencoded({ extended: true }));

// app.use(function (req, res, next) {
//   //   res.header("Access-Control-Allow-Origin", "http://localhost:3000");
//   res.header("Access-Control-Allow-Origin", "http://192.168.1.4:8081");
//   res.header(
//     "Access-Control-Allow-Headers",
//     "Accept, x-access-token, Authorization, Origin, X-Requested-With, Content-Type"
//   );
//   res.header(
//     "Access-Control-Allow-Methods",
//     "GET, HEAD, PUT, PATCH, POST, DELETE, OPTIONS"
//   );
//   res.header("Access-Control-Expose-Headers", "Content-Length");
//   res.header("Access-Control-Allow-Credentials", "true");
//   next();
// });

app.use("/", routeNavigator);
