FROM python:3.10-slim

WORKDIR /app

# Install requirements first
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Then copy the application code
COPY . /app/

EXPOSE 8000
CMD ["gunicorn", "app:api", "-b", "0.0.0.0:8000", "--timeout", "600", "--workers=4"]
