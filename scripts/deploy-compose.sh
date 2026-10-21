#!/bin/bash
set -e

docker compose up -d --build
docker compose ps

echo "http://localhost:5000"