# Dockerfile for a simple Python web application
# This Dockerfile sets up a Python environment, installs dependencies, and runs the application

FROM python:3.9-slim


WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
