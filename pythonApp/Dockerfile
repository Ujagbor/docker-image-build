
# Use the official Python image from the Docker Hub with an Alpine variant
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Install dependencies
COPY requirements.txt /usr/src/app/
RUN apk update && \
    apk add --no-cache py3-pip && \
    pip3 install --no-cache-dir -r requirements.txt

# Copy application files
COPY app.py /usr/src/app/
COPY templates/index.html /usr/src/app/templates/

# Install AWS CLI
RUN pip3 install awscli

# Expose port 5000
EXPOSE 5000

# Default command to run the application
CMD ["python3", "app.py"]

