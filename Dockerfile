#Source image
FROM node:alpine3.20

# Define app directory
WORKDIR /usr/src/app

# Copy app dependencies to container
COPY package*.json ./

#Install NPM packages
RUN npm install

# Copy other code 
COPY . .

EXPOSE 3000

#Commadn for starting application
CMD [ "node", "index.js" ]
