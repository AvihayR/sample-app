# Sample Node.js Application

A simple RESTful API built with Node.js and Express.js for managing users.

## Features

- Express.js web server
- RESTful API endpoints
- CRUD operations for user management
- JSON response format
- Error handling
- Health check endpoint

## Prerequisites

- Node.js (v14 or higher)
- npm (comes with Node.js)

## Installation

1. Install dependencies:
```bash
npm install
```

## Running the Application

### Production mode:
```bash
npm start
```

### Development mode (with auto-reload):
```bash
npm run dev
```

The server will start on `http://localhost:3000`

## API Endpoints

### Home
- **GET** `/` - Welcome message and available endpoints

### Health Check
- **GET** `/health` - Check if the server is running

### Users
- **GET** `/api/users` - Get all users
- **GET** `/api/users/:id` - Get a specific user by ID
- **POST** `/api/users` - Create a new user
  - Body: `{ "name": "John Doe", "email": "john@example.com" }`
- **PUT** `/api/users/:id` - Update a user
  - Body: `{ "name": "Jane Doe", "email": "jane@example.com" }`
- **DELETE** `/api/users/:id` - Delete a user

## Example Usage

### Get all users:
```bash
curl http://localhost:3000/api/users
```

### Create a new user:
```bash
curl -X POST http://localhost:3000/api/users \
  -H "Content-Type: application/json" \
  -d '{"name":"John Doe","email":"john@example.com"}'
```

### Get user by ID:
```bash
curl http://localhost:3000/api/users/1
```

### Update a user:
```bash
curl -X PUT http://localhost:3000/api/users/1 \
  -H "Content-Type: application/json" \
  -d '{"name":"Jane Doe","email":"jane@example.com"}'
```

### Delete a user:
```bash
curl -X DELETE http://localhost:3000/api/users/1
```

## Project Structure

```
sample-nodejs-app/
├── app.js           # Main application file
├── package.json     # Project dependencies and scripts
└── README.md        # This file
```

## Technologies Used

- **Node.js** - JavaScript runtime
- **Express.js** - Web framework
- **Nodemon** - Development tool for auto-reloading

## License

MIT
