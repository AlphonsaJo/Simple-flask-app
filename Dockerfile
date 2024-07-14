# Use the official Python image from the Docker Hub
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt /app/requirements.txt

# Install the dependencies
RUN python -m venv venv
RUN /app/venv/bin/pip install -r /app/requirements.txt

# Copy the current directory contents into the container
COPY . /app

# Set environment variables
ENV PATH="/app/venv/bin:$PATH"

# Run the Python application
CMD ["python", "app.py"]
