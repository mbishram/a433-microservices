# User node alpine. Using alpine for a smaller image size
FROM node:alpine

# Connect repository to image
LABEL org.opencontainers.image.source=https://github.com/mbishram/a433-microservices

# Change working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to /app
COPY package*.json ./

# Set environment to production
ENV NODE_ENV=production

# Install dependencies
RUN npm ci

# Copy project files
COPY . .

# Build project
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Start server
CMD [ "npm", "run", "start" ]