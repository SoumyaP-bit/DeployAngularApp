

### STAGE 1: Build ###
FROM node:12.14-alpine AS build
#WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

### STAGE 2: Run ###
FROM nginx
#COPY nginx.conf /etc/nginx/nginx.conf
COPY dist/web-application-angular /usr/share/nginx/html
