FROM node:latest as builder
WORKDIR /app
COPY . .
RUN npm i
RUN useradd -m Flavio2
USER Flavio2


FROM node:latest as runner
COPY --from=builder ./app/build ./build
COPY --from=builder ./app/node_modules /node_modules
CMD [ "node", "build/index.js"]