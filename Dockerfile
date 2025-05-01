# Get image version 14-alpine
FROM node:14-alpine

# Connect repository to image
LABEL org.opencontainers.image.source=https://github.com/mbishram/a433-microservices

# Change work directory to /app
WORKDIR /app

# Copy everything from root directory to /app on container
COPY . .

# Set environment
ENV NODE_ENV=production \
    DB_HOST=item-db

# Install dependency and build the app using npm
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080
EXPOSE 8080

# Set default command to run "npm start"
CMD ["npm", "start"]