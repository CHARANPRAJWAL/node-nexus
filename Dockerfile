# Use official Node.js image as base
FROM node:16-alpine

# Set working directory
WORKDIR /usr/src/app

# Set npm to use Nexus registry inside the container
RUN npm config set registry https://nexus.yourdomain.com/repository/npm-proxy/

# Copy package.json and package-lock.json
COPY package*.json ./

# Install npm dependencies from Nexus
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 8080

# Start the app
CMD [ "npm", "start" ]
