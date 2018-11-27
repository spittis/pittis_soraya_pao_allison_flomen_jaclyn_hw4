(() => {
    //init the vue stuff!
    const vm = new Vue({
        el : "#app",

        data : {
            message : "Welcome to out AV app!",

            mediadata : [],
            singledata : [],

            mediatitle : "",
            mediadescription : "",
            mediasource : "",

            showDetails : false 
        },

        created : function() {
            //get all of the movie data ib the oage load
            this.fetchMediaData(null); //this is where we would fetch PHP stuff
        },

        methods : {
            login() {
                //stub
                console.log('login functionality');
            },

            fetchSingle(e) {
                //debugger;
                this.fetchMediaData(e.currentTarget.dataset.movie);
            },

            loadmMdia(e) { //use to open lightbox in portfolio
                //debugger;
                e.preventDefault(); //block a page reload (anchor tag default behaviour)
                
                dataKey = e.currentTarget.getAttribute('href');
                currentData = this.mediadata.filter(media => media.med_path === dataKey);

                this.mediatitle = currentData[0].med_name;
                this.mediadescription = currentData[0].media_desc;
                this.mediasource = dataKey;

                this.showDetails = true;

                setTimeout(function(){ window.scrollTo(0, 1200)}, 500);
            },

            fetchMovieData(movie) {
               let url = movie ?`./includes/index.php?movie=${movie}` : './includes/index.php'; 
                //this is a ternary statement, shorthand if else statement. left of : is true, right is false
            
                fetch(url)
                .then(res => res.json())
                .then(data => {
                    console.log(data);

                    if (movie) {
                        //store data in the single result above
                        this.singledata = data;
                    } else {
                        //initial data grab, store in the mediadata array
                        this.mediadata = data;
                    }
                })

                .catch(function(error){
                    console.log(error);
                });

            }
        }

    })

})();