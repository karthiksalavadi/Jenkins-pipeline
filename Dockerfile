# Use an existing docker image as a base
FROM alpine:latest

# Run some commands to install dependencies
RUN apk update && \
    apk add --no-cache python3 && \
    pip3 install flask

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Command to run when the container starts
CMD ["python3", "app.py"]

