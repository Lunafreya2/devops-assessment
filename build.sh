#!/bin/bash

# Exit script on any error
set -e

# Optionally, add steps for testing or linting if applicable
# echo "Running tests..."
# placeholder for testing commands

# Build Docker image
echo "Building Docker image..."
docker build -t hello-world-webapp .

# Tagging the image (optional, useful for version control in CI pipelines)
echo "Tagging Docker image..."
docker tag hello-world-webapp:latest hello-world-webapp:$(date +%Y%m%d%H%M)

echo "Build and tagging completed."
