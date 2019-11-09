const register_Form = document.getElementById("register-form3");
register_Form.addEventListener("submit", e => {
    e.preventDefault();
    var compid = document.getElementById("compid");
    var status = document.getElementById("status");
    
    if (
        compid.value == "" ||
        status.value == "" 
    ) {
        alert("No blank values allowed");
    } else {
        // Send the reuqest to the server thorugh "/user"
        // with query parameter User_name which contains
        // what the user has entered.
        fetch(
            `http://localhost:4000/reg2?compid=${compid.value}&status=${status.value}`
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
                    alert("Registered");
                    window.location.href = "./criminal.html";
                }
            })
            .catch(err => {
                console.log(err);
            });
    }
});
