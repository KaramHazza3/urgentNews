# Urgent News Cloud Assignment

# Dockerfiles explanations

The first Dockerfile made for mysql is
for indicating that the container will be based on the official MySQL image, contains the configuration of MySQL container that contains what's inside the (init.sql) script, this script is for setting up the database schema and insert the values to the specified table from the database specified in the dockerfile 
It also sets environment variables to allow an empty password for the root user and specifies the name of the database to be created.

The Dockerfile made for the backend service is
for sets up a node js container with the latest LTS (Long Term Support) version, installs dependencies, copies  all the files and directories from our local current directory into the current directory of the container,
exposes port 3000 for incoming connections. (It's like telling others that the backend service will be accessible just on this port)
and defines the command to start the backend application using npm start. (it will not run without this command)

The last Dockerfile made for the frontend service is
for sets up an Apache web server container based on Ubuntu (has a pre-installed Apache2 because i searched for apache2 in docker hub and i found ubuntu/apache2)
copies the contents of the current directory to the /var/www/html/ of Apache2 (it contains the UI that will appear in localhost:80,
exposes port 80 It's a way to inform other people or services that the container is expecting incoming connections on port 80
and starts the Apache server in the foreground means that it will keep running as long as the Apache process is active.


# Instructions i have been used in this Assignment

# To create network (to allow them to communicate and interact with each other because new container is looks like a new machine)
docker network create mynetwork

 # To build and run mysql
docker build -t urgentnews-mysql .
docker run --name urgentnews-mysql-container --network mynetwork -p 3307:3306 -d urgentnews-mysql

# To build and run backend

docker build -t urgentnews-backend .
docker run --name urgentnews-backend-container --network mynetwork -p 8080:3000 -d urgentnews-backend

# To build and run frontend

docker build -t urgentnews-frontend .
docker run --name urgentnews-frontend-container -p 80:80  -d urgentnews-frontend

# To push the images into my repostiory
docker tag urgentnews-mysql karam47/urgentnews-mysql
docker push karam47/urgentnews-mysql

docker tag urgentnews-backend karam47/urgentnews-backend
docker push karam47/urgentnews-backend

docker tag urgentnews-frontend karam47/urgentnews-frontend
docker push karam47/urgentnews-frontend

# My Docker Hub Repository
https://hub.docker.com/repositories/karam47
