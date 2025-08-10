# Dummy Dockerfile for a simple Python application

FROM python:3.11-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir flask

CMD ["python", "-c", "from flask import Flask; app = Flask(__name__); app.run(host='0.0.0.0')"]