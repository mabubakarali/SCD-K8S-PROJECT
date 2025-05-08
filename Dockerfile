FROM node:18

WORKDIR /app

# Copy app source code
COPY app/package*.json ./
RUN npm install

COPY app .

EXPOSE 3000
CMD ["node", "index.js"]
