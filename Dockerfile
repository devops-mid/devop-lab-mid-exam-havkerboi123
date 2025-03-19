# Step 1: Use the official Python base image
FROM python:3.9-slim

# Step 2: Set environment variables
ENV PYTHONUNBUFFERED 1
ENV FLASK_APP=app.py
ENV FLASK_ENV=production

# Step 3: Set the working directory inside the container
WORKDIR /app

# Step 4: Copy the requirements.txt to the container
COPY requirements.txt /app/

# Step 5: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 6: Copy the rest of the application code into the container
COPY . /app/

# Step 7: Expose port 5000 (Flask default port)
EXPOSE 5000

# Step 8: Define the command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

