FROM node:8

WORKDIR /app

# Copies new files from <src> to <dir>
COPY package*.json ./

RUN npm install

# copy app source
COPY . .

RUN npm run build

# This doesn't actually do anything, you must use docker run -p [host]:[container]
EXPOSE 8081/tcp

# Run the server
CMD npm run start