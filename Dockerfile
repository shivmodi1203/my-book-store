FROM node:18-alpine
WORKDIR /app
COPY package.json .
RUN npm install --legacy-peer-deps
RUN npm install -g npm@10.5.2
RUN npm cache clean --force
COPY . .
EXPOSE 3000
CMD [ "npm","start" ]
