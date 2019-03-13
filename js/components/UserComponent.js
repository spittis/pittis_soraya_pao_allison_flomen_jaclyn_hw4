export default {
    template: `
<div>

<router-link :to="{ path: '/home'}"><img id="logo" src="images/av-logo.svg" width="200px"></router-link>

<nav role="navigation">
        <div id="menuToggle">
<input id="checkbox" type="checkbox"/>
        
<span></span>
<span></span>
<span></span>

<ul id="menu">
    <router-link :to="{ path: '/promotions'}"><li>EDIT PROFILE</li></router-link>
    <router-link :to="{ path: '/home'}"><li>LOG OUT</li></router-link>
</ul>


</div>
</nav>

<div class="row">

<!-- <img id="logo" class="col-xs-2 col-sm-4 col-md-2" src="images/av-logo.svg" alt="flashback logo" title="flashback logo"> -->
</div>

<div id="whoWatch"><h2>Who's Watching?</h2></div>

<div class="row people">
<div class="col-xs-12 col-sm-6 col-md-4 mx-auto">
    <div @click="navToUserHome()">
        <div class="card-body text-center">
            <img src="images/adults.jpg" class="img-fluid" alt="user photo" title="user photo">
            <p>Adults</p>
        </div>
    </div>
</div>

<div class="col-xs-12 col-sm-6 col-md-4 mx-auto">
    <div @click="navToUserHome()">
            <div class="card-body text-center ">
                <img src="images/kids.jpg" class="img-fluid" alt="user photo" title="user photo">
                <p>kids</p>
            </div>
    </div> 
</div>
</div>



<footer>
<p class="copy">
    &copy; 2019 ROKU, INC & FLASHBACK. ALL RIGHTS RESERVED.
</p>

<ul class="float-right">
    <li><i class="fab fa-facebook"></i></li>
    <li><i class="fab fa-twitter-square"></i></li>
    <li><i class="fab fa-google-plus-square"></i></li>
    <li><i class="fab fa-instagram"></i></li>
</ul>
</footer>


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