<template>
    <div class="container-fluid">
        <div class="row p-4">
            <div class="col-lg-2">
                <div class="card bg-dark shadow position-fixed">
                    <div class="card-header">
                        <h4 class="text-white">Menu</h4>
                    </div>
                    <div class="card-body">
                        <router-link to="/" class="nav-item nav-link text-white"><b>Home</b></router-link>
                        <router-link to="/add" class="nav-item nav-link text-white"><b>Tambah User</b></router-link>
                    </div>
                </div>
            </div>
            <div class="col-lg-10">
                <div class="card p-4 shadow">
                    <div class="card-body bg-white">
                        <router-view></router-view>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {}
</script>
