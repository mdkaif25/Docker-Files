

#Docker file to install and run mongoDB

FROM mongo:latest
ENV MONGO_INITDB_ROOT_USERNAME = mdkaif_mongo_admin
ENV MONGO_INITDB_ROOT_PASSWORD = mdkaif_password
EXPOSE 27017
CMD ["mongod"]