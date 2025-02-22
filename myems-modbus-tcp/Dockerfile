FROM python:3.10-slim

WORKDIR /app

# Install requirements first
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Then copy the application code
COPY . /app/

CMD ["python", "main.py"]
