(() => {
    //set up vue instance = vm
    //needs reference to wrapper --- el: '#app'
    //reference message in the app (html)
    const vm = new Vue({
        el: '#app',

        data : {
            message : "Welcome to the AV App!",

            targetURL : "http://netflix.com",

            vuemessage : "Yay! You can haz vue",

            anchorOff : true,

            entMedia : [ //list media here
                { name: "Fantastic Beasts and Where to Find Them", creator: "J.K. Rowling"},
                { name: "Game of Thrones", creator: "HBO"},
                { name: "Thank You, Next", creator: "Ariana Grande"}
            ],

            hazVue : true
        },


        methods : {
            logMedia(e){
                console.log(e.currentTarget);
            }
        }
    })

})();