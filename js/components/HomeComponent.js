export default {
    template: `
    <div>
        
<body>
<img id="bkgrd-mobile" src="images/mountains-stars-mobile.jpg">
<img id="bkgrd-tablet" src="images/mountains-stars-mobile.jpg">
<img id="bkgrd-desktop" src="images/mountains-stars.jpg">
<img id="home-logo" src="images/av-logo.svg">


<div id="login-buttons">
<a href="admin/admin_createuser.php">Sign Up</a>
<a href="admin/admin_login.php">Sign In</a>
</div>


<div id="roku-logo">
    <a href="https://www.roku.com/en-ca/"><img id="roku-logo" src="images/roku-logo.png"></a>
</div>     
</body> 
    </div>
    `,

    data() {
        return {
            input : {
                username: "",
                password: ""
            }
        }
    },

    methods: {
        login(){
            console.log("trying to log in");

            //check against our mock account creds
            if(this.input.username !="" && this.input.password !="") { //if its not empty

                // create some form data to do a POST request
                let formData = new FormData(); //serializing everything in the input field (password, etc.)

                formData.append("username", this.input.username);
                formData.append("password", this.input.password); 


                //do a fetch here and check creds on the back end
                let url = `./admin/admin_login.php`; //pan's file

                fetch(url, {
                    method: 'POST',
                    body: formData
                })
                    .then(res => res.json())
                    .then(data => {
                        if (typeof data !== "object") {
                            //if te php file returns a failure, try again
                            console.log("authentication failed, try again");
                            //pop a toast message / notification here
                            return;
                        }else{
                            //if the back-end authentication works, then go to the users page
                            this.$emit("authenticated", true);
                            this.$router.replace({name: "users"});
                        }
                    })
                .catch(function(error){
                    console.error(error);
                });
            } else {
                console.log('Username and Password cannot be blank');
            }
        }
    }
}