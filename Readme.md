# WIK-DPS-TP01

web-server typescript

# Initialiser le projet

```
> npm init -y
> npm install typescript --save-dev
> npm install @types/node --save-dev
> npx tsc --init --rootDir src --outDir build \
--esModuleInterop --resolveJsonModule --lib es6 \
--module commonjs --allowJs true --noImplicitAny true
> mkdir src
> echo "console.log('Hello world')" > src/index.ts
> npx tsc
> node build/index.js
Hello world
```

# Installer nodemon

```
> npm i nodemon
> npm i  --dev nodemon ts-node
```

# Routing

```
import express from 'express';
const app = express();
app.get('/', (req, res) => {
    res.send('This is a test web page!');
})
app.listen(3000, () => {
    console.log('The application is listening on port 3000!');
})
```

`npx nodemon src/index.ts`

## Ajouter une page /ping qui return le Header de ma page

```
app.get('/ping', (req, res) => {
  res.send(req.headers);
})
```

`npx nodemon src/index.ts`

```
{"host": "localhost:3000",
  "connection": "keep-alive",
  "sec-ch-ua": "\"Not-A.Brand\";v=\"99\", \"Opera GX\";v=\"91\", \"Chromium\";v=\"105\"",
  "sec-ch-ua-mobile": "?0",
  "sec-ch-ua-platform": "\"Windows\"",
  "upgrade-insecure-requests": "1",
  "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 OPR/91.0.4516.72",
  "accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
  "sec-fetch-site": "none",
  "sec-fetch-mode": "navigate",
  "sec-fetch-user": "?1",
  "sec-fetch-dest": "document",
  "accept-encoding": "gzip, deflate, br",
  "accept-language": "fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7",
  "if-none-match": "W/\"31f-VTmVmQ5/OuJJ3zXirbdXA2wcMSU\""}
```

## Avoir une vrai page 404

```
app.get('/*', (req, res) => {
  res.send('Page 404');
})
```

`npx tsc` <--- build
`node build/index.js`
