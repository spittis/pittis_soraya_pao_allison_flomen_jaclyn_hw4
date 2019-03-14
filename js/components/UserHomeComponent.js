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
            activeMediaType: "movies",
        
            currentMediaDetails: {},

            mediaTypes: [
                { iconClass: "fas fa-headphones", description: "audio" },
                { iconClass: "fas fa-film", description: "movies" },
                { iconClass: "fas fa-tv", description: "tv" }
            ],

            retrievedMedia: [],

            filters: [
                { name: "Action", click: "Action" }
            ]
        }
    },

    

    created: function(){
        this.loadMedia(null, "movies");
    },

    methods: {
        loadMedia(filter, mediaType) {
            if(this.activeMediaType !== mediaType && mediaType !== null) {
                this.activeMediaType = mediaType
            }

            let url = (filter == null) ?`./admin/index.php?media=${this.activeMediaType}` : `./admin/index.php?media=${mediaType}&&filter=${filter}`;


        fetch(url)
            .then(res => res.json())
            .then(data => {
                //get all the media (audio, film, tv)
                this.retrieveMedia = data;

                //make the first result the one we're viewing/listening to on the page
                this.currentMediaDetails = data[0];
            })
        }
    }
}