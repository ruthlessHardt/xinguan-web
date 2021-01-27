<template>
    <el-container>
        <!-- 头部高度设为50px（默认60px） -->
        <el-header height="50px">
            <!-- logo -->
            <a class="logo" href="/"><i class="el-icon-ice-tea"><span>{{logo}}</span></i></a>
            <!-- 折叠菜单按钮 -->
            <div class="toggle"  @click="isCollapse = !isCollapse">
                <i class="el-icon-s-unfold" v-if="isCollapse"></i>
                <i class="el-icon-s-fold" v-if="!isCollapse"></i>
            </div>
            <!-- 下拉菜单 -->
            <el-dropdown>
              <span class="el-dropdown-link">
                <i class="el-icon-user el-icon--left"></i>
              </span>
                <el-dropdown-menu slot="dropdown">
                    <el-dropdown-item icon="el-icon-switch-button">个人资料</el-dropdown-item>
                    <el-dropdown-item icon="el-icon-switch-button">注销</el-dropdown-item>
                </el-dropdown-menu>
            </el-dropdown>
        </el-header>
        <el-container>
            <!-- 菜单栏宽度设为自动 -->
            <el-aside width="auto">
                <el-menu
                    default-active="1"
                    :collapse="isCollapse"
                    class="el-menu-vertical"
                    background-color="rgb(48, 65, 86)"
                    text-color="rgb(191, 203, 217)"
                    active-text-color="rgb(64, 158, 255)"
            >
                <el-menu-item index="0" @click="toHome">
                    <i class="el-icon-setting"></i>
                    <span slot="title">首页</span>
                </el-menu-item>
                <el-submenu index="1">
                    <template slot="title">
                        <i class="el-icon-s-platform"></i>
                        <span>系统管理</span>
                    </template>
                    <el-menu-item-group>
                        <el-menu-item index="1-1"><i class="el-icon-scissors"></i>用户管理</el-menu-item>
                        <el-menu-item index="1-2"><i class="el-icon-scissors"></i>权限管理</el-menu-item>
                        <el-menu-item index="1-3"><i class="el-icon-scissors"></i>角色管理</el-menu-item>
                        <el-menu-item index="1-4"><i class="el-icon-magic-stick"></i>菜单管理</el-menu-item>
                    </el-menu-item-group>
                </el-submenu>
                <el-submenu index="2">
                    <template slot="title">
                        <i class="el-icon-s-tools"></i>
                        <span>物资管理</span>
                    </template>
                    <el-menu-item-group>
                        <el-menu-item index="2-1">物资入库</el-menu-item>
                        <el-menu-item index="2-2">物资资料</el-menu-item>
                        <el-menu-item index="2-3">物资出库</el-menu-item>
                        <el-menu-item index="2-4">物资发放</el-menu-item>
                        <el-menu-item index="2-5">物资类别</el-menu-item>
                        <el-menu-item index="2-6">物资流向</el-menu-item>
                    </el-menu-item-group>
                </el-submenu>
                <el-submenu index="3">
                    <template slot="title">
                        <i class="el-icon-user-solid"></i>
                        <span>人员数据</span>
                    </template>
                    <el-menu-item-group>
                        <el-menu-item index="3-1">人员数量</el-menu-item>
                        <el-menu-item index="3-2">人员位置</el-menu-item>
                    </el-menu-item-group>
                </el-submenu>
                <el-submenu index="4">
                    <template slot="title">
                        <i class="el-icon-message-solid"></i>
                        <span>健康报警</span>
                    </template>
                    <el-menu-item-group>
                        <el-menu-item index="4-1">心率报警</el-menu-item>
                        <el-menu-item index="4-2">血压报警</el-menu-item>
                    </el-menu-item-group>
                </el-submenu>
            </el-menu>
            </el-aside>
            <!-- 可以结合vue-router路由嵌套实现页面的跳转与显示 -->
            <el-main>
                <router-view></router-view>
            </el-main>
        </el-container>
    </el-container>
</template>

<script>
    import Navbar from "../layout/components/Navbar";
    import Contents from "../layout/components/Contents";
    import {getEpidemicInfo} from "../services/api";
    import  axios from 'axios'

    export default {
        components:{
            // Navbar,
            Contents
        },
        data(){
            return {
                isCollapse:false,
                logo:'XinGuan',
            }
        },
        methods: {
            getStatus(msg){
                this.isCollapse = msg;
            },
            changeStatus(){
                // console.log(this.isCollapse)
                this.isCollapse = !this.isCollapse;
            },
            toHome(){
                this.$router.push("/contents");
            }
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
        background-color:rgb(48, 65, 86) ;
        z-index: 999;
    }
    .el-aside{
        background-color: rgb(48, 65, 86);
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
</style>
