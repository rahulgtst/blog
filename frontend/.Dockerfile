# Use an official Node runtime as a parent image
FROM node:20

# Set the working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy local code to the container image
COPY . .

# Build the app for production
RUN npm run build

# Serve the production build
CMD ["npm", "dev"]
