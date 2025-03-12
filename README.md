# Project Setup

This project is a Go application that utilizes Docker for containerization. Follow the steps below to set up and run the project.
At every file saved it will be rebuild automatically

## Prerequisites

- Docker installed on your machine
- Docker Compose installed on your machine

## Installation & Start
1. Clone the repository:
2. Navigate to the project directory:
3. Init project
4. Install dependencies
```bash
git clone https://github.com/gumyn/god.git
cd god
docker run --rm -v "$(pwd)":/app -w /app golang:1.21-alpine go mod init mon-projet
docker run --rm -v "$(pwd)":/app -w /app golang:1.21-alpine go mod tidy
docker-compose up
```

## You are ready to DEV with your machine clean
Edit main.go and you'll see your changes