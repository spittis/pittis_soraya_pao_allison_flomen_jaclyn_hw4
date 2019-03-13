
//components here
import HomeComponent from './components/HomeComponent.js';
import UserComponent from './components/UserComponent.js';
// import UserHomeComponent from './components/UserHomeComponent.js';

const routes = [
    { path: '/', redirect: {name: 'home'}},
    { path: '/home', name: 'home', component: HomeComponent },
    { path: '/user', name: 'user', component: UserComponent },
    // { path: '/userhome', name: 'login', component: UserHomeComponent, props: true}
    
];

const router = new VueRouter ({
    routes
});

const vm = new Vue ({
    // el: '#app',

    data: {
        message: "Sup from vue!",
        authenticated : false,
        administrator: false,
        
        mockAccount : {
            username: "jrf",
            password: "123"
        },

        user: [],
        currentUser: {}
    },

    created: function(){
        console.log('parent is live');
    },

    methods: {
        logParent(message) {
            console.log("from the parent", message);
        },

        logMainMsg(message){
            console.log('called from inside a child, lives in the parent', message);
        },

        setAuthenticated(status){
            this.authenticated = status;
        },

        logout(){
            this.$router.push({ path: "/home"} ); //the order here matters //login path has to fire first
            this.authenticated = false; //and then turn off the authentication
        },

        setCurrentUser(user) {
            //stub
            console.log('hit setCurrentUser');
        }
    },

    router: router
}).$mount("#app");

//make the router check all of the routes and bounce back if we're not authenticated
router.beforeEach((to, from, next) => {
    console.log("router guard fired!");

    if (vm.authenticated == false) {
        next("/home");
    }else{
        next();
    }
});