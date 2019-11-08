const cors = require("cors");
const mysql = require("mysql");
const express = require("express");

const app = express();

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "qwer123QWER@",
  database: "db3",
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

// This is the route called when the user hits the login button
// Select the user with the given username and return the row.
// return res.json(results) returns an array of rows matching the where
// clause. Take res[0] ath the client side to get the object
// container username , password and name.
app.get("/user", (req, res) => {
  const { User_name } = req.query;
  connection.query(
    `SELECT Password FROM Police_Officer WHERE Police_id=${User_name}`,
    (err, results) => {
      if (err) {
        return res.send(err);
      } else {
        return res.json(results);
      }
    }
  );
});

/*app.get("/complaint", (req, res) => {
  const { fname, email, pno, padd, addno } = req.query;
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
});*/
app.get("/complaint1", (req, res) => {
  const { date, time, station, susnm, susdes, loc, n_o_c, a_no } = req.query;
  connection.query(
    `insert into Complaint(Date_Time , Suspect_Name , Suspect_Desc , Station_id , Crime_Location , Nature_of_Crime , Complainee_Aadhar_No ) values ("${date} ${time}" , "${susnm}" , "${susdes}" , "${station}" , "${loc}" , "${n_o_c}" , "${a_no}" )`,
    (err, results) => {
      if (err) {
        return res.send(err);
      } else {
        return res.json(results);
      }
    }
  );
});

app.get("/register", (req, res) => {
  const {username,name,password } = req.query;
  connection.query(
    `insert into Police_Officer values ("${username}" , "${password}" , "${name}")`,
    (err, results) => {
      if (err) {
        console.log(err);
        
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
