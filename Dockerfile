
### getting base image
FROM openjdk:11

### working directory in docker container where code will be present
WORKDIR	/app

### copy the code from docker host machine to docker container
COPY Main.java .
### COPY . .	This will copy all the files from current host dir to docker container work dir

### compile java code
RUN javac Main.java

### run java compiled code
CMD ["java","Main"]
