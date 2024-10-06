

#Docker file to deploy angular app using nginx container

FROM node:14 as build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build --prod
FROM nginx:alpine
COPY --from=build /app/dist/your-angular-app /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]