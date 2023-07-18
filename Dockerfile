FROM node:18.16.0-slim
WORKDIR /app
ADD . .
RUN npm install
CMD npm start