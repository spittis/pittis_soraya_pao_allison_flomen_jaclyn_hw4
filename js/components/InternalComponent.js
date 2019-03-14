export default {
    props: ['liveuser'],

    template: `
    <div class="col-xs-12 col-sm-6 col-md-4 col-mx-auto">
        <div class="card rounded" @click="navToUserHome()">
            <div class="card-body text-center">
                <img :src="'images/' + liveuser.avatar" alt="" class="rounded-circle img-fluid">
                <p>{{liveuser.username}}</p>
            </div>
        </div>
    </div>
    `,

    created: function() {
        if (this.liveuser.avatar == null) {
            this.liveuser.avatar = "temp_avatar.jpg";
        }
    },

    methods: {
        navToUserHome() {
            this.$router.push({ name: "home", params: {currentuser: this.liveuser }})
        }
    }
}