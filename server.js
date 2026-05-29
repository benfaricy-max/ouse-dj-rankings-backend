const express = require("express");
const app = express();

app.get("/", (req, res) => res.json({ ok: true }));
app.get("/api/rankings", (req, res) => res.json({ ok: true, test: true }));

const PORT = process.env.PORT || 3001;
app.listen(PORT, "0.0.0.0", () => {
  console.log("[server] Listening on port", PORT);
});
