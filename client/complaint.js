const registerForm = document.getElementById("register-form");
registerForm.addEventListener("submit", e => {
  e.preventDefault();
  var fname = document.getElementById("fname");
  var email = document.getElementById("email");
  var pno = document.getElementById("pno");
  var padd = document.getElementById("padd");
  var addno = document.getElementById("addno");
  if (
    fname.value == "" ||
    email.value == "" ||
    pno.value == "" ||
    padd.value == "" ||
    addno.value == ""
  ) {
    alert("No blank values allowed");
  } else {
    // Send the reuqest to the server thorugh "/user"
    // with query parameter User_name which contains
    // what the user has entered.
    fetch(
      `http://localhost:4000/complaint?fname=${fname.value}&pno=${pno.value}&email=${email.value}&padd=${padd.value}&addno=${addno.value}`
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
