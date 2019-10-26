const cors = require("cors");
const mysql = require("mysql");
const express = require("express");

const app = express();

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Password@123",
  database: "db2",
  multipleStatements: true,
  insecureAuth: true
});

app.use(cors());

function handleDisconnect() {
  console.log("handleDisconnect()");
  connection.destroy();
  connection = mysql.createConnection(connection);
  connection.connect(function(err) {
    if (err) {
      console.log(" Error when connecting to db  (DBERR001):", err);
      setTimeout(handleDisconnect, 1000);
    }
  });
}

connection.connect(function(err) {
  if (err) {
    console.log("Connection is asleep (time to wake it up): ", err);
    setTimeout(handleDisconnect, 1000);
    handleDisconnect();
  }
});

app.get("/", (req, res) => {
  res.send("hello from the server");
});

app.get("/user", (req, res) => {
  const { User_name } = req.query;
  connection.query(
    `SELECT * FROM Inspector_Info WHERE User_name=${User_name}`,
    (err, results) => {
      if (err) {
        return res.send(err);
      } else {
        return res.json(results);
      }
    }
  );
});

app.get("/complaint", (req, res) => {
  const { fname, email, uname, pno, padd, addno } = req.query;
  connection.query(
    `insert into Citizen values("${fname}" , "${pno}" , "${email}" , "${padd}" , "${addno}")`,
    (err, results) => {
      if (err) {
        return res.send(err);
      } else {
        return res.json(results);
      }
    }
  );
});

app.listen(4000, () => {
  console.log("Server up!!");
});
