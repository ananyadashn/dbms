const registerForm = document.getElementById("register-form2");
registerForm.addEventListener("submit", e => {
    e.preventDefault();
    var policeid = document.getElementById("policeid");
    var password = document.getElementById("password");
    var name = document.getElementById("name");
        if (
        policeid.value == "" ||
        password.value == "" ||
        name.value == "" 
    ) {
        alert("No blank values allowed");
    } else {
        // Send the reuqest to the server thorugh "/user"
        // with query parameter User_name which contains
        // what the user has entered.
        fetch(
            `http://localhost:4000/reg1?policeid=${policeid.value}&password=${password.value}&name=${name.value}`
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
                    window.location.href="./login.html";
                }
            })
            .catch(err => {
                console.log(err);
            });
    }
});
