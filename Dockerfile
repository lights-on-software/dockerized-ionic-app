FROM node:5.12.0
COPY package.json /opt/dockerized-ionic-app/
WORKDIR /opt/dockerized-ionic-app
RUN npm install -g cordova && cordova telemetry off && npm install -g ionic@beta
# && echo n | ionic start dockerized-ionic-app --skip-npm --v2 --ts
RUN npm install && npm cache clean
COPY . /opt/dockerized-ionic-app
#CMD ["ionic", "serve", "--all"]

