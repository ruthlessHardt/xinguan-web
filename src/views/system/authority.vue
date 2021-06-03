<template>
    <div id="authority"
         v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading" >
        <div>
            <el-tooltip class="item" effect="dark" content="权限管理主要是针对几大模块的权限管理" placement="bottom">
                <div style="font-weight: 700;font-size: 25px;padding:2%;width: 300px">
                    <i class="el-icon-milk-tea fa-2x"></i><i class="el-icon-chicken fa-2x"></i>
                    权限管理
                </div>
            </el-tooltip>

            <el-divider></el-divider>
            <br>
            <div style="padding:3%">
                <el-row :gutter="25">
                    <el-col :span="5">
                        <el-card class="card1" shadow="never" @click.native="authorityEvent(1)">
                            <div class="text">
                                <span>系统管理权限</span>
                            </div>
                        </el-card>
                    </el-col>
                    <el-col :span="5">
                        <el-card class="card1" shadow="never" @click.native="authorityEvent(2)">
                            <div class="text">
                                <span>物资管理权限</span>
                            </div>
                        </el-card>
                    </el-col>
                    <el-col :span="5">
                        <el-card class="card1" shadow="never" @click.native="authorityEvent(3)">
                            <div class="text">
                                <span>日志管理权限</span>
                            </div>
                        </el-card>
                    </el-col>
                    <el-col :span="5">
                        <el-card class="card1" shadow="never" @click.native="authorityEvent(4)">
                            <div class="text">
                                <span>疫情监控权限</span>
                            </div>
                        </el-card>
                    </el-col>
                    <el-col :span="4">
                        <el-card class="card1" shadow="never" @click.native="authorityEvent(5)">
                            <div class="text">
                               <el-button icon="el-icon-plus fa-2x" type="primary" circle></el-button>
                            </div>
                        </el-card>
                    </el-col>
                </el-row>
                <br><br>
                <el-tooltip class="item" effect="dark" content="要乖哟~" placement="top-end">
                    <div class="myImage">
                        <img src="../../assets/1.png"  width="290px" height="auto">
                    </div>
                </el-tooltip>
                <div>
                    <div class="logoText">
                        <span>XinGuan</span>
                    </div>
                </div>

            </div>
        </div>

        <!--权限的对话框-->
        <el-dialog title="权限管理" :visible.sync="dialogFormVisible" width="70%">
            <div style="margin: 0 5% 0 5%">
                <el-input placeholder="请输入用户信息进行查询" v-model="selectInfo" v-on:keyup.enter.native="searchUser">
                    <el-select v-model="select" slot="prepend" placeholder="请选择">
                        <el-option label="用户名" value="1"></el-option>
                        <el-option label="联系电话" value="2"></el-option>
                        <el-option label="部门" value="3"></el-option>
                    </el-select>
                    <el-button slot="append" icon="el-icon-search"></el-button>
                </el-input>
                <div id="userAuthority">
                    <el-row :gutter="20">
                        <el-col :span="24">
                            <el-card shadow="never">
                                <el-row>
                                    <el-col :span="2">
                                        <div class="textTitle">
                                            姓名：
                                        </div>
                                    </el-col>
                                    <el-col :span="6">
                                        <div class="textItem">
                                            {{userInfo.username}}
                                        </div>
                                    </el-col>
                                    <el-col :span="2">
                                        <div class="textTitle">
                                            性别：
                                        </div>
                                    </el-col>
                                    <el-col :span="6">
                                        <div class="textItem">
                                            男
                                        </div>
                                    </el-col>
                                    <el-col :span="2">
                                        <div class="textTitle">
                                            联系方式：
                                        </div>
                                    </el-col>
                                    <el-col :span="5">
                                        <div class="textItem">
                                            18312315021
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
                                            警务部
                                        </div>
                                    </el-col>
                                    <el-col :span="2">
                                        <div class="textTitle">
                                            用户类型：
                                        </div>
                                    </el-col>
                                    <el-col :span="6">
                                        <div class="textItem">
                                            普通用户
                                        </div>
                                    </el-col>
                                </el-row>
                            </el-card>
                            <br>
                            <div>
                            {{myAuthority.authorityName}}权限:
                            </div>
                            <br>
                            <el-card shadow="never">
                                <el-checkbox-group v-model="checkList">
                                    <el-checkbox label="系统管理权限"></el-checkbox>
                                    <el-checkbox label="物资管理权限"></el-checkbox>
                                    <el-checkbox label="日志管理权限"></el-checkbox>
                                    <el-checkbox label="疫情监控权限" disabled></el-checkbox>
                                </el-checkbox-group>
                            </el-card>
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
    export default {
        data(){
            return {
                checkList: ['系统管理权限','复选框 A'],
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
                tableData: [{
                    date: '2021-03-12',
                    name: '李萌',
                    events: '审核物资（口罩、医用药水酒精）',
                    msgInfo:'加派人手',
                    nums:10026,
                }, {
                    date: '2021-03-14',
                    name: '程实',
                    events: '用户新增',
                    msgInfo:'疑似攻击',
                    nums:9330,
                }, {
                    date: '2021-03-13',
                    name: '章张',
                    events: '用户信息修改',
                    msgInfo:'疑似攻击',
                    nums:9012,
                },{
                    date: '2021-03-11',
                    name: '王而而',
                    events: '物资申请',
                    msgInfo:'判定事件紧急',
                    nums:731,
                }, {
                    date: '2021-03-16',
                    name: '啊虎',
                    events: '物资入库',
                    msgInfo:'判定事件紧急',
                    nums:611,
                }],
                myAuthority:{
                  authorityName:'',
                  authorityList:'',
                },
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
                //系统管理权限
                if(index==1){
                    this.myAuthority.authorityName = '系统管理权限';
                }
                //物资管理权限
                else if(index==2){
                    this.myAuthority.authorityName = '物资管理权限';
                }
                //日志管理权限
                else if(index==3){
                    this.myAuthority.authorityName = '日志管理权限';
                }
                //疫情监控权限
                else if(index==4){
                    this.myAuthority.authorityName = '疫情监控权限';
                }
                this.selectInfo='';
                this.dialogFormVisible=true;
                if(document.getElementById('userAuthority')!=null){
                    document.getElementById('userAuthority').style.setProperty("display", 'none');
                }
            },
            searchUser(){
                this.userInfo.username = this.selectInfo;
                if(this.userInfo.username!=''){
                    document.getElementById('userAuthority').style.setProperty("display", 'revert');
                }
            },
            submit(){
                this.dialogFormVisible=false;
                document.getElementById('userAuthority').style.setProperty("display", 'none');
            },

        },
        mounted() {
            document.getElementById("authority").scrollIntoView({ block: 'start', behavior: 'smooth' });
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
    user-select: none;
    position: fixed;
    right: 7%;
    bottom: 2%;
    font: 700 40px '华文琥珀' ;
}
</style>
