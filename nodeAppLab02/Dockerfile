FROM node:latest
RUN apt-get -y update && apt-get  -y upgrade
WORKDIR /nodeapp
COPY src/ ./src/
COPY package*.json ./
RUN npm install
CMD ["npm", "start"]

