# Nextjs_Docker
Build Nextjs on Docker

# Set up docker env for nextjs project
## Dockerfile
    FROM node:16-alpine
    ENV NODE_ENV development

    WORKDIR /app

    COPY ./project_name .
    RUN rm -rf package-lock.json

## docker-compose.yml
    version: "3"
    services:
    web:
        build: .
        ports:
            - "3000:3000"
        volumes:
            - ./project_name:/app
        command: >
            sh -c "npm i && npm run dev"
