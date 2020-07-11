<h1 align="center">Libmaster API</h1>

Libmaster API is RESTFULL API built with NodeJS using the ExpressJS Framework.
It's integrated with MySQL Database.

[![Node.js](https://img.shields.io/badge/Node.js-v.12.16.2-green.svg?style=rounded-square)](https://nodejs.org/)
[![Express.js](https://img.shields.io/badge/Express.js-4.17.1-lightgray.svg?style=rounded-square)](https://expressjs.com/en/starter/installing.html)

## Installation

1. [Node Js](https://nodejs.org/)
2. [Postman](https://www.postman.com/)
3. Web Server (ex. Apache)

## How to run

1. Clone or download this repository.
2. Open app's directory from CMD or Terminal.
3. Type `npm install` or `yarn install` if you use yarn.
4. Turn on Web Server and MySQL can using Third-party tool like Xampp, etc.
5. Create a database by name libmaster, and Import file [libmaster.sql](libmaster.sql) to **phpmyadmin GUI**
6. Open Postman desktop.
7. Choose HTTP Method and enter request url.(ex. localhost:8080/books)
8. You can see all the end point [here](#end-point)

## Set up .env file

Create .env file on your root file, open your favorite code editor, and copy paste this code below :

```
ACCESS_TOKEN_SECRET=k0d3r4H4s1A
REFRESH_TOKEN_SECRET=k0d3r4H4s1Aampuuuun
MYSQL_HOST=localhost
MYSQL_USER=root
MYSQL_PASSWORD=''
MYSQL_DATABASE=libmaster
PORT=8080
```

## End Point

**1. GET**

-   `/books`
-   `/books?search=title&sort=genre1&page=1&limit=10&order=asc`
-   `/genres`
-   `/authors`
-   `/status`
-   `/users`

**2. POST**

-   `/books`
    -   `{ "id": "3", "title": "Title 3", "description": "About Title 3", "genre_id": 3, "genre_name": "Genre3", "author_id": 1, "author_name": "Author 1", "status_id": 2, "status_name": "Unvailable", "image": "book-1589707802155.jpg" } ...`
-   `/genres`
    -   `{"id": 1, "name": "Genre1"} ...`
-   `/authors`
    -   `{"id": 1, "name": "Author 1"} ...`
-   `/status`
    -   `{"id": 1, "name": "Available"} ...`
-   `/users`
    -   `{"id": 2, "fullname": "useradmin", "email": "admin@example.com", "role_id": 2, "role_name": "Admin"} ...`

**3. PUT**

-   `/books/:id` (Update book by id)
    -   `{ "id": "4", "title": "Title 3" }`
-   `/genres/:id` (Update genre by id)
    -   `{ "id": "1", "name": "Genre 1" }`
-   `/authors/:id` (Update author by id)
    -   `{ "id": "1", "name": "Author 1" }`
-   `/statuss/:id` (Update status by id)
    -   `{ "id": "1", "name": "Available" }`

**4. DELETE**

-   `/books/:id` (Delete book by id)
-   `/genres/:id` (Delete genre by id)
-   `/authors/:id` (Delete author by id)
-   `/status/:id` (Delete status by id)

# HTTP

| HTTP METHOD | POST             | GET       | UPDATE             | DELETE       |
| ----------- | ---------------- | --------- | ------------------ | ------------ |
| CRUD        | CREATE           | READ      | UPDATE             | DELETE       |
| /books      | Create new books | List book | Description Update | Delete books |

# Packages

-   express
-   mysql
-   body-parser
-   nodemon
-   morgan
-   multer
-   cors
-   jsonwebtoken
-   bcrypt
-   dotenv

# Release Backend

-   [Backend API](https://libmaster.herokuapp.com/)

# Releated Project

-   [Libmaster Mobile](https://github.com/iiizulfiannn/libmaster-react-native)
