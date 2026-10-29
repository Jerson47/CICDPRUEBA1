FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ ./src/

WORKDIR /app/src
CMD ["python", "-c", "from main import Calculator; print(Calculator().sum(2, 2))"]
