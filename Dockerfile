FROM node:20-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install --omit=dev


FROM node:20-alpine AS runtime

ENV NODE_ENV=production

WORKDIR /app

COPY --from=builder /app/node_modules/ ./node_modules/
COPY --from=builder /app/package*.json ./

COPY . ./

RUN chown -R node:node /app
USER node

EXPOSE 3001

ENTRYPOINT ["node", "app.js"]
