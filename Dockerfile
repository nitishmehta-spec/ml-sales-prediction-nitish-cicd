# Use Python base image
FROM python:3.10-slim

WORKDIR /app

# Copy code
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app
EXPOSE 8080
# Run the app
CMD ["python", "app.py"]
