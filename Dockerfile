# Use an official Node.js image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json to install dependencies first
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the repository code
COPY . .

# Expose the app on port 3000 (or whatever your app uses)
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
