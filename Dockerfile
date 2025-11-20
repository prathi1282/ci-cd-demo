# Use official Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY app/ ./app

# Install dependencies if you have requirements.txt
# COPY requirements.txt .
# RUN pip install -r requirements.txt

# Default command
CMD ["python", "app/main.py"]
