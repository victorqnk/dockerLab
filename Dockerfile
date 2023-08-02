FROM nginx:latest

COPY public . /public/

EXPOSE 8080