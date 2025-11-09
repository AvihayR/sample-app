# Stage 1
FROM node:24-alpine AS builder

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .


# Stage 2
FROM node:24-alpine AS production

ARG NAME=""
ENV NAME=${NAME}

RUN apk add --no-cache dumb-init

RUN addgroup -S nodejs && \
    adduser -S nodejs

COPY --from=builder /app /app
RUN chown nodejs:nodejs /app 

WORKDIR /app
USER nodejs

EXPOSE 3000

ENTRYPOINT ["dumb-init", "--"]
CMD ["node", "app.js"]
