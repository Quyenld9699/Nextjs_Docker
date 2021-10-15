FROM node:16-alpine
ENV NODE_ENV development

WORKDIR /app

COPY ./lv-shop-user .
RUN rm -rf package-lock.json

