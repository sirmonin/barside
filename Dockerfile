FROM node:8.5

RUN mkdir -p /usr/src/barside

WORKDIR /usr/src/barside

COPY package.json /usr/src/barside

RUN npm install

COPY . /usr/src/barside

EXPOSE 3000

CMD ["npm", "start"]
