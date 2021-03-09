<template>
    <div id="materialIn"
            v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <div>
            <el-row :gutter="20">
                <el-col :span="24">
                    <el-card>
                        <el-row :gutter="21">
                            <el-col :span="22">
                                <div>
                                    入库记录 <span style="margin-left: 2%;color: #00917c;font-weight: 700">2,000</span>
                                </div>
                            </el-col>
                            <el-col :span="2">
                                <div>
                                    <el-link :underline="false" target="_blank">饿了么</el-link>
                                </div>
                            </el-col>
                        </el-row>

                    </el-card>
                </el-col>
            </el-row>
            <br>
            <el-row :gutter="20">
                <el-col :span="6">
                    <el-card class="card3">
                        <div class="top">
                            <div class="title">
                                已入库
                            </div>
                            <span>5,000</span>
                        </div>
                    </el-card>
                    <br>
                    <el-card class="card3">
                        <div class="top">
                            <div class="title">
                                待审核
                            </div>
                            <span>5,000</span>
                        </div>
                    </el-card>
                    <br>
                    <el-card class="card3">
                        <div class="top">
                            <div class="title">
                                待审核
                            </div>
                            <span>5,000</span>
                        </div>
                    </el-card>
                </el-col>
                <el-col :span="18">
                    <template>
                        <div class="carousel">
                            <el-carousel height="340px" direction="horizontal" :autoplay="true" interval="2000">
                                <el-carousel-item v-for="item in 10" :key="item">
                                    <h3 class="medium">{{ item }}</h3>
                                </el-carousel-item>
                            </el-carousel>
                        </div>
                    </template>
                </el-col>
            </el-row>
            <br>
            <el-card class="card2">
                <div id = "chart1" style="width: 100%;height: 300px;margin:0 0px -30px 0px;"></div>
            </el-card>
            <br>
            <el-card class="card1">
                <div>
                    <el-row :gutter="13">
                        <el-col :span="3">
                            <el-select size="small" v-model="value" clearable placeholder="请选择类型">
                                <el-option
                                        v-for="item in options"
                                        :key="item.value"
                                        :label="item.label"
                                        :value="item.value">
                                </el-option>
                            </el-select>
                        </el-col>
                        <el-col :span="3">
                            <el-input size="small" placeholder="请输入内容" v-model="input" clearable></el-input>
                        </el-col>
                        <el-col :span="3">
                            <el-select size="small" v-model="state" clearable>
                                <el-option
                                        v-for="item in options"
                                        :key="item.value"
                                        :label="item.label"
                                        :value="item.value">
                                </el-option>
                            </el-select>

                        </el-col>
                        <el-col :span="6">
                            <el-date-picker
                                    size="small"
                                    v-model="value2"
                                    type="daterange"
                                    align="right"
                                    unlink-panels
                                    range-separator="至"
                                    start-placeholder="开始日期"
                                    end-placeholder="结束日期"
                                    :picker-options="pickerOptions">
                            </el-date-picker>
                        </el-col>
                        <el-col :span="1.4">
                            <el-button size="small" type="primary" icon="el-icon-search">查询</el-button>
                        </el-col>
                        <el-col :span="1.4">
                            <el-button size="small" type="primary" icon="el-icon-plus" @click="ruku">入库</el-button>
                        </el-col>
                        <el-col :span="2">
                            <el-button size="small" type="warning" icon="el-icon-download">导出</el-button>
                        </el-col>
                    </el-row>
                </div>
                <el-divider></el-divider>
            <el-table
                    border
                    :data="tableData.filter(data => !search || data.name.toLowerCase().includes(search.toLowerCase()))"
                    style="width: 100%;">
                <el-table-column
                        label="Date"
                        prop="date">
                </el-table-column>
                <el-table-column
                        label="Name"
                        prop="name">
                </el-table-column>
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
                                @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
                        <el-button
                                size="mini"
                                type="danger"
                                @click="handleDelete(scope.$index, scope.row)">删除</el-button>
                    </template>
                </el-table-column>
            </el-table>
                <el-pagination
                        layout="prev, pager, next"
                        background
                        style="background-color: transparent;padding-top: 2%;float: right;padding-bottom: 1%"
                        :total="50">
                </el-pagination>
            </el-card>
        </div>
        <br>

        <el-dialog title="收货地址" :visible.sync="dialogFormVisible">
            <el-form :model="form">
                <el-form-item label="活动名称" :label-width="formLabelWidth">
                    <el-input v-model="form.name" autocomplete="off"></el-input>
                </el-form-item>
                <el-form-item label="活动区域" :label-width="formLabelWidth">
                    <el-select v-model="form.region" placeholder="请选择活动区域">
                        <el-option label="区域一" value="shanghai"></el-option>
                        <el-option label="区域二" value="beijing"></el-option>
                    </el-select>
                </el-form-item>
            </el-form>
            <div slot="footer" class="dialog-footer">
                <el-button @click="dialogFormVisible = false">取 消</el-button>
                <el-button type="primary" @click="dialogFormVisible = false">确 定</el-button>
            </div>
        </el-dialog>
    </div>

</template>

<script>
    import * as echarts from 'echarts';
    export default {
        data() {
            return {
                dialogFormVisible: false,
                formLabelWidth: '120px',
                form: {
                    name: '',
                    region: '',
                    date1: '',
                    date2: '',
                    delivery: false,
                    type: [],
                    resource: '',
                    desc: ''
                },
                pickerOptions: {
                    shortcuts: [{
                        text: '最近一周',
                        onClick(picker) {
                            const end = new Date();
                            const start = new Date();
                            start.setTime(start.getTime() - 3600 * 1000 * 24 * 7);
                            picker.$emit('pick', [start, end]);
                        }
                    }, {
                        text: '最近一个月',
                        onClick(picker) {
                            const end = new Date();
                            const start = new Date();
                            start.setTime(start.getTime() - 3600 * 1000 * 24 * 30);
                            picker.$emit('pick', [start, end]);
                        }
                    }, {
                        text: '最近三个月',
                        onClick(picker) {
                            const end = new Date();
                            const start = new Date();
                            start.setTime(start.getTime() - 3600 * 1000 * 24 * 90);
                            picker.$emit('pick', [start, end]);
                        }
                    }]
                },
                value2: '',
                input:'',
                loading:true,
                fullscreenLoading:true,
                tableData: [{
                    date: '2016-05-02',
                    name: '王小虎',
                    address: '上海市普陀区金沙江路 1518 弄'
                }, {
                    date: '2016-05-04',
                    name: '王小虎',
                    address: '上海市普陀区金沙江路 1517 弄'
                }, {
                    date: '2016-05-01',
                    name: '王小虎',
                    address: '上海市普陀区金沙江路 1519 弄'
                }, {
                    date: '2016-05-03',
                    name: '王小虎',
                    address: '上海市普陀区金沙江路 1516 弄'
                }],
                search:'',
                options: [{
                    value: '选项1',
                    label: '黄金糕'
                }, {
                    value: '选项2',
                    label: '双皮奶'
                }, {
                    value: '选项3',
                    label: '蚵仔煎'
                }, {
                    value: '选项4',
                    label: '龙须面'
                }, {
                    value: '选项5',
                    label: '北京烤鸭'
                }],
                value: '',
                state:'选项1',
            }
        },
        methods:{
            changeLoading(){
                this.loading = false;
            },
            ruku(){
                // this.dialogFormVisible = true;
                this.$router.push("/inStorage");
            },
            drawChart(){
                var chartDom = document.getElementById('chart1');
                var myChart = echarts.init(chartDom);
                var option;

                option = {
                    title: {
                        text: '动态数据',
                        subtext: '纯属虚构'
                    },
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                            type: 'line',
                            label: {
                                backgroundColor: '#283b56'
                            }
                        },
                        transitionDuration: 0,
                    },
                    legend: {
                        data:['最新成交价', '预购队列']
                    },
                    dataZoom: {
                        show: false,
                        start: 0,
                        end: 100
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

                    var data0 = option.series[0].data;
                    var data1 = option.series[1].data;
                    data0.shift();
                    data0.push(Math.round(Math.random() * 1000));
                    data1.shift();
                    data1.push((Math.random() * 10 + 5).toFixed(1) - 0);

                    option.xAxis[0].data.shift();
                    option.xAxis[0].data.push(axisData);
                    option.xAxis[1].data.shift();
                    option.xAxis[1].data.push(app.count++);

                    myChart.setOption(option);
                }, 2100);
                option && myChart.setOption(option);
            },
        },
        mounted() {
            this.drawChart();
            setTimeout(this.changeLoading,1000);
        }
    }
</script>
<style scoped>
    #materialIn{
        width: auto;
        height:100%;
        margin: -20px;
        padding: 2.2%  3% 0% 3%;
        /*background-color: #545372;*/
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
        /*color: #52616b;*/
        font-weight: 700;
    }
    /deep/ .el-table tbody tr:hover>td {
        /*background-color: transparent;*/
        /*color:#fff;*/
        color: #ef6c57;
        cursor: pointer
    }

    .el-table::before {
        left: 0;
        bottom: 0;
        width: 100%;
        height: 0px;
    }
    .card1{
        /*background-color: #2B2C3E;*/

        /*border: none;*/
    }
    .title{
        font-size: 26px;
        font-weight: 200;
        /*color: white;*/
    }
    .top>span{
       font-weight: 700;
        font-size: 20px;
    }
    .card2{
        min-height: 340px;
    }
    .card3{
        background-color: #99a9bf;
        border: none;
    }
    .el-carousel__item h3 {
        color: #475669;
        font-size: 14px;
        opacity: 0.75;
        line-height: 200px;
        margin: 0;
    }

    .el-carousel__item:nth-child(2n) {
        background-color: #99a9bf;
    }

    .el-carousel__item:nth-child(2n+1) {
        background-color: #d3dce6;
    }
    .carousel{
        text-align: center;
        justify-content: center;
        align-items: center;
    }
</style>
