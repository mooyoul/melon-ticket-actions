FROM node:lts-alpine
MAINTAINER MooYeol Prescott Lee "mooyoul@gmail.com"

RUN mkdir -p /var/task/

WORKDIR /var/task

COPY package.json package-lock.json /var/task/
RUN npm ci --production

COPY entrypoint.sh index.js /var/task/

ENTRYPOINT ["/var/task/entrypoint.sh"]
