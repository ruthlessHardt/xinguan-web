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
                                    资料库 <span style="margin-left: 2%;color: #00917c;font-weight: 700">21,231,000</span>
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

            <br>
            <el-row :gutter="20">
                <el-col :span="6">
                    <el-card class="card4">
                        <div class="top">
                            <div class="title">
                                新入资料
                            </div>
                            <span>5,000</span>
                        </div>
                    </el-card>
                    <br>
                    <el-card class="card3">
                        <div class="top">
                            <div class="title">
                                近一周使用
                            </div>
                            <span>5,000</span>
                        </div>
                    </el-card>
                    <br>
                    <el-card class="card4">
                        <div class="top">
                            <div class="title">
                                新进物资
                            </div>
                            <span>5,000</span>
                        </div>
                    </el-card>
                    <br>
                    <el-card class="card3">
                        <div class="top">
                            <div class="title">
                                库存剩余
                            </div>
                            <span>5,000</span>
                        </div>
                    </el-card>
                    <br>
                    <el-card class="card5">
                        <div class="top">
                            <div class="title">
                                物资预警
                            </div>
                            <span>5,000</span>
                        </div>
                    </el-card>
                    <br>
                    <el-card class="card3">
                        <div class="top">
                            <div class="title">
                                新进物资
                            </div>
                            <span>5,000</span>
                        </div>
                    </el-card>
                </el-col>
                <el-col :span="18">
                    <div>
                        <el-row :gutter="20">
                            <el-col :span="23">
                                <el-button type="primary" icon="el-icon-edit">物资信息修改</el-button>
                                <el-button type="success" icon="el-icon-search">查询物资信息</el-button>
                                <el-button type="info" icon="el-icon-finished">物资资料添加</el-button>
                                <el-button type="warning" icon="el-icon-sort-down">导出资料清单</el-button>
                            </el-col>
                        </el-row>
                    </div>
                    <br>
                    <el-card class="card2">
                        <div id = "chart1" style="width: 100%;height: 300px;margin:0 0px -30px 0px;"></div>
                    </el-card>
                    <br>

                    <br><br>
                    <div>
                        <el-row :gutter="80">
                            <el-col :span="12">
                                <el-card class="card2">
                                    <div slot="header" class="clearfix">
                                        <span>方案建议1</span>
                                        <el-button style="float: right; padding: 3px 0" type="text">操作按钮</el-button>
                                    </div>
                                    <div>
                                        <el-tag>加进口罩2000副</el-tag>&nbsp&nbsp
                                        <el-tag type="success">标签三</el-tag>&nbsp&nbsp
                                        <el-tag>加进口罩2000副</el-tag>&nbsp&nbsp
                                        <el-tag>加进口罩2000副</el-tag>&nbsp&nbsp
                                        <el-tag type="danger">标签五</el-tag>&nbsp&nbsp
                                    </div>
                                </el-card>
                            </el-col>
                        </el-row>
                    </div>
                </el-col>
            </el-row>
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
                    legend: {},
                    tooltip: {
                        trigger: 'axis',
                        showContent: false
                    },
                    dataset: {
                        source: [
                            ['product', '2012', '2013', '2014', '2015', '2016', '2017'],
                            ['Milk Tea', 56.5, 82.1, 88.7, 70.1, 53.4, 85.1],
                            ['Matcha Latte', 51.1, 51.4, 55.1, 53.3, 73.8, 68.7],
                            ['Cheese Cocoa', 40.1, 62.2, 69.5, 36.4, 45.2, 32.5],
                            ['Walnut Brownie', 25.2, 37.1, 41.2, 18, 33.9, 49.1]
                        ]
                    },
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                            type: 'cross'
                        }
                    },
                    xAxis: {type: 'category'},
                    yAxis: {gridIndex: 0},
                    grid: {top: '20%'},
                    series: [
                        {type: 'line', smooth: true, seriesLayoutBy: 'row', emphasis: {focus: 'series'}},
                        {type: 'line', smooth: true, seriesLayoutBy: 'row', emphasis: {focus: 'series'}},
                        {type: 'line', smooth: true, seriesLayoutBy: 'row', emphasis: {focus: 'series'}},
                        {type: 'line', smooth: true, seriesLayoutBy: 'row', emphasis: {focus: 'series'}},
                    ]
                };

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
        background:linear-gradient(150deg,#2222,#113222),url("https://s3.jpg.cm/2021/02/28/zDuDS.jpg") fixed;
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
        min-height: 266px;
    }
    .card3{
        background-color: #99a9bf;
        border: none;
    }
    .card4{
        background-color: #62d2a2;
        border: none;
    }
    .card5{
        background-color: #ea8a8a;
        border: none;
    }
</style>
