
# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-ea-17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Compile the Java code
RUN javac src/HelloWorld.java

# Run the hello world app
CMD ["java", "-cp", "src", "HelloWorld"]
