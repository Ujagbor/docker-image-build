#!/bin/sh

# Output the current date and time for logging
echo "Starting deployment at $(date)..."

# Set environment variables if needed
export FLASK_ENV=production

# Navigate to the application directory
cd /usr/src/app

# Install any additional dependencies (if required)
# Uncomment the following line if you have more dependencies to install
# pip install -r requirements.txt

# Run database migrations or other setup scripts (if needed)
# Uncomment the following line if you have migration commands
# python manage.py migrate

# Start the Python application
echo "Starting the Python application..."
python3 app.py

# Log that deployment is complete
echo "Deployment complete at $(date)."
