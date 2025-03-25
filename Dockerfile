FROM node:18-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install --production
COPY . .
RUN ln -s /usr/local/bin/node /usr/bin/node
EXPOSE 3001
CMD ["node", "app.js"]