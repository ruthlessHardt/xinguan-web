<template>
    <el-container>
        <!-- 头部高度设为50px（默认60px） -->
        <el-header height="50px">
            <!-- logo -->
            <a class="logo" href="/home"><i class="el-icon-ice-tea">{{logo}}</i></a>
            <!-- 折叠菜单按钮 -->
            <div class="toggle"  @click="isCollapse = !isCollapse">
                <i class="el-icon-s-unfold" v-if="isCollapse"></i>
                <i class="el-icon-s-fold" v-if="!isCollapse"></i>
            </div>
            <!-- 下拉菜单 -->
            <el-dropdown @command="handleCommand">
              <span class="el-dropdown-link">
                <i class="el-icon-user el-icon--left"></i>
              </span>
                <el-dropdown-menu slot="dropdown">
                    <el-dropdown-item icon="el-icon-switch-button" command="a">个人资料</el-dropdown-item>
<!--                    <el-dropdown-item icon="el-icon-switch-button" command="logout"><span @click="logout">注销</span></el-dropdown-item>-->
                    <el-dropdown-item icon="el-icon-switch-button" command="e">注销</el-dropdown-item>
                </el-dropdown-menu>
            </el-dropdown>
        </el-header>
        <el-container>
            <!-- 菜单栏宽度设为自动 -->
<!--            active-text-color="rgb(64, 158, 255)"-->
<!--            active-text-color="rgb(191, 203, 217)"-->
<!--            background-color="rgb(48, 65, 86)"-->
            <el-aside width="auto">
                <el-menu
                        :collapse="isCollapse"
                        class="el-menu-vertical"
                        background-color="#2B2C3E"
                        text-color="rgb(191, 203, 217)"
                        active-text-color="rgb(64, 158, 255)"
                >
                    <!--v-for尽量写在自己的div里-->
                    <div v-for="(item,index) in menuList" :key="index">
                    <el-submenu :index="index.toString()" v-if="index>0&&item.xgMenuList.length!=0">
                        <template slot="title">
                            <i :class="item.icon" style="padding-right: 20px"></i>
                            <span slot="title">{{item.mname}}</span>
                        </template>
                        <el-menu-item-group v-for="(item1,index2) in item.xgMenuList" :key="index2">
                            <el-menu-item :index="index.toString()+'-'+index2.toString()">
                                <i :class="item1.icon"></i>
                                    <span @click="goto(item1.murl)">{{item1.mname}}</span>
                            </el-menu-item>
                        </el-menu-item-group>
                    </el-submenu>
                    <el-menu-item :index="index.toString()" @click="goto(item.murl)" v-if="index!=0&&item.xgMenuList.length==0">
                        <i :class="item.icon" style="padding-right: 20px"></i>
                        <span slot="title">{{item.mname}}</span>
                    </el-menu-item>
                    </div>
                </el-menu>
            </el-aside>
            <!-- 可以结合vue-router路由嵌套实现页面的跳转与显示 -->
            <el-main class="main">
                <div style="opacity: 0.2" class="bg"></div>
                <router-view></router-view>
            </el-main>
        </el-container>
    </el-container>
</template>

<script>
    import Navbar from "../layout/components/Navbar";
    import Contents from "../layout/components/Contents";
    import  axios from 'axios'
    import {menuInfo} from "../services/systemService";

    export default {
        data(){
            return {
                isCollapse:true,
                logo:'',
                loading:true,
                menuList:'',
            }
        },
        methods: {
            changeLoading(){
                this.loading = false;
            },
            getStatus(msg){
                this.isCollapse = msg;
            },
            changeStatus(){
                // console.log(this.isCollapse)
                this.isCollapse = !this.isCollapse;
            },
            goto(url){
                // console.log(id);
                this.$router.push(url);
            },
            handleCommand(command) {
                if(command==='a'){
                    this.$router.push('/userProfile');
                }else if(command==='e'){
                    this.$message({
                        message:'注销成功了哟！',
                        type:'success',
                        duration:'2000'
                    });
                    this.$cookies.remove("authorization");
                    this.$router.push('/');
                }
            },
        },
        mounted() {
            //阿里健康-疫情api
            // axios.get("http://ncovdata.market.alicloudapi.com/ncov/cityDiseaseInfoWithTrend",{
            //     headers:{
            //         Authorization:`APPCODE 0accc7b6e99d461e8da67055a7d1b33e`
            //     }
            // }).then(res=>{
            //     console.log(res.data)
            // });
            menuInfo(localStorage.getItem("nid")).then(res=>{
                if(res.data != null){
                    this.logo=res.data[0].mname;
                    this.menuList = res.data;
                }else {
                    this.$message({
                        message:'服务器出现错误！',
                        type:'warning',
                        duration:'2000'
                    });
                }
                // console.log(res.data);
            });

        }
    }
</script>

<style scoped>
    /*占满全屏*/
    .el-container{
        position: absolute;
        width: 100%;
        top: 0;
        left: 0;
        bottom: 0;
    }
    /*上外边距50px，防止挡住Header*/
    .el-aside,.el-main{
        margin-top: 50px;
    }
    /*设置背景色，方便观察效果*/
    .el-header{
        /* 上层显示，避免被Main和Aside遮挡 */
        /*background-color:rgb(48, 65, 86) ;*/
        background-color: #2B2C3E;
        z-index: 999;
    }
    .el-aside{
        /*background-color: rgb(48, 65, 86);*/
        background-color: #2B2C3E;
    }
    .el-main{
        background-color: #eee;
    }
    /* 去除菜单右侧边框 */
    .el-menu{
        border-right: none;
    }
    /* 设置展开时菜单宽度 */
    .el-menu-vertical:not(.el-menu--collapse) {
        width: 230px;
    }
    /* logo */
    .logo{
        color: #fff;
        text-align: center;
        font-size: 26px;
        line-height: 50px;
        padding: 0 15px;
        font-weight: 400;
        text-decoration: none;
    }
    /* 折叠按钮 */
    .toggle{
        color: #f8f1f1;
        background-color: #00af91;
        text-align: center;
        font-size: 26px;
        line-height: 50px;
        display: inline-block;
        padding: 0 15px;
        /*border-left: solid 1px #ccc;*/
        position: absolute;
        left:230px;
        cursor: pointer;
    }
    .toggle:hover{
        background-color: #ffd04b;
    }
    /* 下拉菜单 */
    .el-dropdown{
        color: #fff;
        text-align: center;
        font-size: 26px;
        line-height: 50px;
        float: right;
    }
    .el-aside{
        overflow: hidden;
    }
    .main{
        /*background-image: url("https://s3.jpg.cm/2021/02/28/zDHVW.jpg");*/
        /*background-size: cover;*/
        /*background: linear-gradient(120deg,rgba(48, 65, 86,0.1),rgba(187,255,255,0.9)), url('https://s3.jpg.cm/2021/02/28/zDHVW.jpg') no-repeat 0px 0px/ 100% 100%;*/
        /*background-color:rgba(48, 65, 86,0.3) ;*/
        /*background-color: #545372;*/
    }
</style>
