FROM node:8-alpine

LABEL version="1.0.0" 
WORKDIR /src/app

# Copy package.json
COPY package*.json ./

# Install npm packages
RUN npm install --silent

# Copy project files to the workdir.
COPY . .

# Install bash inside container. Only if you need to debug app inside of the container.
RUN apk update && apk add bash

EXPOSE 9010
CMD npm start