new Vue({
    el: '#app',
    data: {
      activeSlide: 1,
      genre: 'Romance',
      image: 'images/titanic.jpg',
      image2: 'images/about-time.jpg',
      image3: 'images/notebook.jpg',

      videodata : [],
          singledata : [],

          videotitle : "",
          videodescription : "",
          videosource : "",

          showDetails : false

    },

    created : function(){
        //get all of the portfolio images on load
        this.fetchMovieData(null);
    },

    computed: {
      styleObject: function() {
        const width = 0 - ((this.activeSlide-1) * 700)
        return {
          transform: 'translateX('+width+'px)'
        }
      }
    },
    methods: {
      changeSlide: function(num) {
        this.activeSlide = num
      },
      nextSlide: function() { 
        if(this.activeSlide < 5) this.activeSlide++
      },
      prevSlide: function() {
        if(this.activeSlide > 1) this.activeSlide--
      },
      fetchSingle(e) {
        //debugger;
        this.fetchMovieData(e.currentTarget.dataset.movie);
        },

        fetchRomance(e) {
        //debugger;
        this.fetchMovieData(e.currentTarget.dataset.genre_name = 'Romance');
        },



        loadMovie(e) {
            //debugger;
            e.preventDefault(); //block a page reload (anchor tag default behaviour)

            dataKey = e.currentTarget.getAttribute('href');
            currentData = this.videodata.filter(tbl_portfolio => tbl_portfolio.pro_path === dataKey);

            this.videotitle = currentData[0].pro_name;
            this.videodescription = currentData[0].pro_desc;
            this.videosource = dataKey;

            this.showDetails = true;

            setTimeout(function(){ window.scrollTo(0, 1200)}, 500);
        },

        fetchMovieData(movie) {
            //this is a ternary statement (shorthand for if/else). left of the : is true, right is false
            let url = movie ? `./scripts/index.php?movie=${movie}` : './scripts/index.php';

            fetch(url) // pass in the one or many query
            .then(res => res.json())
            .then(data => {
                console.log(data);

                if (movie) {
                    // getting one movie, so use the single array
                    this.videodata = data; //this is gonna go to the data
                } else {
                    // push all the video (or portfolio content) into the video array
                    this.videodata = data;
                }
            })
            .catch(function(error) {
                console.log(error);
            });
        },
    }

    
  })