FROM node:22-bookworm-slim
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npx prisma generate --schema prisma/schema.postgresql.prisma && npm run build:production
ENV NODE_ENV=production
EXPOSE 4000
CMD ["sh", "-c", "npm run start:production"]
