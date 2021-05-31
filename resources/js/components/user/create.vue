<template>
    <div>
        <h3 class="text-center">Tambah User</h3>
        <div class="row">
            <div class="col-md-6">
                <form @submit.prevent="addUser">
                    <div class="form-group">
                        <label>Nama</label>
                        <input type="text" class="form-control" v-model="user.name" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" class="form-control" v-model="user.email" required>
                    </div>
                     <div class="form-group">
                        <label>Password</label>
                        <input type="text" class="form-control" v-model="user.password" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Tambah User</button>
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
        methods: {
            addUser() {

                this.axios
                    .post('http://localhost:8000/api/user/create', this.user)
                    .then(response => (
                        this.$router.push({name: 'home'})
                        // console.log(response.data)
                    ))
                    .catch(error => console.log(error))
                    .finally(() => this.loading = false)
            }
        }
    }
</script>
