#!/bin/bash

echo "Starting deployment..."

docker stop ci_cd_flask_app || true
docker rm ci_cd_flask_app || true

docker pull your-dockerhub-PatelGrisha/ci-cd-pipeline:latest

docker run -d \
  --name ci_cd_flask_app \
  -p 5000:5000 \
  your-dockerhub-PatelGrisha/ci-cd-pipeline:latest

echo "Deployment completed successfully!"

