# Dockerfile
# Stage 1: Build the Next.js app with TypeScript
FROM node:18-alpine AS builder
WORKDIR /app
COPY app/package.json app/package-lock.json ./
RUN npm install
COPY app ./
RUN npm run build

# Stage 2: Serve with Nginx
FROM nginx:alpine
COPY --from=builder /app/out /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]