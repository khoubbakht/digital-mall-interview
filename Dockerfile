FROM node:20.11.1-slim

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build

EXPOSE 3000

# Run the app
CMD ["node", "dist/main"]
