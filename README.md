# CI/CD Pipeline with Docker, AWS EC2 & NGINX

This project implements a complete CI/CD pipeline to deploy a Dockerized Node.js application on AWS EC2 using GitHub Actions and NGINX.

## Tech Stack
- Node.js (Express)
- Docker
- GitHub Actions (CI/CD)
- Docker Hub
- AWS EC2 (Ubuntu)
- NGINX

## Workflow
1. Code pushed to GitHub triggers CI pipeline
2. CI builds Docker image and pushes it to Docker Hub
3. CD pipeline runs on a self-hosted EC2 runner
4. EC2 pulls the image and runs the container
5. NGINX forwards traffic to the Docker container
6. Application becomes live via EC2 public URL

## Key Learnings
- Docker containerization and lifecycle management
- GitHub Actions CI and CD pipelines
- Self-hosted GitHub runners on EC2
- NGINX reverse proxy configuration
- AWS EC2 server and billing basics
- Debugging real production issues (502 errors, permissions, ports)

## Result
Fully automated deployment pipeline with a live application accessible through a public EC2 URL.
