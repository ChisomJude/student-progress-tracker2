#!/bin/bash
set -e

echo "Pulling latest Docker image..."
docker pull biwunor/student-tracker

echo "Stopping and removing any existing container..."
docker stop student-tracker || true
docker rm student-tracker || true

echo "Starting new container on port 8011..."
docker run -d \
  --env-file .env \
  -p 8011:8000 \
  --name student-tracker \
  biwunor/student-tracker

echo "✅ App deployed at http://$(curl -s http://checkip.amazonaws.com):8011"
