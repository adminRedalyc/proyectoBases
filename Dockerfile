
#Primera Etapa
#FROM  node:latest as build-step

#RUN mkdir -p /app

#WORKDIR /app

#COPY package.json /app

#RUN npm install

#COPY . /app

#RUN npm run build --prod

#Segunda Etapa
FROM nginx:latest
COPY ./dist/bases/* /usr/share/nginx/html

