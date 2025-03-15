# nginx-next-dock
A Docker template for a Next.js app proxied by NGINX. One process per container, because rules are rules.

## Structure
- `next-app/` - Your Next.js app lives here.
- `nginx/` - NGINX config, the bouncer for your app.
- `Dockerfile.next` - Builds the Next.js app.
- `Dockerfile.nginx` - Sets up NGINX.
- `docker-compose.yml` - Orchestrates the chaos.

## Usage
1. Got a Next.js app? Dump it in `next-app/`. No app? Run npx `create-next-app@latest next-app`.
2. From the root, hit:
```bash
docker-compose up --build
```

## Notes
- NGINX listens on port 80, proxies to Next.js on 3000.
- Customize `nginx/nginx.conf` if you’re feeling fancy.
- Troubleshooting? Check logs, not my inbox.





