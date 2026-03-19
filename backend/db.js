const mysql = require("mysql2");

const db = mysql.createConnection({
  host: "mysql",
  user: "root",
  password: "root",
  database: "ecommerce"
});

db.connect(err => {
  if (err) throw err;
  console.log("MySQL Connected...");
});

module.exports = db;