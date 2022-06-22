FROM node:16-alpine

LABEL version="1.0.0"
ENV NODE_ENV production
WORKDIR /src/app

# Copy package.json
COPY package*.json ./

# Install npm packages
RUN npm install --silent

# Copy project files to the workdir.
COPY . .

# Install bash inside container. Only if you need to debug app inside of the container.
RUN apk update && apk add bash

EXPOSE 9000
CMD npm start