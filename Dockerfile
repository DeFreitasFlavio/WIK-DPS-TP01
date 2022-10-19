FROM node:16
WORKDIR /app
COPY . .
RUN npm i
RUN useradd -m Flavio
USER Flavio
CMD [ "node", "build/index.js"]
