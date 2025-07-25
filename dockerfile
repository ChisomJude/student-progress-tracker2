FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

# Start app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]