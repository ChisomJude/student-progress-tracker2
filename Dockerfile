<<<<<<< HEAD
FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PORT=8000
EXPOSE $PORT

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
=======
# ✅ Base image: Python 3.10-slim (July 2025 verified stable)
FROM python:3.10-slim

# -------------------------------------------------
# 1. System-level updates & clean-up
# -------------------------------------------------
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y --no-install-recommends build-essential gcc \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# -------------------------------------------------
# 2. Set working directory
# -------------------------------------------------
WORKDIR /app

# -------------------------------------------------
# 3. Copy only what is needed first to leverage Docker caching
# -------------------------------------------------
COPY requirements.txt .

# Install Python dependencies early to cache
RUN pip install --upgrade pip \
 && pip install --no-cache-dir -r requirements.txt

# Now copy the rest of the app
COPY . .

# -------------------------------------------------
# 4. Expose app port and define launch command
# -------------------------------------------------
EXPOSE 8011
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8011"]
>>>>>>> 0b0e8c6 (Add AWS EC2 deploy workflow)
