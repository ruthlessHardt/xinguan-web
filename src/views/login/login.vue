<template>
        <div id="login" v-loading="loading"
             element-loading-background="rgba(0, 0, 0, 0.8)"
             v-loading.fullscreen.lock="fullscreenLoading">
            <div class="container">
                <el-card>
                   <div class="content">
                       <div class="contentItem">
                           <span class="text1">登录</span><br><br><br>
                           <label for="username">用户名</label><br><br>
                           <input name="username" id="username" class="input" type="text" v-on:keyup.enter="login" v-model="loginInfo.username"></input>
                           <br><br><br>
                           <label for="password">密码</label><br><br>
                           <input name="password" id="password" class="input" type="password" v-on:keyup.enter="login" v-model="loginInfo.password"></input>
                           <br><br>
                           <el-button type="primary" round @click="login">登录</el-button>
                       </div>
                       <div class="contentItem1">
                           <span class="text1">新冠疫情物资管理系统</span><br><br>
                           <span class="text2">XinGuan</span>
                           <p class="text_p">
                               疫情数据来自国家卫健委、各省市卫健委、政府机构<br>
                           </p>
                           <el-link type="warning" href="http://www.nhc.gov.cn/xcs/xxgzbd/gzbd_index.shtml">国家卫健委官网链接</el-link>
                       </div>
                     </div>
                </el-card>

            </div>
            <div class="tip">
                <el-link type="success">我们一定会战胜疫情的！中国加油！</el-link>
                <br>
                <el-link type="warning" style="font-weight: 700">@李文涛liwentao</el-link>
            </div>

        </div>
</template>

<script>
    import {Userlogin} from "../../services/userService";
    export default {
        name: "login",
        data(){
            return {
                loginInfo: {
                    username:'',
                    password:''
                },
                loading:false,
                fullscreenLoading:false,
            }
        },
        methods:{
            changeLoading(){
                this.loading = true;
            },
            login(){
                if(this.loginInfo.username===''){
                    this.$message({
                        message: '您的用户名为空哦！',
                        type: 'error',
                        duration:'5000'
                    });
                }else if(this.loginInfo.password===''){
                    this.$message({
                        message: '您的密码没输哦！',
                        type: 'error',
                        duration:'5000'
                    });
                }else{
                    this.changeLoading();
                    Userlogin(this.loginInfo).then(res=>{
                        if(res.data.code===200){
                            // console.log(res.data.data);
                            localStorage.setItem("nid",res.data.data.nid);
                            localStorage.setItem("name",res.data.data.nuName);
                            localStorage.setItem("tel",res.data.data.nphone);
                            localStorage.setItem("ntype",res.data.data.ntype);
                            this.$cookies.set("authorization",res.headers.authorization);   // return this
                            this.$router.push('/layout');
                            // console.log(this.$cookies.get("authorization"));
                            this.$message({
                                message:'您已成功着陆了！',
                                type:'success',
                            });

                        }else if(res.data.code=='400'){
                            this.loading=false;
                            this.$message({
                                message: res.data.msg,
                                type: 'warning',
                                duration:'5000'
                            });
                        }
                    }).catch(exception=>{
                        this.loading=false;
                        if(exception instanceof Error) {
                            this.$message({
                                message: '服务器连接出现了问题鸭！',
                                type: 'error',
                                duration:'5000'
                            });
                        }
                    });
                }

            },
        },

    }
</script>

<style scoped>
    #login{
        width: 100%;
        height: 100vh;
        /*background-image: url("https://s3.jpg.cm/2021/02/04/BrqXC.jpg");*/
        background: url("https://s3.jpg.cm/2021/05/16/MEdw4.jpg");
        background-size: cover;
        text-align: center;
        justify-content: center;
        align-items: center;
        display: flex;
    }
    .container{
        width: 900px;
        height: auto;
    }
    .el-card{
        border: none;
        /*background-image: url("images/bg.jpg");*/
        background-image: url("https://s3.jpg.cm/2021/02/04/BrqXC.jpg");
        background-size: cover;
        border-radius: 10px;
    }
    .content{
        width: 110%;
        height: 470px;
        margin: -20px;
        background-color: rgba(0,0,0,0.6);
        display: flex;
        text-align: center;
    }
    .contentItem{
        width: 600px;
        height: 100%;
        background-color: #f6f5f5;
        padding-top: 3%;
        transition: 1000ms;
        text-align: center;
    }
    .contentItem1{
        max-width: 27%;
        width: 500px;
        height: 100%;
        text-align: center;
        justify-content: center;
        color: #d3dce6;
        padding-top: 5%;
    }
    .text1{
        font-size: 25px;
        font-weight: 600;
        font-family: "Helvetica Neue",Helvetica,"PingFang SC","Hiragino Sans GB","Microsoft YaHei","微软雅黑",Arial,sans-serif;
    }
    .text2{
        font-size: 24px;
        font-weight: 500;
        font-family: '华文琥珀';
        color: #16c79a;
    }
    .text_p{
        padding-top: 190px;
        margin: 20px;
        font-size: 13px;
    }
    .input{
        outline: none;
        width: 250px;
        border: none;
        border-bottom: 2px solid #99a9bf;
        background-color: transparent;
        font-size: 16px;
        padding-left: 2%;
        text-align: center;
    }
    label{
        color: #99a9bf;
        /*font-size: 18px;*/
    }
    .el-button{
        margin-top:10%;
        width: 270px;
    }
    .input:focus{
        border-bottom:2px solid #00917c;
        width: 270px;
        transition: 1000ms;
    }
    .tip{
        position: absolute;
        bottom: 40px;
        right: 100px;
    }
    .contentItem:hover{
        width: 66%;
    }

</style>
