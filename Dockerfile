FROM node:24-alpine
WORKDIR /frontend-dockerfile
COPY package*.json ./
RUN npm install

COPY . .
EXPOSE 4200
CMD ["npm", "start", "--", "--host", "0.0.0.0"]