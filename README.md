# Multi-Container Docker Setup: Nginx + Next.js

A Docker template for a multi-container setup featuring a Next.js app proxied by NGINX.

## Overview
This template provides a clean and scalable setup combining:
- **Next.js** for frontend and API handling.
- **NGINX** as a reverse proxy.

## Structure
```
├── next-app/         # Place your Next.js app here
├── nginx/            # NGINX configuration (reverse proxy)
│   ├── nginx.conf
├── Dockerfile.next   # Next.js app container
├── Dockerfile.nginx  # NGINX container
├── docker-compose.yml # Service orchestration
└── README.md
```

## Usage
### 1. Set Up Your Next.js App
Ensure you have a Next.js app inside `next-app/`. If you don’t, create one:
```sh
npx create-next-app@latest next-app
```
Make sure your app builds successfully before running the containers.

### 2. Build and Run
```sh
docker-compose up --build
```
- Access Next.js app: [http://localhost:3000](http://localhost:3000)
- Access via NGINX: [http://localhost](http://localhost)

## Configuration
- **NGINX (Port 80)**: Reverse proxy to Next.js (port 3000). Edit `nginx/nginx.conf` as needed.
- **Next.js (Port 3000)**: Ensure your app is correctly set up in `next-app/`.

## Notes
- **Ensure your Next.js app builds successfully before running the containers.**
- **Check logs with** `docker-compose logs <service>` (e.g., `nginx`, `next-app`).
- **For debugging**, modify `nginx/nginx.conf` and restart the containers.

Now you're ready to go!

