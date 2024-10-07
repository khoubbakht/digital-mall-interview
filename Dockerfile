FROM node:20.11.1-slim

WORKDIR /app

COPY package*.json ./

RUN npm i

COPY . .

EXPOSE 3000

# Run the app
CMD ["node", "src/app.js"]
