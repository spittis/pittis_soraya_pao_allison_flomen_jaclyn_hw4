import InternalComponent from './InternalComponent.js';

export default {
    template:  `
    <div class="container">
        <div class="row">
            <div class="col-sm">
            <h1 class="user-message text-center">{{ message }}</h1>
            </div>
            <user v-for="(user, index) in userList" :liveuser="user" :key="index"></user>
        </div>
    </div>
    `,

    created: function() {
        this.fetchAllUsers();
    },

    data(){
        return{
            message: "Who's Using Roku?",

            userList: []
        }
    },

    methods: {
        fetchAllUsers() {
            let url = `./admin/scripts/users.php?allusers=true`;

            fetch(url)
                .then(res => res.json())
                .then(data => {this.userList = data})
            .catch(function(error){
                console.log(error);
            });
        }
    },

    components: {
        user: InternalComponent
    }
}