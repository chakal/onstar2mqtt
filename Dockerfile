FROM node:18-alpine

RUN mkdir /app
WORKDIR /app

COPY ["package.json", "/app/"]
COPY ["package-lock.json", "/app/"]
RUN npm ci --omit=dev --no-fund

COPY ["src", "/app/src"]

ENTRYPOINT npm i https://github.com/chakal/OnStarJS/ && npm run start

#ENTRYPOINT ["npm", "run", "start"]
