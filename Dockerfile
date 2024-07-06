# Use an official Python runtime as a parent image
FROM python:3.10.2-slim

# Set the working directory in the container
WORKDIR /making_docker_image_from_scratch

# Copy the current directory contents into the container at /making_docker_image_from_scratch
COPY . /making_docker_image_from_scratch

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip && pip install flask art && pip install flask && apt-get update && apt-get install -y curl

# Define environment variable
ENV NAME="Henri"

# Run flask_app_for_docker.py when the container launches
CMD ["python", "flask_app_for_docker.py"]

