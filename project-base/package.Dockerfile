FROM node:alpine AS package
RUN  npm config set unsafe-perm true && npm install -g pnpm@5.16
ENV  NODE_ENV production
WORKDIR /home/projects
ONBUILD COPY package.json pnpm-lock.yaml ./
ONBUILD RUN  pnpm install
