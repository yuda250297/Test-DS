<template>
    <div>
        <h3 class="text-center">Edit User</h3>
        <div class="row">
            <div class="col-md-6">
                <form @submit.prevent="updateUser">
                    <div class="form-group">
                        <label>Nama User</label>
                        <input type="text" name="name" class="form-control" v-model="user.name" required>
                    </div>
                    <div class="form-group">
                        <label>Email User</label>
                        <input type="text" name="email" class="form-control" v-model="user.email" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Update User</button>
                </form>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                user: {}
            }
        },
        created() {
            this.axios
                .get(`http://localhost:8000/api/manage/user/${this.$route.params.id}/edit`)
                .then((response) => {
                    this.user = response.data;
                    // console.log(response.data);
                });
        },
        methods: {
            updateUser() {
                this.axios
                    .put(`http://localhost:8000/api/manage/user/${this.$route.params.id}`, this.user)
                    .then((response) => {
                        this.$router.push({name: 'home'});
                    });
            }
        }
    }
</script>
