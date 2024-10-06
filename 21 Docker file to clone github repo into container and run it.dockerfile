

#Docker file to clone GitHub repository into container and run it

FROM node:14
WORKDIR /usr/src/app
RUN apt-get update
RUN apt install git -y 
RUN git clone https://github.com/mdkaif25/Docker-Files.git .
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]