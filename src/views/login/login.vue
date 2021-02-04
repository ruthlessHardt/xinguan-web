<template>
        <div id="login">
            <div class="container">
                <el-card>
                   <div class="content">
                       <div class="contentItem">
                           <span class="text1">登录</span><br><br><br>
                           <label for="username">用户名</label><br><br>
                           <input name="username" id="username" class="input" type="text" v-model="loginInfo.username"></input>
                           <br><br><br>
                           <label for="username">密码</label><br><br>
                           <input name="username" id="password" class="input" type="password" v-model="loginInfo.password"></input>
                           <br><br>
                           <el-button type="primary" round @click="login">登录</el-button>
                       </div>
                       <div class="contentItem1">
                           <span class="text1">新冠物资管理系统</span><br><br>
                           <span class="text2">XinGuan</span>
                           <p class="text_p">
                               疫情数据来自国家卫健委、各省市卫健委、政府机构<br>
                           </p>
                           <el-link type="warning" href="http://www.nhc.gov.cn/xcs/xxgzbd/gzbd_index.shtml">国家卫健委官网链接</el-link>
                       </div>
                       <div class="contentItem2">
<!--                           <i class="el-icon-hot-water"></i>-->
                       </div>
                   </div>
                </el-card>

            </div>
            <div class="tip">
                <el-link type="success">我们一定会战胜疫情的！中国加油！</el-link>
            </div>

        </div>
</template>

<script>
    export default {
        name: "login",
        data(){
            return {
                loginInfo: {
                    username:'',
                    password:''
                },
            }
        },
        methods:{
            login(){
              if(this.loginInfo.username!=''&&this.loginInfo.password!=''){
                  this.$notify({
                      title: '提示',
                      message: '登陆成功',
                      type: 'success'
                  });
                  localStorage.setItem("loginInfos",'123qweopasd9213');
                  location.reload();
              }
            },
        }
    }
</script>

<style scoped>
    #login{
        width: 100%;
        height: 100vh;
        background-image: url("https://s3.jpg.cm/2021/02/04/BrqXC.jpg");
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
        background-image: url("images/bg.jpg");
        background-size: cover;
        border-radius: 10px;
    }
    .content{
        width: 110%;
        height: 500px;
        margin: -20px;
        background-color: rgba(0,0,0,0.6);
        display: flex;
        text-align: center;
    }
    .contentItem{
        width: 60%;
        height: 100%;
        background-color: #f6f5f5;
        padding-top: 3%;
        transition: 1000ms;
        text-align: center;
    }
    .contentItem1{
        max-width: 26%;
        width: auto;
        height: 100%;
        text-align: center;
        justify-content: center;
        color: #d3dce6;
        padding-top: 5%;
    }
    .contentItem2{
        min-width: 3%;
        width: auto;
        color: #d3dce6;
        /*background-color: #ef6c57;*/
        font-size: 40px;
        height: 100%;
        padding-top: 20%;
        transition: 1000ms;
        text-align: center;
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
        font-size: 12px;
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
        width: 70%;
    }
</style>
