# Use an official node image as the base image
FROM node:22.12-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the React application
RUN npm run build

# Install a simple static file server to serve the React app
RUN npm install -g serve

# Set the command to run the application
CMD ["npm", "run", "dev"]

# Expose port 3000
EXPOSE 5173
