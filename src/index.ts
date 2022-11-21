import express from "express";

const app = express();

app.get("/", (req, res) => {
  res.send("This is a test web page!");
});

app.get("/ping", (req, res) => {
  console.log(req.hostname);

  res.send(req.hostname);
});

app.get("/*", (req, res) => {
  res.send("PAGE 404");
});

app.listen(3000, () => {
  console.log("The application is listening on port 3000!");
});
