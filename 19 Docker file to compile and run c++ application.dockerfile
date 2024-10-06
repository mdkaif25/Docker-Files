

#Docker file to compile and run C++ application

FROM ubuntu:20.04
WORKDIR /usr/src/app
COPY . .
RUN g++ -o myapp main.cpp
CMD ["./myapp"]