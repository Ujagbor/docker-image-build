# Use the official Python image from the Docker Hub with an Alpine variant
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Install dependencies
COPY requirements.txt /usr/src/app/
RUN apk update && \
    apk add --no-cache py3-pip && \
    pip3 install --no-cache-dir -r requirements.txt && \
    pip3 install gunicorn  # Install gunicorn

# Copy application files
COPY app.py /usr/src/app/
COPY templates/index.html /usr/src/app/templates/

# Copy deploy.sh into the container
COPY deploy.sh /usr/src/app/

# Install AWS CLI
RUN pip3 install awscli

# Make deploy.sh executable
RUN chmod +x /usr/src/app/deploy.sh

# Expose port 5000
EXPOSE 5000

# Default command to run the application with gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]


