# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requiremnts.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the containr
COPY . .

# Expose the port that Uvicorn will run o


# Command to run the FastAPI application with Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8085"]
