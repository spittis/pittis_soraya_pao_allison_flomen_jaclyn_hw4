(() => {
    //init the vue stuff!
    const vm = new Vue({
        el : "#app",

        data : {
            message : "Welcome to our AV app!",

            moviedata : [],
            singledata : [],

            movietitle : "",
            moviedescription : "",
            moviesource : "",

            showDetails : false 
        },

        created : function() {
            //get all of the movie data ib the oage load
            this.fetchMovieData(null); //this is where we would fetch PHP stuff
        },

        methods : {
            login() {
                //stub
                console.log('login functionality');
            },

            fetchSingle(e) {
                //debugger;
                this.fetchMovieData(e.currentTarget.dataset.movie);
            },

            loadMovie(e) { //use to open lightbox in portfolio
                //debugger;
                e.preventDefault(); //block a page reload (anchor tag default behaviour)
                
                dataKey = e.currentTarget.getAttribute('href');
                currentData = this.moviedata.filter(tbl_movies => tbl_movies.movies_thumb === dataKey);

                this.movietitle = currentData[0].movies_name;
                this.moviedescription = currentData[0].movies_desc;
                this.moviesource = dataKey;

                this.showDetails = true;

                // setTimeout(function(){ window.scrollTo(0, 1200)}, 500);
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
                        this.moviedata = data;
                    } else {
                        //initial data grab, store in the videodata array
                        this.moviedata = data;
                    }
                })

                     
                .catch(function(error){
                    console.log(error);
                })

            }
        }

    })

})();