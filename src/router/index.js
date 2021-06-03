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
        { path: '*', component:()=>import('@/components/NotFoundComponent.vue') },
        {
            name:"login",
            path:"/",
            component:()=>import('@/views/login/login.vue')
        },
        //主页
        {
            name:"layout",
            path:"/layout",
            component:()=>import('@/layout/layout.vue'),
            children:[
                {
                    path:'/',
                    component:()=>import('@/views/home.vue'),
                },
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
                    component:()=>import('@/views/buisness/materialIn.vue'),
                },
                {
                    name:"materialOut",
                    path:"/materialOut",
                    component:()=>import('@/views/buisness/materialOut.vue'),
                },
                {
                    name:"materialDistribution",
                    path:"/materialDistribution",
                    component:()=>import('@/views/buisness/materialDistribution.vue'),
                },
                {
                    name:"materialInfo",
                    path:"/materialInfo",
                    component:()=>import('@/views/buisness/materialInfo.vue'),
                },
                {
                    name:"materialCategory",
                    path:"/materialCategory",
                    component:()=>import('@/views/buisness/materialCategory.vue'),
                },
                {
                    name:"inStorage",
                    path:"/inStorage",
                    component:()=>import('@/views/buisness/inStorage.vue')
                },
                {
                    name:"grantMaterial",
                    path:"/grantMaterial",
                    component:()=>import('@/views/buisness/grantMaterial.vue')
                },
                {
                    name:"material",
                    path:"/material",
                    component:()=>import('@/views/buisness/material.vue')
                },

                {
                    name:"inventory",
                    path:"/inventory",
                    component:()=>import('@/views/buisness/inventory.vue')
                },
                {
                    name:"inventoryList",
                    path:"/inventoryList",
                    component:()=>import('@/views/buisness/inventoryList.vue')
                },
                {
                    name:"userProfile",
                    path:"/userProfile",
                    component:()=>import('@/views/userProfile.vue')
                },
                {
                    name:"OperatorLogs",
                    path:"/OperatorLogs",
                    component:()=>import('@/views/system/OperatorLogs.vue')
                },
                {
                    name:"authority",
                    path:"/authority",
                    component:()=>import('@/views/system/authority.vue')
                },
                {
                    name:"roleManage",
                    path:"/roleManage",
                    component:()=>import('@/views/system/roleManage.vue')
                },
                {
                    name:"health",
                    path:"/health",
                    component:()=>import('@/views/health/health.vue')
                },

            ],
        },
    ]
})
//cv以下代码解决路由地址重复的报错问题(一劳永逸)
const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
    return originalPush.call(this, location).catch(err => err)
}

router.beforeEach((to, from, next) => {
    if (to.path === '/') {
        next();
    } else {
        // let token = localStorage.getItem('loginInfo');
        var token = $cookies.get("authorization");
        if (token === null || token === '') {
            next('/');
        } else {
            next();
        }
    }
});


// 6、导出路由对象
export default router;
