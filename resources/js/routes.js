import AllUsers from './components/user/index.vue';
import AddUser from './components/user/create.vue';
import EditUser from './components/user/edit.vue';

export const routes = [
    {
        name: 'home',
        path: '/',
        component: AllUsers
    },
    {
        name: 'add',
        path: '/add',
        component: AddUser
    },
    {
        name: 'edit',
        path: '/edit/:id',
        component: EditUser
    }
];
