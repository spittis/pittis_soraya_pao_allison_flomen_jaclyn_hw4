(() => {
    //init the vue stuff!
    const vm = new Vue({
        el : "#app",

        data : {
            message : "Welcome to out AV app!",

            moviedata : [],
            tvdata : [],
            audiodata : [],
            singledata : [],
            singledata2 : [],
            singledata3 : [],

            movietitle : "",
            moviedescription : "",
            moviesource : "",

            tvtitle : "",
            tvdescription : "",
            tvsource : "",

            audiotitle : "",
            audiodescription : "",
            audiosource : "",

            showDetails : false 
        },

        created : function() {
            //get all of the movie data ib the oage load
            this.fetchMovieData(null); //this is where we would fetch PHP stuff
        },

        created : function() {
                //get all of the movie data ib the oage load
                this.fetchTVData(null); //this is where we would fetch PHP stuff
        },

        created : function() {
            //get all of the movie data ib the oage load
            this.fetchAudioData(null); //this is where we would fetch PHP stuff
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

            fetchSingle2(e) {
                //debugger;
                this.fetchTVData(e.currentTarget2.dataset.tv);
            },

            fetchSingle3(e) {
                //debugger;
                this.fetchAudioData(e.currentTarget3.dataset.audio);
            },

            loadMovie(e) { //use to open lightbox in portfolio
                //debugger;
                e.preventDefault(); //block a page reload (anchor tag default behaviour)
                
                dataKey = e.currentTarget.getAttribute('href');
                currentData = this.moviedata.filter(movie => movie.mov_path === dataKey);

                this.movietitle = currentData[0].mov_name;
                this.moviedescription = currentData[0].movie_desc;
                this.moviesource = dataKey;

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
                        //initial data grab, store in the videodata array
                        this.moviedata = data;
                    }
                })

                     loadTV(e)  //use to open lightbox in portfolio
                        //debugger;
                        e.preventDefault(); //block a page reload (anchor tag default behaviour)
                        
                        dataKey2 = e.currentTarget2.getAttribute('href');
                        currentData2 = this.tvdata.filter(tv => tv.tv_path === dataKey2);
        
                        this.tvtitle = currentData2[0].tv_name;
                        this.tvdescription = currentData2[0].tv_desc;
                        this.tvsource = dataKey2;
        
                        this.showDetails = true;
        
                        setTimeout(function(){ window.scrollTo(0, 1200)}, 500);
                    },

                     fetchTVData(tv) {
                        let url = tv ?`./includes/index.php?tv=${tv}` : './includes/index.php'; 
                         //this is a ternary statement, shorthand if else statement. left of : is true, right is false
                     
                         fetch(url)
                         .then(res => res.json())
                         .then(data => {
                             console.log(data);
         
                             if (tv) {
                                 //store data in the single result above
                                 this.singledata2 = data;
                             } else {
                                 //initial data grab, store in the videodata array
                                 this.tvdata = data;
                             }
                         }),

                         loadAudio(e)  //use to open lightbox in portfolio
                            //debugger;
                            e.preventDefault(); //block a page reload (anchor tag default behaviour)
                            
                            dataKey3 = e.currentTarget3.getAttribute('href');
                            currentData3 = this.audiodata.filter(audio => audio.aud_path === dataKey);
            
                            this.audiotitle = currentData3[0].audio_name;
                            this.audiodescription = currentData3[0].audio_desc;
                            this.audiosource = dataKey3;
            
                            this.showDetails = true;
            
                            setTimeout(function(){ window.scrollTo(0, 1200)}, 500);
                        },
                     

                     fetchAudioData(audio) {
                        let url = audio ?`./includes/index.php?audio=${audio}` : './includes/index.php'; 
                         //this is a ternary statement, shorthand if else statement. left of : is true, right is false
                     
                         fetch(url)
                         .then(res => res.json())
                         .then(data => {
                             console.log(data);
         
                             if (audio) {
                                 //store data in the single result above
                                 this.singledata3 = data;
                             } else {
                                 //initial data grab, store in the audioodata array
                                 this.audiodata = data;
                             }
                         })

                

                .catch(function(error){
                    console.log(error);
                })

            }
        }

    })

})();