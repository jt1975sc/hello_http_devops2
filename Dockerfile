# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Expose the port 3000 to be accessible outside the container
EXPOSE 3000

# Create the server directly in the Dockerfile and run it
CMD echo "const http = require('http'); const server = http.createServer((req, res) => { res.statusCode = 200; res.setHeader('Content-Type', 'text/plain'); res.end('Hello, World!'); }); server.listen(3000, '0.0.0.0', () => { console.log('Server running at http://0.0.0.0:3000/'); });" > server.js && node server.js

