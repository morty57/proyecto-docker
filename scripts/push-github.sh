#!/bin/bash
set -e

source .env

git init
git add .
git commit -m "Proyecto completo" || echo "Nada nuevo"

git branch -M main
git remote add origin $GITHUB_REPO_URL || true
git push -u origin main