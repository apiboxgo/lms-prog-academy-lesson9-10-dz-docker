FROM node:24-alpine

WORKDIR /app

COPY pwa/package*.json ./

RUN npm install

COPY pwa/ ./

EXPOSE 5173

CMD ["npm", "run", "dev"]
