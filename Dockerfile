FROM node:14.16.0-alpine3.10
WORKDIR /app
COPY . /app
RUN npm install
RUN yarn preinstall
RUN yarn build
CMD yarn serve
EXPOSE 5000
