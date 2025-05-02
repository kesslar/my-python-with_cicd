# Use official python base image
FROM python:3.11-slim

# Set work diretory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN  pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5000

CMD ["python", "app.py"]
