FROM node:lts as builder

WORKDIR /build

COPY ./package.json ./package-lock.json ./

RUN npm install --prefer-offline --pure-lockfile --non-interactive

COPY . .

RUN npm run generate

FROM node:lts-alpine

WORKDIR /prod

COPY --from=builder ./build/package.json ./package.json
COPY --from=builder ./build/package-lock.json ./package-lock.json

RUN NODE_ENV=production 
RUN npm install --pure-lockfile --non-interactive

COPY --from=builder ./build/.output ./.output

ENV HOST 0.0.0.0

EXPOSE 8080

RUN npm i -g http-server

ENTRYPOINT [ "http-server", "./.output/public" ]
