// 1、导入vue-router
import VueRouter from 'vue-router'
// 2、导入vue
import Vue from 'vue'
// 3、安装
Vue.use(VueRouter)
// 4、创建VueRouter实例-路由对象
const router = new VueRouter({
    // 5、配置路由
    //5.1配置路模式
    mode:"history",
    // 5.2 配置路由对象数组
    routes: [
        {
            name:"login",
            path:"/login",
            component:()=>import('@/views/login/login.vue')
        },
        //主页
        {
            name:"layout",
            path:"/",
            component:()=>import('@/layout/layout.vue'),
            children:[
                {
                    path:'/',
                    component:()=>import('@/views/home.vue'),
                }
            ],
        },
        //
        {
            name:"Contents",
            path:"/contents",
            component:()=>import('@/layout/components/Contents.vue')
        },
        {
            name:"home",
            path:"/home",
            component:()=>import('@/views/home.vue')
        },
        {
            name:"userManage",
            path:"/userManage",
            component:()=>import('@/views/system/userManage.vue')
        },
        {
            name:"materialIn",
            path:"/materialIn",
            component:()=>import('@/views/buisness/materialIn.vue')
        },
    ]
})
//cv以下代码解决路由地址重复的报错问题(一劳永逸)
const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
    return originalPush.call(this, location).catch(err => err)
}

// router.beforeEach((to, from, next) => {
//     if (to.path === '/login') {
//         next();
//     } else {
//         let token = localStorage.getItem('Authorization');
//
//         if (token === 'null' || token === '') {
//             next('/login');
//         } else {
//             next();
//         }
//     }
// });


// 6、导出路由对象
export default router;
