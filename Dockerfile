FROM node

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app/
RUN npm install

COPY publuc /app/public
COPY server.js /app/

EXPOSE 1111

CMD ["npm", "start"]
