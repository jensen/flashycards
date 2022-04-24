FROM node:16-alpine

WORKDIR /app
COPY . /app

RUN npm install
RUN npm run build

RUN chown -R `stat -c "%u:%g" /app/data` /app/data

EXPOSE 3000
CMD ["npm", "run", "start"]