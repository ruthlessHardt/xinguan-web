<template>
    <div id="userManage" v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <div style="padding-left: 3%">
            <el-row :gutter="40">
                <el-col :span="5">
                    <el-card class="card" shadow="never">
                        <div class="dataNum numColor">
                            {{waitting}}
                        </div>
                        <span>用户数</span><br>
                        <span class="numColor1">2021-2-28</span>
                    </el-card>
                    <br>
                    <el-card class="card" shadow="never">
                        <div class="dataNum numColor">
                            {{waitting1}}
                        </div>
                        <span>近期活跃数</span><br>
                        <span class="numColor1">2021-2-28</span>
                    </el-card>
                    <br>
                    <el-card class="card" shadow="never">
                        <div class="dataNum numColor">
                            {{waitting2}}
                        </div>
                        <span>用户数</span><br>
                        <span class="numColor1">2021-2-28</span>
                    </el-card>
                </el-col>
                <el-col :span="18">
                    <el-card style="min-height: 500px" class="card1">
                        <div id = "chart2" style="width:100%;height: 462px"></div>
                    </el-card>
                </el-col>
            </el-row>
            <br>
            <el-row :gutter="20">
                <el-col :span="7">
                    <el-card class="card1">
                        <div id="chart1" style="width: 100%;height: 330px"></div>
                    </el-card>
                </el-col>
                <el-col :span="16">
                    <el-row :gutter="2">

                        <el-card class="card1" >
                            <div style="padding-bottom: 2%">
                                <span style="font-weight: 700">功能操作列</span>
                                <el-button style="float: right; padding: 3px 0" type="text">操作设置</el-button>
                            </div>
                            <!--                        <div id="chart" style="width: 100%;height: 330px"></div>-->
                            <div style="padding-bottom: 2%">
                                <div style="display: flex">
                                    <el-button type="success" style="width: 300px" >新增用户</el-button>
                                    <el-button type="primary" style="width: 200px" >新增管理用户</el-button>
                                    <el-button type="warning" style="width: 280px" >密码重置</el-button>
                                    <el-button type="info" style="width: 250px" >查看用户操作日志</el-button>
                                </div>
                            </div>
                        </el-card>
                        <br>
                        <el-card class="card1" >
                        <div style="padding-bottom: 1.9%">
                            <span style="font-weight: 700">相关跳转</span>
                            <el-button style="float: right; padding: 3px 0" type="text">操作设置</el-button>
                        </div>
<!--                        <div id="chart" style="width: 100%;height: 330px"></div>-->
                        <div style="padding-bottom: 2%">
                            <div style="display: flex">
                                <el-button type="success" style="width: 200px" >权限管理</el-button>
                                <el-button type="primary" style="width: 300px" >角色管理</el-button>
                                <el-button type="warning" style="width: 540px" >菜单管理</el-button>
                            </div>
                            <br>
                            <div style="display: flex">
                                <el-button type="info" style="width: 400px" @click="goto('yonghu')">用户增长</el-button>
                                <el-button type="info" style="width: 400px" @click="goto('liebiao')">用户列表</el-button>
<!--                                <el-button type="warning" style="width: 540px" >菜单管理</el-button>-->
                            </div>
                        </div>
                    </el-card>
                    </el-row>
                </el-col>
            </el-row>
            <br><br>
            <el-row :gutter="20">
                <el-col :span="23">
                    <div id="yonghu" style="color: #2B2C3E;padding-top: 5%;padding-bottom: 2%">
                        <span>
                            <h2>用户增长</h2>
                        </span>
                    </div>
                    <el-card class="card2">
                        <div style="width: 100%;height: 40vh">
                            <div id="chart" style="width: 100%;height: 330px"></div>
                        </div>
                    </el-card>
                </el-col>
            </el-row>
            <br><br><br>
            <el-row :gutter="20">
                <el-col :span="23">
                    <div id="liebiao" style="color: #2B2C3E;padding-bottom: 2%">
                        <span>
                            <h2>用户列表</h2>
                        </span>
                    </div>
                    <el-card class="card1">
                        <el-table
                                :data="tableData.filter(data => !search || data.nuName.toLowerCase().includes(search.toLowerCase()))"
                                style="width: 100%;background-color: transparent;border: none">
                            <div v-for="(item,index) in table" :key="index">
                            <el-table-column
                                    :label="item.name"
                                    :prop="item.dataName">
                            </el-table-column>
                            </div>
                            <el-table-column
                                    align="right">
                                <template slot="header" slot-scope="scope">
                                    <el-input
                                            v-model="search"
                                            size="mini"
                                            placeholder="输入关键字搜索"/>
                                </template>
                                <template slot-scope="scope">
                                    <el-button
                                            size="mini"
                                            type="success"
                                            @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
                                    <el-button
                                            size="mini"
                                            type="danger"
                                            @click="handleDelete(scope.$index, scope.row)">删除</el-button>
                                </template>
                            </el-table-column>
                        </el-table>
                        <br>
                        <el-pagination
                                layout="prev, pager, next"
                                background
                                small
                                style="background-color: transparent;text-align: center;"
                                :total="1000">
                        </el-pagination>
                    </el-card>
                </el-col>
            </el-row>
            <br><br>      <br><br>
        </div>
    </div>

</template>
<script>
    import * as echarts from 'echarts';
    import {getNum, searchUser} from "../../services/userService";
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
            drawchart(){
                var chartDom = document.getElementById('chart');
                var myChart = echarts.init(chartDom);
                var option;
                var data = [["2000-06-05",116],["2000-06-06",129],["2000-06-07",135],["2000-06-08",186],["2000-06-09",173],["2000-06-10",85],["2000-06-11",73],["2000-06-12",68],["2000-06-13",92],["2000-06-14",130],["2000-06-15",245],["2000-06-16",339],["2000-06-17",115],["2000-06-18",111],["2000-06-19",309],["2000-06-20",206],["2000-06-21",137],["2000-06-22",128],["2000-06-23",85],["2000-06-24",194],["2000-06-25",171],["2000-06-26",106],["2000-06-27",84],["2000-06-28",93],["2000-06-29",85],["2000-06-30",73],["2000-07-01",83],["2000-07-02",125],["2000-07-03",207],["2000-07-04",282],["2000-07-05",44],["2000-07-06",72],["2000-07-07",106],["2000-07-08",107],["2000-07-09",66],["2000-07-10",91],["2000-07-11",92],["2000-07-12",113],["2000-07-13",107],["2000-07-14",131],["2000-07-15",111],["2000-07-16",64],["2000-07-17",69],["2000-07-18",488],["2000-07-19",477],["2000-07-20",483],["2000-07-21",411],["2000-07-22",457],["2000-07-23",355],["2000-07-24",360]];
                var dateList = data.map(function (item) {
                    return item[0];
                });
                var valueList = data.map(function (item) {
                    return item[1];
                });
                option = {
                    // Make gradient line here
                    visualMap: [{
                        show: false,
                        type: 'continuous',
                        seriesIndex: 0,
                        min: 0,
                        max: 40000
                    }],
                    title: [{
                        left: 'center',
                        text: '日活用户',
                        textStyle: {
                            color: "#fff"
                        }
                    }],
                    tooltip: {
                        trigger: 'axis'
                    },
                    xAxis: {
                        data: dateList,
                        axisLine: {
                            lineStyle: {
                                color: '#dbe2ef',
                            }
                        }
                    },
                    yAxis: {
                        axisLine: {
                            lineStyle: {
                                color: '#dbe2ef',
                            }
                        }
                    },
                    series: [{
                        type: 'line',
                        showSymbol: false,
                        data: valueList,
                    }]
                };
                option && myChart.setOption(option);

                var app = {};
                var chartDom2 = document.getElementById('chart2');
                var myChart2 = echarts.init(chartDom2);
                var option2;
                option2 = {
                    title: {
                        text: '动态数据',
                        subtext: '用户体量',
                        textStyle:{
                            color:'#fff',
                        }
                    },
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                            type: 'cross',
                            label: {
                                backgroundColor: '#283b56'
                            }
                        }
                    },
                    legend: {
                        data:['最新成交价', '预购队列']
                    },
                    xAxis: [
                        {
                            type: 'category',
                            boundaryGap: true,
                            data: (function (){
                                var now = new Date();
                                var res = [];
                                var len = 10;
                                while (len--) {
                                    res.unshift(now.toLocaleTimeString().replace(/^\D*/,''));
                                    now = new Date(now - 2000);
                                }
                                return res;
                            })()
                        },
                        {
                            type: 'category',
                            boundaryGap: true,
                            data: (function (){
                                var res = [];
                                var len = 10;
                                while (len--) {
                                    res.push(10 - len - 1);
                                }
                                return res;
                            })()
                        }
                    ],
                    yAxis: [
                        {
                            type: 'value',
                            scale: true,
                            name: '价格',
                            max: 30,
                            min: 0,
                            boundaryGap: [0.2, 0.2]
                        },
                        {
                            type: 'value',
                            scale: true,
                            name: '预购量',
                            max: 1200,
                            min: 0,
                            boundaryGap: [0.2, 0.2]
                        }
                    ],
                    series: [
                        {
                            name: '预购队列',
                            type: 'bar',
                            xAxisIndex: 1,
                            yAxisIndex: 1,
                            data: (function (){
                                var res = [];
                                var len = 10;
                                while (len--) {
                                    res.push(Math.round(Math.random() * 1000));
                                }
                                return res;
                            })()
                        },
                        {
                            name: '最新成交价',
                            type: 'line',
                            data: (function (){
                                var res = [];
                                var len = 0;
                                while (len < 10) {
                                    res.push((Math.random()*10 + 5).toFixed(1) - 0);
                                    len++;
                                }
                                return res;
                            })()
                        }
                    ]
                };
                app.count = 11;
                setInterval(function (){
                    var axisData = (new Date()).toLocaleTimeString().replace(/^\D*/, '');
                    var data0 = option2.series[0].data;
                    var data1 = option2.series[1].data;
                    data0.shift();
                    data0.push(Math.round(Math.random() * 1000));
                    data1.shift();
                    data1.push((Math.random() * 10 + 5).toFixed(1) - 0);
                    option2.xAxis[0].data.shift();
                    option2.xAxis[0].data.push(axisData);
                    option2.xAxis[1].data.shift();
                    option2.xAxis[1].data.push(app.count++);
                    myChart2.setOption(option2);
                }, 1000);
                option2 && myChart2.setOption(option2);
            },
            drawchart1(){
                var chartDom1 = document.getElementById('chart1');
                var myChart1 = echarts.init(chartDom1);
                var option1;
                option1 = {
                    legend: {
                        top: 'bottom',
                        textStyle: {
                            color: "#fff"
                        }
                    },
                    tooltip: {
                        trigger: 'item'
                    },
                    series: [
                        {
                            name: '访问来源',
                            type: 'pie',
                            radius: ['40%', '70%'],
                            avoidLabelOverlap: false,
                            itemStyle: {
                                borderRadius: 30,
                                borderColor: '#fff',
                                borderWidth: 0
                            },
                            label: {
                                show: false,
                                position: 'center'
                            },
                            emphasis: {
                                label: {
                                    show: true,
                                    fontSize: '20',
                                    fontWeight: 'bold'
                                }
                            },
                            labelLine: {
                                show: true
                            },
                            data:[{name:"sds",value:12312}],
                        }
                    ]
                };
                option1 && myChart1.setOption(option1);
            },
            goto(ref){
                if(ref=='yonghu'){
                    document.getElementById('yonghu').scrollIntoView({ block: 'start', behavior: 'smooth' });
                }else if(ref=='liebiao'){
                    document.getElementById('liebiao').scrollIntoView({ block: 'start', behavior: 'smooth' });
                }
            }
        },
        data() {
            return {
                loading:true,
                fullscreenLoading:true,
                table: {
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
                tableData: [{
                }],
                search: '',
                number:{
                    userNum:'',
                },
                userList:"",
                userInfo:{
                    sex:'',
                    dept:[],
                },
                pieData:[],
            }
        },
        computed:{
            waitting(){
                return this.format_number(this.number.userNum);
            },
            waitting1(){
                return this.format_number(31331);
            },
            waitting2(){
                return this.format_number(6313);
            }
        },
        mounted() {
            getNum().then(res=>{
                for(let i =0;i<res.data.data.length;i++){
                    let obj=new Object();
                    obj.name=res.data.data[i].n_dept;
                    obj.value=res.data.data[i].num;
                    this.pieData[i]=obj;
                }
                console.log(this.pieData);
            });
            this.drawchart1();
            document.getElementById("userManage").scrollIntoView({ block: 'start', behavior: 'smooth' });
            setTimeout(this.changeLoading,1000);
            this.drawchart();
            searchUser('').then(res=>{
                this.number.userNum = res.data.data.length;
                this.tableData = res.data.data;
                for(let i=0;i<res.data.data.length;i++){
                    this.userInfo.dept.push(res.data.data[i].ndept);
                }
                /**
                 *去重
                 */
                this.userInfo.dept = new Set(this.userInfo.dept);
                // console.log(this.userInfo.dept);
                // console.log(res.data.data);
            });
        }
    }
</script>
<style scoped>
    #userManage{
        width: auto;
        height:240vh;
        margin: -20px;
        padding: 2.2%  3% 0% 3%;
        background-color: #545372;
    }
    .el-card{
        /*background-color: #2B2C3E;*/
        border: none;
        color: white;
    }

    .card{
        background-color: #2B2C3E;
        min-width: 31%;
        min-height:150px;
        text-align: center;
        align-items: center;
        display: flex;
        justify-content: center;
    }
    .card1{
        background-color: #2B2C3E;
    }

    .card2{
        box-shadow: none;
        background:linear-gradient(180deg,#2222,#545372),url("https://s3.jpg.cm/2021/02/04/BrqXC.jpg") fixed;
        background-size: contain;
        min-width: 31%;
        min-height:150px;
    }
    .dataNum{
        font-size: 40px;
        font-weight: 700;
        margin-top: 10%;
        margin-bottom: 5%;
    }
    .numColor{
        color: #ef6c57;
    }

    .numColor1{
        color: #00af91;
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
    /deep/ .el-table tbody tr:hover>td { background-color: transparent;color:#fff;cursor: pointer}
    .el-table::before {
        left: 0;
        bottom: 0;
        width: 100%;
        height: 0px;
    }
</style>
