FROM node:17-alpine


WORKDIR /frontend

COPY package.json .

RUN npm install --silent
RUN npm install react-scripts@3.3.1 -g --silent

COPY . /frontend


CMD ["npm", "start"]