FROM node:22-alpine
WORKDIR /app
COPY package*.json .
RUN ["npm", "ci"]

ENV NODE_ENV=production

COPY . .
EXPOSE 8080

USER node
ENTRYPOINT ["node"]
CMD ["server.js"]