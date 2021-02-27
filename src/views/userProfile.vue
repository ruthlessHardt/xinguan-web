<template>
    <div id="userProfile" v-loading="loading"
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <el-row :gutter="20">
            <el-col :span="6">
                <div class="avatar">
                    <el-tooltip class="item" effect="dark" content="更换头像" placement="bottom" >
                        <img :src="avatar" alt="#" @click.stop="changeAvatar">
                    </el-tooltip>
                    <div>
                        <el-button type="primary" size="mini" icon="el-icon-edit" plain @click="dialogFormVisible = true" style="width: 270px">修改个人资料</el-button>
                    </div>
                    <div class="nickname">{{userInfo.username}}</div>
                    <br>
                    <div>
                        <el-input
                                type="textarea"
                                :autosize="{ minRows: 2, maxRows: 3}"
                                maxlength="40"
                                :placeholder="motto"
                                v-model="textarea">
                        </el-input>
                    </div>
                    <br>
                    <el-card>
                        <el-tag type="danger">标签一</el-tag>&nbsp
                        <el-tag type="warning">标签二</el-tag>
                    </el-card>
                </div>
            </el-col>
            <el-col :span="16">
               <el-row :gutter="10">
                   <el-tabs v-model="activeName">
                       <el-tab-pane label="信息总览" name="zl">
                           <el-card style="min-height: 260px;">
                               <el-row :gutter="20">
                                   <el-col :span="4">
                                       <div class="name">姓名：</div>
                                   </el-col>
                                   <el-col :span="7">
                                       <span>{{userInfoVo.username}}</span>
                                   </el-col>
                                   <el-col :span="4">
                                       <div class="name">性别：</div>
                                   </el-col>
                                   <el-col :span="7">
                                       <span>{{userInfoVo.sex}}</span>
                                   </el-col>
                               </el-row>
                               <br>
                               <el-row :gutter="20">
                                   <el-col :span="4">
                                       <div class="name">联系方式：</div>
                                   </el-col>
                                   <el-col :span="7">
                                       <span>{{userInfoVo.phone}}</span>
                                   </el-col>
                               </el-row>
                               <br>
                               <el-row :gutter="20">
                                   <el-col :span="4">
                                       <div class="name">部门：</div>
                                   </el-col>
                                   <el-col :span="7">
                                       <span>{{userInfoVo.dept}}</span>
                                   </el-col>
                                   <el-col :span="4">
                                       <div class="name">创建人：</div>
                                   </el-col>
                                   <el-col :span="7">
                                       <span>{{userInfoVo.createBy}}</span>
                                   </el-col>
                               </el-row>
                               <br>
                               <el-row :gutter="20">
                                   <el-col :span="4">
                                       <div class="name">创建时间：</div>
                                   </el-col>
                                   <el-col :span="7">
                                       <span>{{userInfoVo.createTime}}</span>
                                   </el-col>
                                   <el-col :span="4">
                                       <div class="name">更新时间：</div>
                                   </el-col>
                                   <el-col :span="7">
                                       <span>{{userInfoVo.updateTime}}</span>
                                   </el-col>
                               </el-row>
                               <br>
                               <el-row :gutter="20">
                                   <el-col :span="4">
                                       <div class="name">状态：</div>
                                   </el-col>
                                   <el-col :span="7">
                                       <span>{{userInfoVo.state}}</span>
                                   </el-col>
                               </el-row>
                           </el-card>
                       </el-tab-pane>
                       <el-tab-pane label="weidingyi" name="second">
                           <el-card style="min-height: 208px">
                               <div id="chart1" style="width: 900px;height: 220px"></div>
                           </el-card>
                       </el-tab-pane>
                   </el-tabs>
               </el-row>
                <br>
                <el-row :gutter="10">
                    <el-card style="background-color: transparent;border: none" shadow="never">
                        <div slot="header" class="clearfix">
                            <span>操作日志</span>
                            <el-input class="inputs" v-model="searchInfo.info" placeholder="请输入操作内容"></el-input>
                            <el-date-picker
                                    class="inputs"
                                    v-model="searchInfo.date"
                                    align="right"
                                    type="date"
                                    placeholder="请选择日期"
                                    :picker-options="pickerOptions">
                            </el-date-picker>
                            <el-input class="inputs" type="hidden"></el-input>
                            <el-button type="primary" icon="el-icon-search">搜索</el-button>
                        </div>
                        <el-timeline style="height: 370px;overflow:auto;">
                            <div v-for="(item,index) in 5" :key="index">
                                <el-timeline-item timestamp="2020-4-12" placement="top" type="success ">
                                    <el-row>
                                        <el-col :span="22">
                                            <el-card shadow="hover">
                                                <el-row :gutter="20">
                                                    <el-col :span="21">
                                                        <h4>更新 {{index}} 模板</h4>
                                                        <p>ruthlessHardt 提交于 2018-4-12 20:46</p>
                                                    </el-col>
                                                    <el-col :span="3">
                                                        <el-button type="success" size="mini" icon="el-icon-search" @click.stop="getDetails(index)">查看</el-button>
                                                    </el-col>
                                                </el-row>

                                                <el-dialog class="dialog" title="操作日志" :visible.sync="dialogVisible">
                                                        <el-row :gutter="20">
                                                            <el-col :span="5" class="labels">
                                                                操作人:
                                                            </el-col>
                                                            <el-col :span="5">
                                                                <span>{{operationLog.operator}}</span>
                                                            </el-col>
                                                            <el-col :span="5" class="labels">
                                                                操作日期:
                                                            </el-col>
                                                            <el-col :span="5">
                                                                <span>{{operationLog.date}}</span>
                                                            </el-col>
                                                        </el-row>
                                                        <br>
                                                        <el-row :gutter="20">
                                                            <el-col :span="5" class="labels">
                                                                操作内容:
                                                            </el-col>
                                                            <el-col :span="15">
                                                                <span>{{operationLog.content}}</span>
                                                            </el-col>
                                                        </el-row>
                                                        <br>
                                                    <div slot="footer" class="dialog-footer">
                                                        <el-button @click="dialogVisible = false">确 定</el-button>
                                                        <el-button type="primary" @click="dialogVisible = false">重置该操作</el-button>
                                                    </div>
                                                </el-dialog>
                                            </el-card>
                                        </el-col>
                                    </el-row>

                                </el-timeline-item>
                            </div>

                        </el-timeline>
                    </el-card>
                </el-row>
            </el-col>
        </el-row>
        <br><br>
        <el-row :gutter="20">


        </el-row>
        <!--对话框弹出-->
        <el-dialog title="个人资料修改" :visible.sync="dialogFormVisible" :before-close="handleClose" :close-on-click-modal="close">
            <el-form :model="form">
                <el-row :gutter="20">
                    <el-col :span="20">
                        <el-form-item label="姓名" :label-width="formLabelWidth">
                            <el-input v-model="form.name" autocomplete="off" style="width: 610px;"></el-input>
                        </el-form-item>
                    </el-col>
                </el-row>
                <el-row :gutter="20">
                    <el-col :span="20">
                        <el-form-item label="性别" :label-width="formLabelWidth">
                            <el-switch
                                    style="margin-left: 7%"
                                    v-model="form.sex"
                                    active-color="#13ce66"
                                    inactive-color="#ffefa1"
                                    active-text="男"
                                    inactive-text="女">
                            </el-switch>
                        </el-form-item>
                    </el-col>
                </el-row>
                <el-row :gutter="20">
                    <el-col :span="10">
                        <el-form-item label="联系方式" :label-width="formLabelWidth">
                            <el-input v-model="form.phone" autocomplete="off" style="width: 200px;"></el-input>
                        </el-form-item>
                    </el-col>
                    <el-col :span="10">
                        <el-form-item label="部门" :label-width="formLabelWidth">
                            <el-select v-model="form.region" placeholder="请选择需求地">
                                <el-option label="南京" value="nanjing"></el-option>
                                <el-option label="无锡" value="wuxi"></el-option>
                                <el-option label="上海" value="shanghai"></el-option>
                            </el-select>
                        </el-form-item>
                    </el-col>
                </el-row>
                <el-row :gutter="20">
                    <el-col :span="10">
                        <el-form-item label="姓名" :label-width="formLabelWidth">
                            <el-input v-model="form.name" autocomplete="off" style="width: 200px;"></el-input>
                        </el-form-item>
                    </el-col>
                </el-row>
            </el-form>
            <div slot="footer" class="dialog-footer">
                <el-button @click="dialogFormVisible = false">取 消</el-button>
                <el-button type="primary" @click="updateInfo">确 定</el-button>
            </div>
        </el-dialog>

    </div>
</template>

<script>
    import * as echarts from 'echarts';
    import {searchUser} from "../services/userService";
    export default {
        name: "userProfile",
        data(){
          return {
              loading:true,
              fullscreenLoading:true,
              activeName:'zl',
              avatar: "https://s3.jpg.cm/2020/10/27/No0X4.jpg",
              userInfoVo:{
                  username:'',
                  sex:'',
                  phone:'',
                  dept:'',
                  createBy:'',
                  createTime:'',
                  updateTime:''
              },
              userInfo:{
                username:'',
                sex:'',
                phone:'',
                id:localStorage.getItem("nid"),
                dept:'',
                createBy:''
              },
              textarea:'',
              motto:'其潇洒',
              dialogFormVisible: false,
              dialogVisible:false,
              form: {
                  name: '',
                  sex:true,
                  phone:'',
                  dept:'',
                  updateTime:''
              },
              searchInfo:{
                  date:'',
                  info:'',
              },
              operationLog:{
                  content:'完善食品安全、消费投诉、网络交易监管、无证照监管接口',
                  date:'2020-1-22',
                  operator:'admin',
              },
              formLabelWidth: '120px',
              close:false,
              value1: true,
              pickerOptions: {
                  disabledDate(time) {
                      return time.getTime() > Date.now();
                  },
                  shortcuts: [{
                      text: '今天',
                      onClick(picker) {
                          picker.$emit('pick', new Date());
                      }
                  }, {
                      text: '昨天',
                      onClick(picker) {
                          const date = new Date();
                          date.setTime(date.getTime() - 3600 * 1000 * 24);
                          picker.$emit('pick', date);
                      }
                  }, {
                      text: '一周前',
                      onClick(picker) {
                          const date = new Date();
                          date.setTime(date.getTime() - 3600 * 1000 * 24 * 7);
                          picker.$emit('pick', date);
                      }
                  }]
              },
          }
        },
        methods:{
            changeLoading(){
                this.loading = false;
            },
            changeAvatar(){
                //没写
                this.$notify.error({
                    title: '错误',
                    message: '还没写，、。。。。。。'
                });
            },
            handleClose(done) {
                this.$confirm('确认关闭？')
                    .then(_ => {
                        done();
                    })
                    .catch(_ => {});
            },
            updateInfo(){
                this.dialogFormVisible = false;
                // alert(this.form.sex===false?'女':'男');
            },
            chart1(){
                var chartDom = document.getElementById('chart1');
                var myChart = echarts.init(chartDom);
                var option;
                option = {
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {            // Use axis to trigger tooltip
                            type: 'shadow'        // 'shadow' as default; can also be 'line' or 'shadow'
                        }
                    },
                    legend: {
                        data: ['Direct', 'Mail Ad', 'Affiliate Ad', 'Video Ad', 'Search Engine']
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
                    },
                    xAxis: {
                        type: 'value'
                    },
                    yAxis: {
                        type: 'category',
                        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
                    },
                    series: [
                        {
                            name: 'Direct',
                            type: 'bar',
                            stack: 'total',
                            label: {
                                show: true
                            },
                            emphasis: {
                                focus: 'series'
                            },
                            data: [320, 302, 301, 334, 390, 330, 320]
                        },
                        {
                            name: 'Mail Ad',
                            type: 'bar',
                            stack: 'total',
                            label: {
                                show: true
                            },
                            emphasis: {
                                focus: 'series'
                            },
                            data: [120, 132, 101, 134, 90, 230, 210]
                        },
                        {
                            name: 'Affiliate Ad',
                            type: 'bar',
                            stack: 'total',
                            label: {
                                show: true
                            },
                            emphasis: {
                                focus: 'series'
                            },
                            data: [220, 182, 191, 234, 290, 330, 310]
                        },
                        {
                            name: 'Video Ad',
                            type: 'bar',
                            stack: 'total',
                            label: {
                                show: true
                            },
                            emphasis: {
                                focus: 'series'
                            },
                            data: [150, 212, 201, 154, 190, 330, 410]
                        },
                        {
                            name: 'Search Engine',
                            type: 'bar',
                            stack: 'total',
                            label: {
                                show: true
                            },
                            emphasis: {
                                focus: 'series'
                            },
                            data: [820, 832, 901, 934, 1290, 1330, 1320]
                        }
                    ]
                };
                option && myChart.setOption(option);
            },
            getDetails(index){
                this.dialogVisible = true;
            }
        },
        mounted() {
            setTimeout(this.changeLoading,1000);
            this.chart1();
            searchUser(this.userInfo).then(res=>{
                console.log(res.data);
                if(res.data!=''){
                    this.userInfoVo.username = res.data.data[0].nuName;
                    this.userInfoVo.sex = res.data.data[0].nsex;
                    this.userInfoVo.phone = res.data.data[0].nphone;
                    this.userInfoVo.dept = res.data.data[0].ndept;
                    this.userInfoVo.createBy = res.data.data[0].createBy;
                    this.userInfoVo.createTime = res.data.data[0].createTime;
                    this.userInfoVo.updateTime = res.data.data[0].updateTime;
                    this.userInfoVo.state = res.data.data[0].state==1?'正常':'异常';
                }

            });

        }
    }
</script>

<style scoped>
    #userProfile{
        min-width: 1300px;
    }
.avatar{
    margin-left: 30%;
    width: 270px;
    height: 50%;
}
.avatar>.nickname{
    text-align: center;
    justify-content: center;
    align-items: center;
    display: flex;
    font-size: 20px;
    font-weight: 700;
}
.avatar>img{
    width: 230px;
    height: 230px;
    border-radius: 50%;
    margin-top: 25%;
    margin-bottom: 10%;
}
.avatar>img:hover{
     opacity: 0.6;
 }
.name{
    font-weight: 700;
}
.name>span{
    margin-left: 10%;
    font-weight: 400;
    font-size: 16px;
}
.clearfix>span{
    font-weight: 700;
}
    .inputs{
        width: 200px;
        margin-left: 2%;
    }
    .labels{
        margin-left: 7%;
        font-weight: 700;
        font-size: 17px;
        /*text-align: center;*/

    }

</style>
