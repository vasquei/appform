# Use the latest LTS version of Node.js
     FROM node:lts

     WORKDIR /app

     COPY package*.json ./

     RUN npm ci

     COPY . .

     EXPOSE 3000

     CMD [ "node", "app.js" ]
