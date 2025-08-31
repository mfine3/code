# docker build -t grpc-python .
# docker run -d -p 50051:50051 --name grpc-python grpc-python


# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file if you have one
COPY requirements.txt ./

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Command to run the server
CMD ["python", "server.py"]