<template>
    <div id="operatorLogs"
         v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading" >
        <div style="padding-top: 2%">
            <el-row :gutter="30">
                <el-col :span="24">
                    <el-col :span="10">
                        <el-row :gutter="20">
                            <el-col :span="12">
                                <el-card>
                                    <div>
                                        日志数
                                        <div class="numsty">
                                            {{watching}}
                                        </div>
                                    </div>
                                </el-card>
                            </el-col>
                            <el-col :span="12">
                                <el-card>
                                    <div>
                                        近日（2天）操作数
                                        <div class="numsty">
                                            {{watching1}}
                                        </div>
                                    </div>
                                </el-card>
                            </el-col>
                        </el-row>
                        <br>
                        <el-row :gutter="20">
                            <el-col :span="12">
                                <el-card class="card">
                                    <div slot="header" class="clearfix">
                                        <span>用户管理操作次数</span>
<!--                                        <el-button style="float: right; padding: 3px 0" type="text">详情</el-button>-->
                                    </div>
                                    <div class="numText">
                                        <span>{{watching2}}</span>
                                    </div>
                                </el-card>
                            </el-col>
                            <el-col :span="12">
                                <el-card class="card">
                                    <div slot="header" class="clearfix">
                                        <span>近日（7日）用户管理操作次数</span>
<!--                                        <el-button style="float: right; padding: 3px 0" type="text">详情</el-button>-->
                                    </div>
                                    <div class="numText">
                                        <span>{{watching3}}</span>
                                    </div>
                                </el-card>
                            </el-col>
                        </el-row>
                        <br>
                        <el-row :gutter="20">
                            <el-col :span="12">
                                <el-card class="card">
                                    <div slot="header" class="clearfix">
                                        <span>物资操作次数</span>
<!--                                        <el-button style="float: right; padding: 3px 0" type="text">详情</el-button>-->
                                    </div>
                                    <div class="numText">
                                        <span>{{watching4}}</span>
                                    </div>
                                </el-card>
                            </el-col>
                            <el-col :span="12">
                                <el-card class="card">
                                    <div slot="header" class="clearfix">
                                        <span>近日（7日）物资操作次数</span>
<!--                                        <el-button style="float: right; padding: 3px 0" type="text">详情</el-button>-->
                                    </div>
                                    <div class="numText">
                                        <span>{{watching5}}</span>
                                    </div>
                                </el-card>
                            </el-col>
                        </el-row>
                        <br>
                        <el-row :gutter="20">
                            <el-col :span="24">
                                <el-card class="card4">
                                    <div slot="header" class="clearfix">
                                        <span>2日内操作清单</span>
<!--                                        <el-button style="float: right; padding: 3px 0" type="text">详情</el-button>-->
                                    </div>
                                    <div>
                                        <el-table
                                                :data="tableData"
                                                style="width: 100%">
                                            <el-scrollbar
                                                    wrapClass="scrollbar-wrap"
                                                    :style="{height: 200}"
                                                    ref="scrollbarContainer">
                                            <div v-for="(item,index) in table" :key="index">
                                                <el-table-column
                                                        :label="item.name"
                                                        :prop="item.dataName"
                                                        show-overflow-tooltip
                                                >
                                                </el-table-column>
                                            </div>
                                            </el-scrollbar>
<!--                                            <el-table-column-->
<!--                                                    prop="date"-->
<!--                                                    label="日期"-->
<!--                                                    width="120">-->
<!--                                            </el-table-column>-->
<!--                                            <el-table-column-->
<!--                                                    prop="name"-->
<!--                                                    label="姓名"-->
<!--                                                    width="100">-->
<!--                                            </el-table-column>-->
<!--                                            <el-table-column-->
<!--                                                    prop="events"-->
<!--                                                    label="事件"-->
<!--                                                    width="160">-->
<!--                                            </el-table-column>-->
<!--                                            <el-table-column-->
<!--                                                    prop="nums"-->
<!--                                                    label="次数">-->
<!--                                            </el-table-column>-->
                                            <el-table-column
                                                    prop="msgInfo"
                                                    label="系统提示">
                                                <template slot-scope="scope">
                                                    <el-tag
                                                            :type="scope.row.type === '登陆操作' ? 'danger' : 'success'"
                                                            disable-transitions>{{scope.row.type}}</el-tag>
                                                </template>
                                            </el-table-column>
                                        </el-table>
                                    </div>
                                </el-card>
                            </el-col>
                        </el-row>
                    </el-col>
                    <el-col :span="14">
                        <el-row :gutter="20">
                            <el-col :span="24">
                                <el-card class="card2">
                                   <div id="chart1" style="width: 100%;height:760px"></div>
                                </el-card>
                            </el-col>
                        </el-row>
                    </el-col>
                </el-col>
            </el-row>
        </div>
    </div>
</template>

<script>
    import {getLog, getNums, weekDayNum} from "../../services/systemService";
    import * as echarts from 'echarts';
    export default {
        data(){
            return {
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
                    userManegeLogsNum:'',
                    recentUserManegeLogsNum:'',
                    materialManegeLogsNum:'',
                    recentMaterialManegeLogsNum:'',
                },
                tableData:[],
                // tableData: [{
                //     date: '2021-03-12',
                //     name: '李萌',
                //     events: '审核物资（口罩、医用药水酒精）',
                //     msgInfo:'加派人手',
                //     nums:10026,
                // }, {
                //     date: '2021-03-14',
                //     name: '程实',
                //     events: '用户新增',
                //     msgInfo:'疑似攻击',
                //     nums:9330,
                // }, {
                //     date: '2021-03-13',
                //     name: '章张',
                //     events: '用户信息修改',
                //     msgInfo:'疑似攻击',
                //     nums:9012,
                // },{
                //     date: '2021-03-11',
                //     name: '王而而',
                //     events: '物资申请',
                //     msgInfo:'判定事件紧急',
                //     nums:731,
                // }, {
                //     date: '2021-03-16',
                //     name: '啊虎',
                //     events: '物资入库',
                //     msgInfo:'判定事件紧急',
                //     nums:611,
                // }],
                table:{
                    createTime:{
                        name:'时间',
                        dataName:'createTime',
                    },
                    code:{
                        name:'日志码',
                        dataName:'code',
                    },
                    // type:{
                    //     name:'日志类别',
                    //     dataName:'type',
                    // },
                    event:{
                        name:'操作事件',
                        dataName:'event',
                    },
                    operator:{
                        name:'操作者',
                        dataName:'operator',
                    },
                },
                timeList:[],
                numList:[],
            }
        },
        computed:{
            watching(){
                return this.format_number(this.number.logsNum);
            },
            watching1(){
                return this.format_number(this.number.recentLogsNum);
            },
            watching2(){
                return this.format_number(this.number.userManegeLogsNum);
            },
            watching3(){
                return this.format_number(this.number.recentUserManegeLogsNum);
            },
            watching4(){
                return this.format_number(this.number.materialManegeLogsNum);
            },
            watching5(){
                return this.format_number(this.number.recentMaterialManegeLogsNum);
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
        },
        beforeCreate(){
            weekDayNum().then(res=>{
                this.timeList = res.data.data[0];
                this.numList = res.data.data[1];
                // console.log(res.data.data);
                // console.log(this.timeList);
                // console.log(this.numList);

                var chartDom = document.getElementById('chart1');
                var myChart = echarts.init(chartDom);
                var option;
                option = {
                    title: {
                        text: '7日内对物资操作分布',
                        subtext: '日志记录（包括物资入库、发放、物资修改等操作记录）'
                    },
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                            type: 'cross'
                        }
                    },
                    toolbox: {
                        show: true,
                        feature: {
                            restore: {},
                            saveAsImage: {}
                        }
                    },
                    xAxis: {
                        type: 'category',
                        boundaryGap: false,
                        data:this.timeList,
                        // data: ['00:00', '01:15', '02:30', '03:45', '05:00', '06:15', '07:30', '08:45',
                        //     '10:00', '11:15', '12:30', '13:45', '15:00', '16:15', '17:30', '18:45',
                        //     '20:00', '21:15', '22:30', '23:45']
                    },
                    yAxis: {
                        type: 'value',
                        axisLabel: {
                            formatter: '{value} 次'
                        },
                        axisPointer: {
                            snap: true
                        }
                    },
                    visualMap: {
                        show: false,
                        dimension: 0,
                        pieces: [{
                            lte: 6,
                            color: 'green'
                        }, {
                            gt: 6,
                            lte: 8,
                            color: 'green'
                        }, {
                            gt: 8,
                            lte: 10,
                            color: 'red'
                        }, {
                            gt: 10,
                            lte: 14,
                            color: 'green'
                        },{
                            gt: 13,
                            lte: 17,
                            color: 'red'
                        }, {
                            gt: 17,
                            color: 'green'
                        }]
                    },
                    series: [
                        {
                            name: '操作次数',
                            type: 'line',
                            smooth: true,
                            data:this.numList,
                            // data: [140, 145, 150, 160, 170, 200, 250, 200, 300, 490, 450, 390,
                            //     300, 200, 300, 450, 500, 460, 420, 300],
                            markArea: {
                                itemStyle: {
                                    color: 'rgba(255, 173, 177, 0.4)'
                                },
                                data: [ [{
                                    name: '',
                                    xAxis: res.data.data[2].time
                                }, {
                                    xAxis: res.data.data[3].time
                                }],
                                //     [{
                                //     name: '晚高峰',
                                //     xAxis: '17:30'
                                // }, {
                                //     xAxis: '21:15'
                                // }]
                                ]
                            }
                        }
                    ]
                };
                option && myChart.setOption(option);
        });
        },
        mounted() {
            document.getElementById("operatorLogs").scrollIntoView({ block: 'start', behavior: 'smooth' });
            setTimeout(this.changeLoading,1000);
            getLog(this.logsInfo).then(res=>{
                // console.log(res.data.data);
                this.tableData = res.data.data;
                this.tableData.map(function (val) {
                    if( val.type=='0'){
                        val.type='登陆操作';
                    } else if(val.type=='1'){
                        val.type='用户管理';
                    }else if(val.type=='2'){
                        val.type = '物资管理';
                    }
                })
            });
            getNums().then(res=>{
                this.number.logsNum = res.data.data[0];
                this.number.recentLogsNum = res.data.data[1];
                this.number.userManegeLogsNum = res.data.data[2];
                this.number.recentUserManegeLogsNum = res.data.data[3];
                this.number.materialManegeLogsNum = res.data.data[4];
                this.number.recentMaterialManegeLogsNum = res.data.data[5];
            });
        }
    }
</script>

<style scoped>
.card1{
    border-radius: 6px;
    background:rgba(0,0,0,0.1);
}
.card2{
    min-height: 833px;
    border: none;
    border-radius: 6px;
    /*background:rgba(0,0,0,0.1);*/
}
.card3{
    min-height: 130px;
    border: none;
    border-radius: 6px;
    background:rgba(0,0,0,0.1);
}
.card4{
    min-height: 420px;
    max-height: 450px;
    overflow: scroll;
    border: none;
    border-radius: 6px;
    /*background:rgba(0,0,0,0.2);*/
}
.numsty{
    float: right;
    color: #409EFF;
    font-weight: 700;
}
.colorAndText{
    color: #409EFF;
    font-weight: 700;
}
.numText{
    text-align: center;
    justify-content: center;
    font-size: 20px;
    font-weight: 700;
    color: #409EFF;
}
/deep/ .el-table, /deep/ .el-table__expanded-cell{
    background-color: transparent;
}
/deep/ .el-table th,
/deep/ .el-table tr,
/deep/ .el-table td {
    background-color: transparent;
}
/*需要支持css3*/
::-webkit-scrollbar {
    /*隐藏滚轮*/
    display: none;
}
</style>
