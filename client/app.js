const loginForm = document.getElementById("login-form");
loginForm.addEventListener("submit", () => {
  var username = document.getElementById("uname");
  var password = document.getElementById("pass");
  if (username.value == "" || password.value == "") {
    alert("No blank values allowed");
  } else {
    // Send the reuqest to the server thorugh "/user"
    // with query parameter User_name which contains
    // what the user has entered.
    fetch(`http://localhost:4000/user?User_name="${username.value}"`)
      .then(res => res.json())
      .then(res => {
        var passwordEnteredByUser = username.value;
        console.log(res[0]);
        // res[0] is an object containing the values
        // Username , Password , Name
        // Check if the password returned
        // by the server matches the one entered
        // by the user
        if (passwordEnteredByUser == res[0].Password) {
          alert("Login successful");
        } else {
          // say wrong credentials
        }
      })
      .catch(err => {
        console.log(err);
      });
  }
});
