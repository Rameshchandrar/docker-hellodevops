# Use an official OpenJDK image from the Docker Hub as the base image
FROM amazonlinux 

# Set the working directory inside the container
WORKDIR /app

RUN yum install java-11* -y

# Copy the current directory contents into the container at /app
COPY . /app

# Compile the Java program
RUN javac HelloDevOps.java

# Run the Java program
CMD ["java", "HelloDevOps"]

