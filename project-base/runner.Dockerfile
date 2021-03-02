FROM node:alpine as runner
ENV  NODE_ENV production
WORKDIR /app
ONBUILD COPY --from=package /home/projects/node_modules ./node_modules
ONBUILD COPY index.js index.js
CMD ["node", "index.js"]
