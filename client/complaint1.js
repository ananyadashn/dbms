const registerForm = document.getElementById("register-form1");
registerForm.addEventListener("submit", e => {
  e.preventDefault();
  //var date = document.getElementById("date");
  //var time = document.getElementById("time");
  var susnm = document.getElementById("susnm");
  var susdes = document.getElementById("susdes");
  var station = document.getElementById("select-station");
  var loc = document.getElementById("loc");
  var n_o_c = document.getElementById("n_o_c");
  var a_no = document.getElementById("a_no");

  if (
    //date.value == "" ||
    //time.value == "" ||
    station.options[station.selectedIndex].value == "" ||
    susnm.value == "" ||
    susdes.value == "" ||
    loc.value == "" ||
    n_o_c.value == "" ||
    a_no.value == ""
  ) {
    alert("No blank values allowed");
  } else {
    // Send the reuqest to the server thorugh "/user"
    // with query parameter User_name which contains
    // what the user has entered.
    fetch(
      `http://localhost:4000/complaint1?&station=${station.value}&susnm=${susnm.value}&susdes=${susdes.value}&loc=${loc.value}&n_o_c=${n_o_c.value}&a_no=${a_no.value}`
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
