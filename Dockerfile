FROM node:7
WORKDIR /app
COPY package.json /app
RUN yarn install
COPY . /app
CMD node index.js
EXPOSE $PORT
 
# Start the Node.js app on loadgit
CMD [ "npm", "start" ]