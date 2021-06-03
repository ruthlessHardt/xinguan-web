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
                                    出库记录 <span style="margin-left: 2%;color: #00917c;font-weight: 700">2,000</span>
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
                                已出库
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
                        text: '某地区蒸发量和降水量',
                        subtext: '纯属虚构'
                    },
                    tooltip: {
                        trigger: 'axis'
                    },
                    legend: {
                        data: ['蒸发量', '降水量']
                    },
                    toolbox: {
                        show: true,
                        feature: {
                            dataView: {show: true, readOnly: false},
                            magicType: {show: true, type: ['line', 'bar']},
                            restore: {show: true},
                            saveAsImage: {show: true}
                        }
                    },
                    calculable: true,
                    xAxis: [
                        {
                            type: 'category',
                            data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']
                        }
                    ],
                    yAxis: [
                        {
                            type: 'value'
                        }
                    ],
                    series: [
                        {
                            name: '蒸发量',
                            type: 'bar',
                            data: [2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3],
                            markPoint: {
                                data: [
                                    {type: 'max', name: '最大值'},
                                    {type: 'min', name: '最小值'}
                                ]
                            },
                            markLine: {
                                data: [
                                    {type: 'average', name: '平均值'}
                                ]
                            }
                        },
                        {
                            name: '降水量',
                            type: 'bar',
                            data: [2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3],
                            markPoint: {
                                data: [
                                    {name: '年最高', value: 182.2, xAxis: 7, yAxis: 183},
                                    {name: '年最低', value: 2.3, xAxis: 11, yAxis: 3}
                                ]
                            },
                            markLine: {
                                data: [
                                    {type: 'average', name: '平均值'}
                                ]
                            }
                        }
                    ]
                };
                option && myChart.setOption(option);
            },
        },
        mounted() {
            this.drawChart();
            document.getElementById("materialIn").scrollIntoView({ block: 'start', behavior: 'smooth' });
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
