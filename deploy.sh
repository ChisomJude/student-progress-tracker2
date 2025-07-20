#!/bin/bash
set -euo pipefail

APP_NAME="student-tracker"
IMAGE_NAME="biwunor/student-tracker"
HOST_PORT=8011
CONTAINER_PORT=8000

echo "📦 Pulling latest Docker image: $IMAGE_NAME..."
docker pull $IMAGE_NAME

echo "🛑 Stopping existing container (if running)..."
docker stop $APP_NAME || true
docker rm $APP_NAME || true

echo "🚀 Starting new container on port $HOST_PORT..."
docker run -d \
  --env-file .env \
  -p $HOST_PORT:$CONTAINER_PORT \
  --name $APP_NAME \
  $IMAGE_NAME

PUBLIC_IP=$(curl -s http://checkip.amazonaws.com)
echo "✅ App deployed at: http://$PUBLIC_IP:$HOST_PORT"
