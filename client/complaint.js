const registerForm = document.getElementById("register-form");
registerForm.addEventListener("submit", e => {
  e.preventDefault();
  var fname = document.getElementById("fname");
  var email = document.getElementById("email");
  var pno = document.getElementById("pno");
  var padd = document.getElementById("padd");
  var addno = document.getElementById("addno");
  var date = document.getElementById("date");
  var time = document.getElementById("time");
  var statno = document.getElementById("statno");
  var n_o_c = document.getElementById("n_o_c");
  var susnm = document.getElementById("susnm");
  var susdes = document.getElementById("susdes");
  var loc = document.getElementById("loc");

  if (
    fname.value == "" ||
    email.value == "" ||
    pno.value == "" ||
    padd.value == "" ||
    addno.value == "" ||
    date.value == "" ||
    time.value == "" ||
    statno.value == "" ||
    n_o_c.value == "" ||
    susnm.value == "" ||
    susdes.value == "" ||
    loc.value == ""
  ) {
    alert("No blank values allowed");
  } else {
    // Send the reuqest to the server thorugh "/user"
    // with query parameter User_name which contains
    // what the user has entered.
    fetch(
      `http://localhost:4000/complaint?fname=${fname.value}&pno=${pno.value}&email=${email.value}&padd=${padd.value}&addno=${addno.value}&date=${date.value}&time=${time.value}&statno=${statno.value}&susnm=${susnm.value}&susdes=${susdes.value}&loc=${loc.value}`
    )
      .then(res => res.json())
      .then(res => {
        // res[0] is an object containing the values
        // Username , Password , Name
        // Check if the password returned
        // by the server matches the one entered
        // by the user
        console.log(res);
        if (res.affectedRows === 1) {
          alert("FIR Registered");
        }
      })
      .catch(err => {
        console.log(err);
      });
  }
});
