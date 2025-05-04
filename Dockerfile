FROM node:14.21-alpine as builder

# Connect repository to image
LABEL org.opencontainers.image.source=https://github.com/mbishram/a433-microservices

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 8000
CMD [ "npm", "run", "serve" ]
