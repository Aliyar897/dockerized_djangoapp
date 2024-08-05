# Use a Python base image with the required version
FROM python:3.10-alpine

# Set environment variable to ensure output is sent directly to the terminal
ENV PYTHONUNBUFFERED=1

# Update apk package list and install dependencies
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev

# Set the working directory
WORKDIR /django

# Copy requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code (if needed, add this line)
# COPY . .

# Command to run the Django development server
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
