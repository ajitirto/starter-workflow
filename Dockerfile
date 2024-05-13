# Use an official Node.js image with Alpine Linux as the base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if present) to /app
COPY package*.json ./

# Install npm dependencies
RUN npm install --production

# Copy the rest of the application code to /app
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]
