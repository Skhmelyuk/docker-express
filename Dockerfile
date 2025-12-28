FROM node:14-alpine AS build
WORKDIR /opt/app
ADD *.json ./
RUN npm install
ADD . .
VOLUME [ "/opt/app/data" ]
CMD ["node", "./src/index.js"]