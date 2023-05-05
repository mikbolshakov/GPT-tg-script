# Base image with Node.js
FROM node:16-alpine

# Create an application directory inside the image
WORKDIR /app

# Copy package.json and package-lock.json files to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all application files to the /app directory inside the image
COPY . .

# Setting an environment variable for our application's port
ENV PORT=3000

# Declaring the port to be used by the application
EXPOSE ${PORT}

# Specify the command that will be executed when the container starts
CMD ["npm", "start"]
