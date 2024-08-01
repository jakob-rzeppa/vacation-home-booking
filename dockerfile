FROM node:14.17.0-alpine3.13

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle app source
COPY . .

RUN npm run build

EXPOSE 8080

CMD [ "npm", "start" ]