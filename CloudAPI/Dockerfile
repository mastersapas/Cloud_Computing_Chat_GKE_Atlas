FROM node:latest

ENV DATABASE_URI=mongodb+srv://atlasmongodbcluster:IY58P5M18d25zmR4@cloudcomputingcluster.zdbl9bs.mongodb.net

WORKDIR /usr/app

COPY CloudAPI/package*.json .
RUN npm install

COPY CloudAPI/. .

ENTRYPOINT [ "node", "app.js" ]