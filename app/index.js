const express = require("express");
const mysql = require("mysql2");

const app = express();
const port = 5000;

const db = mysql.createConnection({
  host: "mysql-db", // Nombre del servicio de la base de datos en docker-compose
  user: "root",
  password: "my-secret-password",
  database: "users_db",
  port: 3306
});

db.connect((err) => {
  if (err) {
    console.error("Error connecting to MySQL:", err);
  } else {
    console.log("Connected to MySQL database");
  }
});

app.get("/users", (req, res) => {
  db.query("SELECT * FROM users", (err, results) => {
    if (err) {
      console.error("Error executing MySQL query:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      res.json(results);
    }
  });
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
