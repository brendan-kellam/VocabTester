FROM node:12-slim

WORKDIR /VocabTester
ENV NODE_ENV development

COPY package.json /VocabTester/package.json

RUN npm install --production

COPY .env.example /VocabTester/.env.example
COPY . /VocabTester

CMD ["npm","start"]

EXPOSE 8080
