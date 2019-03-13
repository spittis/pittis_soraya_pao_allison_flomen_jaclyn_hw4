export default {
    props: ['currentuser'],

    template: `
    <div class="container">
        <h1>At the home page component! Finally!!!</h1>
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

            retrievedMedia: []
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

            let url = (filter == null) ?`./admin/index.php?media=${this.activeMediaType}` : `./admin/index.php?media=${this.mediaType}&&filter=${filter}`;


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