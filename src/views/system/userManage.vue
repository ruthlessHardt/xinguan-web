<template>
    <div id="userManage" v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <div style="padding-left: 0%">
            <el-row :gutter="20">
                <el-col :span="24">
                    <el-row :gutter="30">
                        <el-col :span="24">
                            <el-card shadow="never" style="border-bottom: 1px solid #2B2C3E">
                                <el-row>
                                    <el-col :span="1">
                                        <el-card style="width: 10px;height: 25px;background-color: #2B2C3E"></el-card>
                                    </el-col>
                                    <el-col :span="22">
                                        <span style="font-size: 20px;font-weight: 700">数据概要</span>
                                    </el-col>
                                </el-row>
                            </el-card>
                        </el-col>
<!--                        <el-col :span="8">-->

<!--                        </el-col>-->
                    </el-row>
                    <br>
                    <el-row :gutter="20">
                        <el-col :span="24">
                        <el-col :span="8">
                            <el-card class="card" shadow="never">
                                <div class="dataNum numColor">
                                    {{waitting}}
                                </div>
                                <span>用户数</span><br>
                                <span class="numColor1">{{date}}</span>
                            </el-card>
                        </el-col>
                        <el-col :span="8">
                            <el-card class="card" shadow="never">
                                <div class="dataNum numColor">
                                    {{waitting1}}
                                </div>
                                <span>近期新增用户数</span><br>
                                <span class="numColor1">{{date}}</span>
                            </el-card>
                        </el-col>
                        <el-col :span="8">
                            <el-card class="card" shadow="never">
                                <div class="dataNum numColor">
                                    {{waitting2}}
                                </div>
                                <span>普通用户数</span><br>
                                <span class="numColor1">{{date}}</span>
                            </el-card>
                        </el-col>
                         </el-col>

                    </el-row>
                    <br>
                </el-col>
            </el-row>
            <el-row :gutter="20">
                <el-col :span="14">
                    <el-card shadow="never">
                        <el-row>
                            <el-col :span="1">
                                <el-card style="width: 10px;height: 25px;background-color: #2B2C3E"></el-card>
                            </el-col>
                            <el-col :span="22">
                                <span style="font-size: 20px;font-weight: 700">数据占比</span>
                            </el-col>
                        </el-row>
                    </el-card>
                </el-col>
            </el-row>
            <br>
            <el-row :gutter="20">
                <el-col :span="24">
                    <el-card shadow="never">
                        <div id="mychart" style="width: 100%;height: 400px"></div>
                    </el-card>
                </el-col>
            </el-row>
            <br>
            <el-row>
                <el-col :span="24">
                    <el-card shadow="never">
                        <el-row>
                            <el-col :span="1">
                                <el-card style="width: 10px;height: 25px;background-color: #2B2C3E"></el-card>
                            </el-col>
                            <el-col :span="19">
                                <span style="font-size: 20px;font-weight: 700">用户列表</span>
                            </el-col>
                            <el-col :span="2">
                                <el-button type="info"  class="btn" @click="newAdd"><div class="con">新增用户</div></el-button>
                            </el-col>
                            <el-col :span="2">
                                <el-button type="info" class="btn" @click="searchForUser"><div class="con">用户直查</div></el-button>
                            </el-col>
                        </el-row>
                    </el-card>
                </el-col>
            </el-row>
            <br>
<!--            <el-card shadow="never">-->
<!--                <el-row>-->
<!--                    <el-col :span="1">-->
<!--                        <el-card style="width: 10px;height: 25px;background-color: #2B2C3E"></el-card>-->
<!--                    </el-col>-->
<!--                    <el-col :span="22">-->
<!--                        <span style="font-size: 20px;font-weight: 700">用户管理操作</span>-->
<!--                    </el-col>-->
<!--                </el-row>-->
<!--            </el-card>-->
<!--            <el-row :gutter="20">-->
<!--                <el-col :span="8">-->
<!--                    <el-row :gutter="20">-->
<!--                        <el-col :span="5">-->
<!--                            <el-button type="info"  class="btn" @click="newAdd"><div class="con">新增用户</div></el-button>-->
<!--                        </el-col>-->
<!--                        <el-col :span="5">-->
<!--                            <el-button type="info" class="btn" @click="searchForUser"><div class="con">用户直查</div></el-button>-->
<!--                        </el-col>-->
<!--                    </el-row>-->
<!--                    <br>-->
<!--                </el-col>-->
<!--            </el-row>-->
            <el-row :gutter="20">
                <el-col :span="24">
                        <el-card class="card1" shadow="never">
                        <el-table
                                :data="tableData.list"
                                style="width: 100%;">
                            <div v-for="(item,index) in table" :key="index">
                                <el-table-column
                                        :label="item.name"
                                        :prop="item.dataName"
                                >
                                </el-table-column>
                            </div>
                            <el-table-column
                                    label="操作"
                                    align="center">
<!--                                <template slot="header" slot-scope="scope">-->
<!--                                    <el-input-->
<!--                                            v-model="search"-->
<!--                                            size="mini"-->
<!--                                            placeholder="输入关键字搜索"/>-->
<!--                                </template>-->
                                <template slot-scope="scope">
                                    <el-button
                                            v-show="scope.row.nid!=1"
                                            size="mini"
                                            type="info"
                                            @click="bianji(scope.row)">信息编辑</el-button>
                                    <el-button
                                            v-show="scope.row.nid!=1"
                                            size="mini"
                                            type="danger"
                                            @click="handleDelete(scope.row)">注销账号</el-button>
                                </template>
                            </el-table-column>
                        </el-table>
                        <br>
                        <el-pagination
                                layout="prev, pager, next"
                                background
                                small
                                :page-size="pageSize"
                                @current-change="handleCurrentChange"
                                :current-page="pageIndex"
                                style="background-color: transparent;text-align: center;"
                                :total="totalPage">
                        </el-pagination>
                    </el-card>
                </el-col>
            </el-row>
            <br>
            <el-row>
                <div style="width: 100%;height:230px;background: url('https://ouch-cdn2.icons8.com/MoTfbyiKQZHPKZeAdaG8Yu2s1GWjXpe-PBmGow2uaG8/rs:fit:999:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvODE0/LzhkNjkyYzVjLWMz/OTUtNDRlOS1hYmQ1/LTM2ZTE0NjdlMGQx/Ni5wbmc.png')90% center;background-repeat: no-repeat;background-size: contain"></div>
                <br>
            </el-row>
        </div>
        <!--编辑用户信息的抽屉-->
        <el-drawer
                title="用户信息修改"
                :visible.sync="fromdialog"
                direction="ltr"
                ref="drawer"
                size="650px"
        >
            <div class="demo-drawer__content">
                <div style="margin: 0 5% 0 5%">
                    <el-form ref="form" :model="form" label-width="150px" size="default" >
                    <el-form-item label="姓名" class="form">
                        <el-input v-model="form.username" style="width: 250px;" :placeholder="form.username"></el-input>
                    </el-form-item>
                    <el-form-item label="性别" class="form">
                        <el-switch
                                v-model="sexSwitch"
                                active-text="男"
                                inactive-color="#ff4949"
                                inactive-text="女"
                                @change="changeSwitch">
                        </el-switch>
                    </el-form-item>
                    <el-form-item label="联系电话" class="form">
                        <el-input v-model="form.phone" style="width: 250px;" :placeholder="form.phone"></el-input>
                    </el-form-item>
                        <el-form-item label="密码" class="form" prop="password" v-show="loginUser.username==='admin'">
                            <el-input v-model="form.password" show-password style="width: 250px;" :placeholder="form.password"></el-input>
                        </el-form-item>
                    <el-form-item label="部门" class="form">
                        <el-select v-model="form.dept" :placeholder="form.dept">
                            <el-option label="智慧警务事业部门" value="智慧警务事业部门"></el-option>
                            <el-option label="智慧政务事业部门" value="智慧政务事业部门"></el-option>
                            <el-option label="公共技术中心" value="公共技术中心"></el-option>
                            <el-option label="总经办" value="总经办"></el-option>
                            <el-option label="售前部" value="售前部"></el-option>
                            <el-option label="非公司人员" value="非公司人员"></el-option>
                        </el-select>
                    </el-form-item>
                    <el-form-item label="状态(0/1)" class="form">
                        <el-radio-group v-model="form.state" size="medium">
                            <el-radio border label="0" style="color: #2B2C3E">删除</el-radio>
                            <el-radio border label="1">正常</el-radio>
                        </el-radio-group>
                    </el-form-item>
                    <el-form-item size="large">
                        <el-button type="primary" @click="onSubmit()">确认修改</el-button>
                        <el-button  @click="cancelForm">取消</el-button>
                    </el-form-item>
                </el-form>
                </div>
            </div>
        </el-drawer>
        <!--新增用户的对话框-->
        <el-dialog title="新增用户" :visible.sync="dialogFormVisible">
        <div style="margin: 0 5% 0 5%">
            <el-form ref="form" :model="userInfo" :rules="rules" label-width="270px" size="default">
                <el-form-item label="姓名" prop="username">
                    <el-input v-model="userInfo.username" style="width: 250px;"></el-input>
                </el-form-item>
                <el-form-item label="性别">
                    <el-switch
                            v-model="sexSwitch"
                            active-text="男"
                            inactive-color="#ff4949"
                            inactive-text="女"
                            @change="changeSwitch">
                    </el-switch>
                </el-form-item>
                <el-form-item label="类型是否为普通用户">
                    <el-checkbox v-model="checked">是</el-checkbox>
                </el-form-item>
                <el-form-item label="联系电话" prop="phone">
                    <el-input v-model="userInfo.phone" style="width: 250px;"></el-input>
                </el-form-item>
                <el-form-item label="部门">
                    <el-select v-model="userInfo.dept">
                        <el-option label="智慧警务事业部门" value="智慧警务事业部门"></el-option>
                        <el-option label="智慧政务事业部门" value="智慧政务事业部门"></el-option>
                        <el-option label="公共技术中心" value="公共技术中心"></el-option>
                        <el-option label="总经办" value="总经办"></el-option>
                        <el-option label="售前部" value="售前部"></el-option>
                        <el-option label="非公司人员" value="非公司人员"></el-option>
                    </el-select>
                </el-form-item>
                <el-form-item label="创建者">
                    <el-input
                            style="width: 250px;"
                            v-model="userInfo.createBy"
                            :disabled="true">
                    </el-input>
                </el-form-item>
                <el-form-item label="状态(0/1)">
                    <el-radio-group v-model="userInfo.state" size="medium" disabled>
                        <el-radio border label="0">删除状态</el-radio>
                        <el-radio border label="1">正常状态</el-radio>
                    </el-radio-group>
                </el-form-item>
            </el-form>
        </div>
        <div slot="footer" class="dialog-footer">
            <el-button @click="dialogFormVisible = false">取 消</el-button>
            <el-button type="primary" @click="addSubmit">确 定</el-button>
        </div>
    </el-dialog>
        <!--用户直查的对话框-->
        <el-dialog title="用户直查" :visible.sync="dialogFormVisible1">
            <div style="margin: 0 5% 0 5%">
                <el-form ref="form" :model="userInfo" :rules="rules" label-width="270px" size="default">
                    <el-form-item label="姓名">
                        <el-input v-model="userInfo.username" style="width: 250px;"></el-input>
                    </el-form-item>
                    <el-form-item label="性别(是否勾选性别)">
                        <el-checkbox v-model="checked1">
                            <el-switch
                                    v-model="sexSwitch"
                                    active-text="男"
                                    inactive-color="#ff4949"
                                    inactive-text="女"
                                    @change="changeSwitch">
                            </el-switch>
                        </el-checkbox>

                    </el-form-item>
                    <el-form-item label="类型是否为普通用户">
                        <el-checkbox v-model="checked">是</el-checkbox>
                    </el-form-item>
                    <el-form-item label="联系电话" prop="tel">
                        <el-input v-model="userInfo.phone" style="width: 250px;"></el-input>
                    </el-form-item>
                    <el-form-item label="部门">
                        <el-select v-model="userInfo.dept">
                            <el-option label="智慧警务事业部门" value="智慧警务事业部门"></el-option>
                            <el-option label="智慧政务事业部门" value="智慧政务事业部门"></el-option>
                            <el-option label="公共技术中心" value="公共技术中心"></el-option>
                            <el-option label="总经办" value="总经办"></el-option>
                            <el-option label="售前部" value="售前部"></el-option>
                            <el-option label="非公司人员" value="非公司人员"></el-option>
                        </el-select>
                    </el-form-item>
<!--                    <el-form-item label="创建者">-->
<!--                        <el-input-->
<!--                                style="width: 250px;"-->
<!--                                v-model="userInfo.createBy"-->
<!--                                :disabled="true">-->
<!--                        </el-input>-->
<!--                    </el-form-item>-->
                    <el-form-item label="状态(0/1)">
                        <el-radio-group v-model="userInfo.state" size="medium" disabled>
                            <el-radio border label="0">删除状态</el-radio>
                            <el-radio border label="1">正常状态</el-radio>
                        </el-radio-group>
                    </el-form-item>
                </el-form>
            </div>
            <div slot="footer" class="dialog-footer">
                <el-button @click="dialogFormVisible1 = false">取 消</el-button>
                <el-button type="primary" @click="searchSubmit">确 定</el-button>
            </div>
        </el-dialog>
        <!--查询到的用户列表-->
        <el-dialog title="用户查询结果" :visible.sync="dialogTableVisible2" width="90%" :show-close="false" top="6vh">
            <el-card shadow="hover">
                <el-table
                        :data="userData.list"
                        style="width: 100%;background-color: transparent;border: none">
                    <div v-for="(item,index) in table" :key="index">
                        <el-table-column
                                :label="item.name"
                                :prop="item.dataName">
                        </el-table-column>
                    </div>
                    <el-table-column
                            align="right">
                        <template slot-scope="scope">
                            <el-button
                                    size="mini"
                                    type="success"
                                    @click="bianji(scope.row)">编辑</el-button>
                            <el-button
                                    size="mini"
                                    type="danger"
                                    @click="handleDelete(scope.row)">删除</el-button>
                        </template>
                    </el-table-column>
                </el-table>
                <el-pagination
                        layout="prev, pager, next"
                        background
                        small
                        :page-size="pageSize1"
                        @current-change="handleCurrentChange1"
                        :current-page="pageIndex"
                        style="background-color: transparent;text-align: center;"
                        :total="totalPage1">
                </el-pagination>
            </el-card>
            <el-card shadow="never">
                    <el-button type="primary" style="width: 250px;float: right" @click="ok">确认</el-button>>
            </el-card>
        </el-dialog>
    </div>

</template>
<script>
    import * as echarts from 'echarts';
    import {
        addUser,
        dataOverview,
        deleteUser,
        getNum,
        getPercentage,
        searchUser,
        updateUser
    } from "../../services/userService";
    import {getLog} from "../../services/systemService";
    export default {
        methods: {
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


            goto(ref){
                if(ref=='yonghu'){
                    document.getElementById('yonghu').scrollIntoView({ block: 'start', behavior: 'smooth' });
                }else if(ref=='liebiao'){
                    document.getElementById('liebiao').scrollIntoView({ block: 'start', behavior: 'smooth' });
                }
            },
            cancelForm() {
                this.loading = false;
                this.fromdialog = false;
                clearTimeout(this.timer);
            },
            onSubmit() {
                this.form.sex = this.sexSwitch==true?'男':'女';
                // console.log(this.form);
                updateUser(this.form).then(res1=>{
                    // console.log(res1.data);
                    if(res1.data.code == 200){
                        this.fromdialog = false;
                    }
                    this.$notify({
                        title: '提示',
                        message: res1.data.msg,
                        type: 'info'
                    });
                    //更新完刷新
                    dataOverview().then(res=>{
                        this.number.userNum = res.data.data[0];
                        this.number.recentAddNum = res.data.data[1];
                        this.number.generalNum = res.data.data[2];
                        // console.log(res);
                    });
                    searchUser('',this.currentPage).then(res=>{
                        this.pageSize = res.data.data.pageSize;
                        this.totalPage = res.data.data.total;
                        this.tableData = res.data.data;
                    });
                    searchUser(this.userInfo,this.currentPage).then(res=>{
                        this.pageSize = res.data.data.pageSize;
                        this.totalPage = res.data.data.total;
                        this.userData = res.data.data;
                        // this.$set(this.userData)
                    });
                });

            },
            bianji(item){
                this.fromdialog=true;
                this.form.nid = item.nid;
                this.form.username = item.nuName;
                this.form.password = item.nPassword;
                this.sexSwitch = item.nsex=="男"?true:false;
                this.form.dept = item.ndept;
                this.form.phone = item.nphone;
                this.form.state =item.state;
                // console.log(item);
                // console.log(this.form);
                // console.log(this.sexSwitch);
            },
            handleDelete(item){
                deleteUser(item.nid).then(res=>{
                    // console.log(res);
                    //删除完刷新
                    searchUser('',this.currentPage).then(res=>{
                        this.tableData = res.data.data;
                    });
                    searchUser(this.userInfo,this.currentPage).then(res=>{
                        this.pageSize = res.data.data.pageSize;
                        this.totalPage = res.data.data.total;
                        this.userData = res.data.data;
                        // this.$set(this.userData)
                    });
                });
            },
            handleCurrentChange(val) {
                this.currentPage = val;
                searchUser('',val).then(res=>{
                    this.tableData = res.data.data;
                });
            },
            handleCurrentChange1(val){
                this.currentPage = val;
                searchUser(this.userInfo,val).then(res=>{
                    this.userData = res.data.data;
                });
            },
            changeSwitch (data) {
                // console.log(data)
            },
            newAdd(){
                this.userInfo.sex = '';
                this.userInfo.dept='';
                this.userInfo.username='';
                this.userInfo.password ='';
                this.userInfo.phone='';
                this.userInfo.createBy = localStorage.getItem("name");
                this.dialogFormVisible = true;
                this.checked = false;
            },
            addSubmit(){
                if(this.userInfo.username!=''&&this.userInfo.phone!=''){
                    if(this.userInfo.username.trim().length<=6&&this.userInfo.phone.trim().length==11){
                        this.userInfo.sex = this.sexSwitch==true?'男':'女';
                        this.userInfo.ntype = this.checked==true?'普通用户':'';
                        this.userInfo.createBy = localStorage.getItem("name");
                        // console.log(this.userInfo);
                        addUser(this.userInfo).then(res=>{
                            // console.log(res);
                            this.$notify({
                                title: '提示',
                                message: res.data.msg,
                                type: 'info'
                            });
                            dataOverview().then(res=>{
                                this.number.userNum = res.data.data[0];
                                this.number.recentAddNum = res.data.data[1];
                                this.number.generalNum = res.data.data[2];
                                // console.log(res);
                            });
                            searchUser('',this.currentPage).then(res=>{
                                this.pageSize = res.data.data.pageSize;
                                this.totalPage = res.data.data.total;
                                this.tableData = res.data.data;
                                // this.total = Math.ceil((res.data.data.total/res.data.data.pageSize))+1;
                                // console.log(res.data.data);
                            });
                        })
                        this.dialogFormVisible = false;
                    }else{
                        this.$notify({
                            title: '提示',
                            message: "请按要求正确填写信息",
                            type: 'warning'
                        });
                    }
                }else{
                    this.$notify({
                        title: '提示',
                        message: "请将信息填写完整",
                        type: 'info'
                    });
                }

            },
            searchForUser(){
                this.userInfo.sex = '';
                this.userInfo.dept='';
                this.userInfo.username='';
                this.userInfo.ntype='';
                this.userInfo.password ='';
                this.userInfo.phone='';
                this.checked = false;
                this.dialogFormVisible1 = true;
                // this.tableData = [];
                this.checked1="";
            },
            searchSubmit(){
                this.userInfo.ntype = this.checked==true?"普通用户":"";
                this.userInfo.sex = this.checked1==true?(this.sexSwitch==true?"男":"女"):'';
                searchUser(this.userInfo,1).then(res=>{
                    this.pageSize1 = res.data.data.pageSize;
                    this.totalPage1 = res.data.data.total;
                    this.userData = res.data.data;
                    this.dialogTableVisible2 = true;
                    this.dialogFormVisible1 = false;
                });
                // console.log(this.userInfo);
            },
            ok(){
                this.dialogTableVisible2 = false;
                searchUser('',1).then(res=>{
                    this.pageSize = res.data.data.pageSize;
                    this.totalPage = res.data.data.total;
                    this.tableData = res.data.data;
                });
            },
            goTo(){
                this.$router.push("/roleManage");
            },
            getLogs(){
                this.$router.push("/OperatorLogs");
            },
            changeDate(){
                let aDate = new Date();
                this.date = aDate.getFullYear()+"/"+(aDate.getMonth()+1)+"/"+aDate.getDate();
                // this.date = aDate.getFullYear()+"/"+(aDate.getMonth()+1)+"/"+aDate.getDate()
                //     +" "+aDate.getHours()+":"+aDate.getMinutes()+":"+aDate.getSeconds();
            },
        },
        data() {
            return {
                date:'',
                loginUser:{
                  username:localStorage.getItem("name"),
                },
                dialogTableVisible2:false,
                dialogFormVisible1:false,
                currentPage:'',
                pageSize:10,
                pageSize1:10,
                totalPage1:0,
                checked:'',
                checked1:'',
                dialogFormVisible: false,
                pageIndex: 1,
                total:0,
                sexSwitch:false,
                timer: null,
                loading:true,
                dialog: false,
                fromdialog:false,
                fullscreenLoading:true,
                form: {
                    nid:'',
                    username: '',
                    password:'',
                    sex:'',
                    phone:"",
                    dept:"",
                    state:1,
                },
                rules:{
                    username: [
                        { required: true, message: '请输入姓名', trigger: 'blur' },
                        { min:1, max:6, message: '长度不得超过6字符', trigger: 'blur' }
                    ],
                    phone: [
                        { required: true, message: '请输入手机号', trigger: 'blur' },
                        { min: 11, max:11, message: '请输入有效手机号', trigger: 'blur' }
                    ],
                    tel: [
                        { min: 11, max:11, message: '请输入有效手机号', trigger: 'blur' }
                    ],
                },
                userData:{
                    state:{
                        name:'状态',
                        dataName:'state',
                    },
                    nid:{
                        name:'ID',
                        dataName:'nid',
                    },
                    nuName:{
                        name:'姓名',
                        dataName:'nuName',
                    },
                    nsex:{
                        name:'性别',
                        dataName:'nsex',
                    },
                    ndept:{
                        name:'部门',
                        dataName:'ndept',
                    },
                    ntype:{
                        name:'用户类型',
                        dataName:'ntype',
                    },
                    createBy:{
                        name:'创建者',
                        dataName:'createBy',
                    },
                    // avatar:{
                    //     name:'头像',
                    //     dataName:'avatar',
                    // },
                    nphone:{
                        name:'联系电话',
                        dataName:'nphone',
                    },

                    createTime:{
                        name:'创建时间',
                        dataName:'createTime',
                    },
                    updateTime:{
                        name:'更新时间',
                        dataName:'updateTime',
                    }
                },
                table: {
                    // state:{
                    //     name:'状态',
                    //     dataName:'state',
                    // },
                    // nid:{
                    //     name:'ID',
                    //     dataName:'nid',
                    // },
                    nphone:{
                        name:'联系电话',
                        dataName:'nphone',
                    },
                    nuName:{
                        name:'姓名',
                        dataName:'nuName',
                    },
                    nsex:{
                        name:'性别',
                        dataName:'nsex',
                    },
                    ndept:{
                        name:'部门',
                        dataName:'ndept',
                    },
                    ntype:{
                        name:'用户类型',
                        dataName:'ntype',
                    },
                    createBy:{
                        name:'创建者',
                        dataName:'createBy',
                    },
                    // avatar:{
                    //     name:'头像',
                    //     dataName:'avatar',
                    // },


                    // createTime:{
                    //     name:'创建时间',
                    //     dataName:'createTime',
                    // },
                    // updateTime:{
                    //     name:'更新时间',
                    //     dataName:'updateTime',
                    // }
                },
                formLabelWidth: '100px',
                tableData: [],
                search: '',
                number:{
                    userNum:'',
                    recentAddNum:'',
                    generalNum:'',
                },
                userList:"",
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
                pieData:[],
                deptList:[
                    "https://p9.qhimg.com/bdr/__100/t0153b25c6c658d4f71.jpg",
                    "https://p8.qhimg.com/bdr/__100/t019f6447aad19bc876.jpg",
                    "https://p1.qhimg.com/bdr/__100/t0133a38b1a6ec5842c.jpg",
                ],
                totalPage:0,
                logsInfo:{
                    code:'',
                    event:'',
                    operator:'',
                    state:''
                },
            }
        },
        computed:{
            waitting(){
                return this.format_number(this.number.userNum);
            },
            waitting1(){
                return this.format_number(this.number.recentAddNum);
            },
            waitting2(){
                return this.format_number(this.number.generalNum);
            },
            // totalPage(){
            //     return this.tableData.total+1;
            // },
        },
        beforeCreate(){
            getPercentage().then(res=>{
                // console.log(res.data.data);
                //男女比例
                let sexNum = res.data.data[0];
                //部门比例
                let deptNum = res.data.data[1];
                // drawChart(){
                    var chartDom = document.getElementById('mychart');
                    var myChart = echarts.init(chartDom);
                    var option;

                    option = {
                        backgroundColor: '#2c343c',

                        title: {
                            text: '各项数据占比',
                            subtext: '包括男女数据占比，部门人员占比',
                            left: 'center',
                            top: 20,
                            textStyle: {
                                color: '#ccc'
                            }
                        },

                        tooltip: {
                            trigger: 'item'
                        },

                        visualMap: {
                            show: false,
                            min: 0,
                            max: sexNum[1].value+Math.ceil(sexNum[1].value*0.4),
                            inRange: {
                                colorLightness: [0, 1]
                            }
                        },
                        series: [
                            {
                                name: '访问来源',
                                type: 'pie',
                                radius: '55%',
                                center: ['30%', '50%'],
                                data:sexNum.sort(function (a, b) { return a.value - b.value; }),
                                // data: [
                                //     {value: 120, name: '男'},
                                //     {value: 210, name: '女'},
                                // ].sort(function (a, b) { return a.value - b.value; }),
                                roseType: 'radius',
                                label: {
                                    color: 'rgba(255, 255, 255, 0.8)'
                                },
                                labelLine: {
                                    lineStyle: {
                                        color: 'rgba(255, 255, 255, 0.3)'
                                    },
                                    smooth: 0.3,
                                    length: 10,
                                    length2: 20
                                },
                                itemStyle: {
                                    color: '#3CB371',
                                    shadowBlur: 300,
                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                },

                                animationType: 'scale',
                                animationEasing: 'elasticOut',
                                animationDelay: function (idx) {
                                    return Math.random() * 200;
                                }
                            },
                            {
                                name: '访问来源',
                                type: 'pie',
                                radius: '55%',
                                center: ['70%', '50%'],
                                data:deptNum.sort(function (a, b) { return a.value - b.value; }),
                                // data: [
                                //     {value: 335, name: '直接访问'},
                                //     {value: 310, name: '邮件营销'},
                                //     {value: 274, name: '联盟广告'},
                                //     {value: 235, name: '视频广告'},
                                //     {value: 400, name: '搜索引擎'}
                                // ].sort(function (a, b) { return a.value - b.value; }),
                                roseType: 'radius',
                                label: {
                                    color: 'rgba(248,248,255, 0.8)',
                                },
                                labelLine: {
                                    lineStyle: {
                                        color: 'rgba(255, 255, 255, 0.3)'
                                    },
                                    smooth: 0.2,
                                    length: 10,
                                    length2: 20
                                },
                                itemStyle: {
                                    color: '#9400D3',
                                    shadowBlur: 200,
                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                },

                                animationType: 'scale',
                                animationEasing: 'elasticOut',
                                animationDelay: function (idx) {
                                    return Math.random() * 200;
                                }
                            }
                        ]
                    };

                    option && myChart.setOption(option);
                // },

            });
        },
        mounted() {
            // this.drawChart();
            setTimeout(this.changeLoading,1000);
            document.getElementById("userManage").scrollIntoView({ block: 'start', behavior: 'smooth' });
            searchUser('',1).then(res=>{
                this.pageSize = res.data.data.pageSize;
                this.totalPage = res.data.data.total;
                this.tableData = res.data.data;
            });
            dataOverview().then(res=>{
                this.number.userNum = res.data.data[0];
                this.number.recentAddNum = res.data.data[1];
                this.number.generalNum = res.data.data[2];
                // console.log(res);
            });

            setInterval(this.changeDate,60*60*60*24);
            // getNum().then(res=>{
            //     // console.log(res.data.data);
            // });
        }
    }
</script>
<style scoped>
    #userManage{
        width: auto;
        height:100%;
        margin: -20px;
        padding: 2.2%  3% 0% 3%;
        /*background-color: #545372;*/
        /*background:linear-gradient(180deg,#2222,#545372),url("https://p1.qhimg.com/bdr/__100/t0133a38b1a6ec5842c.jpg") fixed;*/
        /*background-size: cover;*/
        /*background-color: #99a9bf;*/
        /*background: #d6e6f2;*/
    }
    .el-card{
        /*background-color: #2B2C3E;*/
        border: none;
        /*color: white;*/
        border-radius: 10px;
        border: none;
        /*background:rgba(0,0,0,0.1);*/
    }

    .card{
        /*background-color: #2B2C3E;*/
        min-width: 31%;
        min-height:150px;
        text-align: center;
        align-items: center;
        display: flex;
        justify-content: center;
        border-radius: 10px;
        /*border: none;*/
        background:rgba(73,78,83,0.8);
        color: #fff;
    }
    .card1{
        border-radius: 10px;
        border: none;
        /*background:rgba(0,0,0,0.1);*/
        background: transparent;
    }

    .card2{
        box-shadow: none;
        background:linear-gradient(180deg,#2222,#545372),url("https://s3.jpg.cm/2021/02/04/BrqXC.jpg") fixed;
        background-size: contain;
        min-width: 31%;
        min-height:120px;
    }
    .dataNum{
        font-size: 40px;
        font-weight: 700;
        margin-top: 10%;
        margin-bottom: 5%;
    }
    .numColor{
        /*color: #ef6c57;*/
    }

    .numColor1{
        /*color: #00af91;*/
        color: #6C757D;
    }
    .numColor2{
        color: #ffd04b;
    }
    /deep/ .el-table, /deep/ .el-table__expanded-cell{
        background-color: transparent;
    }
    /* 表格内背景颜色 */
    /deep/ .el-table th,
    /deep/ .el-table tr,
    /deep/ .el-table td {
        background-color: transparent;
    }

    /deep/ .el-table {
        color: #52616b;
        font-weight: 700;
    }
    /deep/ .el-table tbody tr:hover>td { background-color: transparent;color: #00af91;cursor: pointer}
    .el-table::before {
        left: 0;
        bottom: 0;
        width: 100%;
        height: 0px;
    }
    .btn{
        /*width: 140px;*/
        /*height: 60px;*/
    }
    .con{
        text-align: center;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .el-carousel__item h3 {
        color: #475669;
        font-size: 18px;
        opacity: 0.75;
        line-height: 300px;
        margin: 0;
    }

    .el-carousel__item:nth-child(2n) {
        background-color: #a6e3e9;
    }

    .el-carousel__item:nth-child(2n+1) {
        background-color: #d3dce6;
    }

    /deep/ .el-drawer{
        background: rgba(0,0,0,0.4);
    }
    /deep/  .el-drawer__header {
        font-size: 22px;
        color: #487e95;
        background: rgba(19, 32, 42, 0.5) !important;
    }
</style>

<style>
    .form .el-form-item__label{
        color: white;
    }
</style>
