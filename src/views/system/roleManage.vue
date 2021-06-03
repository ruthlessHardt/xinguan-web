<template>
    <div id="roleManage"
         v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading" >
        <div>
            <el-tooltip class="item" effect="dark" content="角色管理主要是角色的分配" placement="bottom">
                <div style="font-weight: 700;font-size: 25px;padding:2%;width: 300px">
                    <i class="el-icon-user-solid fa-2x"></i><i class="el-icon-ship fa-2x"></i>
                    角色管理
                </div>
            </el-tooltip>
            <el-divider></el-divider>
            <br>
            <div style="padding:0% 3% 3% 3%">
<!--                <el-row :gutter="20">-->
<!--                    <el-col :span="10">-->
<!--                        <el-card class="card1">-->
<!--                            <el-tooltip class="item" effect="dark" content="要乖哟~" placement="top-end">-->
<!--                                <div class="myImage">-->
<!--                                    <img src="../../assets/1.png"  width="290px" height="auto">-->
<!--                                </div>-->
<!--                            </el-tooltip>-->
<!--                        </el-card>-->
<!--                    </el-col>-->
<!--                    <el-col :span="14">-->
<!--                        <el-card class="card1" style="padding-top: 11.7%">-->
<!--                            <el-tooltip class="item" effect="dark" content="yayaaa~" placement="right-end">-->
<!--                                <div class="myImage1">-->
<!--                                    <img src="../../assets/2.gif"  width="260px" height="auto">-->
<!--                                </div>-->
<!--                            </el-tooltip>-->
<!--                        </el-card>-->

<!--                    </el-col>-->
<!--                </el-row>-->
                <br><br>
                <br>
                <el-row :gutter="25">
<!--                    <el-col :span="5">-->
<!--                        <el-card class="card1" shadow="never" @click.native="authorityEvent(1)">-->
<!--                            <div class="text">-->
<!--                                <span>权限分配</span>-->
<!--                            </div>-->
<!--                        </el-card>-->
<!--                    </el-col>-->
<!--                    <el-col :span="5">-->
<!--                        <el-card class="card1" shadow="never" @click.native="authorityEvent(2)">-->
<!--                            <div class="text">-->
<!--                                <span>权限修改</span>-->
<!--                            </div>-->
<!--                        </el-card>-->
<!--                    </el-col>-->
                    <el-col :span="5">
                        <el-card class="card1" shadow="" @click.native="authorityEvent(3)">
                            <div class="text">
                                <span>更换用户角色</span>
                            </div>
                        </el-card>
                    </el-col>
                    <el-col :span="5">
                        <el-card class="card1" shadow="" @click.native="authorityEvent(4)">
                            <div class="text">
                                <span>角色权限修改</span>
                            </div>
                        </el-card>
                    </el-col>
<!--                    <el-col :span="4">-->
<!--                        <el-card class="card1" shadow="never" @click.native="authorityEvent(5)">-->
<!--                            <div class="text">-->
<!--                               <el-button icon="el-icon-plus fa-2x" type="primary" circle></el-button>-->
<!--                            </div>-->
<!--                        </el-card>-->
<!--                    </el-col>-->
                </el-row>
                <br>
                <div style="width: auto;height:340px;background: url('https://ouch-cdn2.icons8.com/wpcZyX-0A1OvtI6xjy8aOwm74xYQwSNEMHd2JJK29G8/rs:fit:390:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNTk0/LzMwNzE2NTBlLWE3/ZDUtNDk3MS05MGM4/LTAzYjY2OWY5ZjEz/MC5wbmc.png') 90% center ;background-repeat: no-repeat;background-size: contain"></div>
<!--                <el-row :gutter="25">-->
<!--                    <el-col :span="5">-->
<!--                        <el-card class="card1" shadow="never" @click.native="authorityEvent(1)">-->
<!--                            <div class="text">-->
<!--                                <span>系统管理权限</span>-->
<!--                            </div>-->
<!--                        </el-card>-->
<!--                    </el-col>-->
<!--                    <el-col :span="5">-->
<!--                        <el-card class="card1" shadow="never" @click.native="authorityEvent(2)">-->
<!--                            <div class="text">-->
<!--                                <span>物资管理权限</span>-->
<!--                            </div>-->
<!--                        </el-card>-->
<!--                    </el-col>-->
<!--                    <el-col :span="5">-->
<!--                        <el-card class="card1" shadow="never" @click.native="authorityEvent(3)">-->
<!--                            <div class="text">-->
<!--                                <span>日志管理权限</span>-->
<!--                            </div>-->
<!--                        </el-card>-->
<!--                    </el-col>-->
<!--                    <el-col :span="5">-->
<!--                        <el-card class="card1" shadow="never" @click.native="authorityEvent(4)">-->
<!--                            <div class="text">-->
<!--                                <span>疫情监控权限</span>-->
<!--                            </div>-->
<!--                        </el-card>-->
<!--                    </el-col>-->
<!--                    <el-col :span="4">-->
<!--                        <el-card class="card1" shadow="never" @click.native="authorityEvent(5)">-->
<!--                            <div class="text">-->
<!--                                <el-button icon="el-icon-plus fa-2x" type="primary" circle></el-button>-->
<!--                            </div>-->
<!--                        </el-card>-->
<!--                    </el-col>-->
<!--                </el-row>-->
                <div>
                    <div class="logoText">
                        <span>XinGuan</span>
                    </div>
                </div>
            </div>
        </div>

        <!--权限的对话框-->
        <el-dialog title="角色管理" :visible.sync="dialogFormVisible" width="70%">
            <div style="margin: 0 5% 0 5%">
                <el-input placeholder="请输入相关信息进行查询" v-model="selectInfo" v-on:keyup.enter.native="searchUser">
<!--                    <el-select v-model="select" slot="prepend">-->
<!--                        <el-option label="用户名" value="1"></el-option>-->
<!--                        <el-option label="联系电话" value="2"></el-option>-->
<!--                        <el-option label="部门" value="3"></el-option>-->
<!--                    </el-select>-->
<!--                    <el-button slot="append" icon="el-icon-search"></el-button>-->
                </el-input>

                <div id="userAuthority">
                    <el-row :gutter="20">
                        <el-col :span="24">
                            <div>
                                <div v-show="OperationName==1">
                                    <el-row>
                                        <el-col :span="2">
                                            <div class="textTitle">
                                                角色名：
                                            </div>
                                        </el-col>
                                        <el-col :span="6">
                                            <div class="textItem">
                                                <el-tag>{{rname}}</el-tag>
                                            </div>
                                        </el-col>
<!--                                        <el-col :span="2">-->
<!--                                            <div class="textTitle">-->
<!--                                                创建者：-->
<!--                                            </div>-->
<!--                                        </el-col>-->
<!--                                        <el-col :span="5">-->
<!--                                            <div class="textItem">-->
<!--                                                {{roleInfo.createBy}}-->
<!--                                            </div>-->
<!--                                        </el-col>-->
<!--                                        <el-col :span="2">-->
<!--                                            <div class="textTitle">-->
<!--                                                创建时间：-->
<!--                                            </div>-->
<!--                                        </el-col>-->
<!--                                        <el-col :span="6">-->
<!--                                            <div class="textItem">-->
<!--                                                {{roleInfo.createTime}}-->
<!--                                            </div>-->
<!--                                        </el-col>-->

                                    </el-row>
                                    <br>
                                    <el-row :gutter="20">
                                        <el-col :span="24">
                                            <el-card shadow="never">
                                                <el-checkbox-group v-model="checkList">
                                                    <div v-if="this.userData.nuName=='admin'">
                                                    <el-checkbox :label="3" disabled>系统管理权限</el-checkbox>
                                                    <el-checkbox :label="4" disabled>物资管理权限</el-checkbox>
                                                    <el-checkbox :label="2" disabled>疫情监控权限</el-checkbox>
                                                        <el-checkbox :label="20" disabled>物资申请</el-checkbox>
                                                    <el-checkbox :label="17"disabled>操作日志管理权限</el-checkbox>
                                                    </div>
                                                    <div v-else>
                                                        <el-checkbox :label="3">系统管理权限</el-checkbox>
                                                        <el-checkbox :label="4">物资管理权限</el-checkbox>
                                                        <el-checkbox :label="2">疫情监控权限</el-checkbox>
                                                        <el-checkbox :label="20">物资申请</el-checkbox>
                                                        <el-checkbox :label="17">操作日志管理权限</el-checkbox>
                                                    </div>
                                                </el-checkbox-group>
                                            </el-card>
                                        </el-col>
                                    </el-row>
                                </div>
                                <div v-show="OperationName==2">
                                <el-card shadow="never">
                                    <el-row>
                                        <el-col :span="2">
                                            <div class="textTitle">
                                                姓名：
                                            </div>
                                        </el-col>
                                        <el-col :span="6">
                                            <div class="textItem">
                                                <el-tag>{{userData.nuName}}</el-tag>
                                            </div>
                                        </el-col>
                                        <el-col :span="2">
                                            <div class="textTitle">
                                                性别：
                                            </div>
                                        </el-col>
                                        <el-col :span="6">
                                            <div class="textItem">
                                                {{userData.nsex}}
                                            </div>
                                        </el-col>
                                        <el-col :span="2">
                                            <div class="textTitle">
                                                联系方式：
                                            </div>
                                        </el-col>
                                        <el-col :span="5">
                                            <div class="textItem">
                                                {{userData.nphone}}
                                            </div>
                                        </el-col>
                                    </el-row>
                                    <br>
                                    <el-row>
                                        <el-col :span="2">
                                            <div class="textTitle">
                                                部门：
                                            </div>
                                        </el-col>
                                        <el-col :span="6">
                                            <div class="textItem">
                                                {{userData.ndept}}
                                            </div>
                                        </el-col>
                                        <el-col :span="2">
                                            <div class="textTitle">
                                                用户类型：
                                            </div>
                                        </el-col>
                                        <el-col :span="6">
                                            <div class="textItem">
                                                {{userData.ntype}}
                                            </div>
                                        </el-col>
                                    </el-row>
                                </el-card>
                                <br>
                                <div>
                                    {{myAuthority.authorityName}}：
                                </div>
                                <br>
                                <el-card shadow="never">
<!--                                    <div v-show="OperationName==1">-->

<!--                                        <el-checkbox-group v-model="checkList">-->
<!--                                            <div v-if="this.userData.nuName=='admin'">-->
<!--                                            <el-checkbox :label="3" disabled>系统管理权限</el-checkbox>-->
<!--                                            <el-checkbox :label="4" disabled>物资管理权限</el-checkbox>-->
<!--                                            <el-checkbox :label="2" disabled>疫情监控权限</el-checkbox>-->
<!--                                            <el-checkbox :label="17"disabled>操作日志管理权限</el-checkbox>-->
<!--                                            </div>-->
<!--                                            <div v-else>-->
<!--                                                <el-checkbox :label="3">系统管理权限</el-checkbox>-->
<!--                                                <el-checkbox :label="4">物资管理权限</el-checkbox>-->
<!--                                                <el-checkbox :label="2">疫情监控权限</el-checkbox>-->
<!--                                                <el-checkbox :label="17">操作日志管理权限</el-checkbox>-->
<!--                                            </div>-->
<!--                                        </el-checkbox-group>-->


<!--                                    </div>-->
<!--                                    <div v-show="OperationName==2">-->
                                        <el-radio-group v-model="radio">
                                            <div v-if="this.userData.nuName=='admin'">
                                                <el-radio :label="1" disabled>管理员</el-radio>
                                                <el-radio :label="2" disabled>审核员</el-radio>
                                                <el-radio :label="3" disabled>单位用户</el-radio>
                                                <el-radio :label="4" disabled>普通用户</el-radio>
                                            </div>
                                            <div v-else>
                                                <el-radio :label="1" >管理员</el-radio>
                                                <el-radio :label="2" >审核员</el-radio>
                                                <el-radio :label="3" >单位用户</el-radio>
                                                <el-radio :label="4" >普通用户</el-radio>
                                            </div>
                                        </el-radio-group>
<!--                                    </div>-->

<!--                                    <el-checkbox v-model="checked">{{myAuthority.authorityName}}</el-checkbox>-->
                                </el-card>
                                </div>
                                <br>
                                <el-divider></el-divider>
                            </div>
                        </el-col>
                    </el-row>
                </div>
            </div>
            <div slot="footer" class="dialog-footer">
                <el-button @click="dialogFormVisible = false">取 消</el-button>
                <el-button type="primary" @click="submit">确 定</el-button>
            </div>
        </el-dialog>
    </div>
</template>

<script>
    import {getLog, getNums} from "../../services/systemService";
    import * as echarts from 'echarts';
    import {getAuthority, getRole, getUser, searchUser, updateAuthority, updateRole} from "../../services/userService";
    export default {
        data(){
            return {
                checked:false,
                checkList: [],
                radio:'',
                selectInfo:'',
                select:"",
                userInfo:{
                    username:'',
                    password:'',
                    phone:'',
                    ntype:'',
                    sex:'',
                    dept:'',
                    createBy:"",
                    state:"1",
                },
                roleInfo:'',
                userData:"",
                roleData:'',
                dialogFormVisible: false,
                loading:true,
                fullscreenLoading:true,
                logsInfo:{
                    code:'',
                    event:'',
                    operator:'',
                    state:''
                },
                number:{
                    logsNum:'',
                    recentLogsNum:'',
                    userOperateNum:'',
                },
                myAuthority:{
                  authorityName:'',
                  authorityList:'',
                },
                OperationName:"",
                rname:"",
            }
        },
        computed:{
            waitting(){
                return this.format_number(this.number.logsNum);
            },
            waitting1(){
                return this.format_number(this.number.recentLogsNum);
            },
            waitting2(){
                return this.format_number(this.number.userOperateNum);
            },
        },
        methods:{
            changeLoading(){
                this.loading = false;
            },
            format_number(n){
                var b=parseInt(n).toString();
                var len=b.length;
                if(len<=3){return b;}
                var r=len%3;
                return r>0?b.slice(0,r)+","+b.slice(r,len).match(/\d{3}/g).join(","):b.slice(r,len).match(/\d{3}/g).join(",");
            },
            authorityEvent(index){
                this.radio="";
                this.checkList =[];
                if(index==4){
                    this.myAuthority.authorityName = '权限';
                    this.OperationName = 1;
                }
                else if(index==3){
                    this.myAuthority.authorityName = '角色';
                    this.OperationName = 2;
                }
                this.selectInfo='';
                this.select = '';
                this.dialogFormVisible=true;
                if(document.getElementById('userAuthority')!=null){
                    document.getElementById('userAuthority').style.setProperty("display", 'none');
                }
            },
            searchUser(){
                // console.log(this.OperationName);
                this.userData ="";
                if(this.selectInfo.trim()!='') {
                    // console.log(this.selectInfo);
                    if(this.OperationName==2) {
                        getUser(this.selectInfo.trim()).then(res => {
                            // console.log(res.data);
                            if (res.data.data.length == 2) {
                                this.userData = res.data.data[0];
                                this.roleData = res.data.data[1] != null ? res.data.data[1] : '';
                                if (res.data.data[1] != null) {
                                    this.radio = this.roleData.rid;
                                }
                                document.getElementById('userAuthority').style.setProperty("display", 'revert');
                            } else {
                                this.$notify({
                                    title: '警告',
                                    message: '未查到相关数据',
                                    type: 'warning'
                                });
                            }
                        });
                    }else if(this.OperationName==1){
                        getRole(this.selectInfo).then(res=>{
                            // console.log(res.data);
                            if(res.data.data!=null&&this.roleInfo!=null){
                                this.roleInfo = res.data.data;
                                this.rname = res.data.data.rname;
                                getAuthority(this.selectInfo).then(response=>{
                                    // console.log(response.data.data);
                                    this.checkList =response.data.data;
                                    // console.log(this.checkList);
                                    document.getElementById('userAuthority').style.setProperty("display", 'revert');
                                })
                            }else{
                                this.$notify({
                                    title: '提示',
                                    message: '未查到相关数据',
                                    type: 'info'
                                });
                            }

                        })

                    }

                }else{
                    this.$notify({
                        title: '提示',
                        message: '请输入姓名',
                        type: 'error'
                    });
                }
            },
            submit(){
                if(this.userData!=null||this.radio!=''||this.checkList!=[]){
                    if(this.OperationName==1){
                        // console.log(this.checkList.toString());
                        updateAuthority(this.rname,this.checkList.toString()).then(res=>{
                            // console.log(res.data);
                            if(res.data.code==200){
                                this.$notify({
                                    title: '提示',
                                    message: '操作成功',
                                    type: 'success'
                                });
                            }

                        });
                    }
                    else if(this.OperationName==2){
                        updateRole(this.userData.nid,this.radio).then(res=>{
                            // console.log(res.data);
                            if(res.data.code==200){
                                this.$notify({
                                    title: '提示',
                                    message: '操作成功',
                                    type: 'success'
                                });
                            }
                        })
                    }

                }else{
                    this.$notify({
                        title: '提示',
                        message: '错误',
                        type: 'error'
                    });
                }
                this.dialogFormVisible=false;
                document.getElementById('userAuthority').style.setProperty("display", 'none');
            },

        },
        mounted() {
            document.getElementById("roleManage").scrollIntoView({ block: 'start', behavior: 'smooth' });
            setTimeout(this.changeLoading,1000);
        }
    }
</script>

<style scoped>
.card1{
    min-height: 200px;
    border-radius: 15px;
    transition-delay: revert;
}
.card2{
    border-radius: 15px;
}
.card1:hover{
    box-shadow: 0px 20px 30px rgba(0,0,0,0.1);
    position: relative;
    top: -5px;
    cursor:pointer;
}
.text{
    user-select: none;
    display: flex;
    text-align: center;
    font-weight: 700;
    justify-content: center;
    align-items: center;
    display: flex;
    font-size: 20px;
    padding-top: 19%;
}
.myImage{
    float: right;
    user-select: none;
    padding-top: 1%;
}

.myImage>img{
    border-radius: 50%;
    box-shadow: 0px 50px 1px rgba(0,0,0,0.1);
    transition: 2s;
}
.myImage>img:hover{
    border-radius: 50%;
    box-shadow: 0px 1px 1px rgba(0,0,0,0.3);
}

.myImage1{
    float: right;
    user-select: none;
    padding-top: 1%;
    transform:scaleX(-1);
}

.myImage1>img{
    border-radius: 0%;
    box-shadow: 0px 0px 0px rgba(0,0,0,0.1);
    transition: 1s;
}
.myImage1>img:hover{
    border-radius: 20%;
    box-shadow: 0px 20px 1px rgba(0,0,0,0.1);
}

#userAuthority{
    padding:5% 4% 5% 4%;
    display: none;
}
    .textTitle{
        font-weight: 600;
    }
.textItem{
    display: inline-block;
}
.logoText{
    user-select:none;
    position: fixed;
    right: 4%;
    bottom: 2%;
    font: 700 40px '华文琥珀' ;
}
</style>
