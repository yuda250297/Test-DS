<template>
    <div>
        <h3 class="text-left">Data User</h3><br/>

        <table class="table table-bordered">
            <thead class="bg-dark text-white">
            <tr>
                <th>ID</th>
                <th>Nama</th>
                <th>Email</th>
                <th>Created At</th>
                <th>Updated At</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="user in users" :key="user.id">
                <td>{{ user.id }}</td>
                <td>{{ user.name }}</td>
                <td>{{ user.email }}</td>
                <td>{{ user.created_at }}</td>
                <td>{{ user.updated_at }}</td>
                <td>
                    <!-- <div class="btn-group" role="group"> -->
                        <router-link :to="{name: 'edit', params: { id: user.id }}" class="btn btn-primary">Edit
                        </router-link>
                        <button class="btn btn-danger" @click="deleteUser(user.id)">Delete</button>
                    <!-- </div> -->
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                users: []
            }
        },
        created() {
            this.axios
                .get('http://localhost:8000/api/manage/user')
                .then(response => {
                    this.users = response.data;
                });
        },
        methods: {
            deleteUser(id) {
                this.axios
                    .delete(`http://localhost:8000/api/user/delete/${id}`)
                    .then(response => {
                        let i = this.users.map(item => item.id).indexOf(id);
                        this.users.splice(i, 1)
                    });
            }
        }
    }
</script>
