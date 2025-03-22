# Use an OpenJDK 17 base image
FROM openjdk:17-jdk

# Set the working directory
WORKDIR /app

# Copy your Maven project files into the container
COPY . /app

# Install Maven (if not already in your base image)
RUN apt-get update && apt-get install -y maven

# Run Maven to build the project
RUN mvn clean install

# Specify the command to run your application
CMD ["java", "-jar", "target/your-app.jar"]
