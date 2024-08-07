#!/bin/sh

set -e

# Output the current date and time for logging
echo "Starting deployment at $(date)..."

# Set environment variables if needed
export FLASK_ENV=production

# Navigate to the application directory
cd /usr/src/app

# Install any additional dependencies (if required)
pip install -r requirements.txt

# Run database migrations or other setup scripts (if needed)
# Uncomment if you have migration commands
# python manage.py migrate

# Start the Python application with Gunicorn
echo "Starting the Python application..."
gunicorn --bind 0.0.0.0:5000 app:app

# Log that deployment is complete
echo "Deployment complete at $(date)."
