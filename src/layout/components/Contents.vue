<template>
    <div id="contents" v-loading="loading"
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <div style="padding: 50px">
            <div style="float: right">
            <span style="text-align: center;font-size: 30px;font-family:华文琥珀">
            XINGUAN
            </span>
                <span>统筹管理物资</span>
            </div>
            <el-row :gutter="40" type="flex">
                <el-col :span="10">
                    <span style="font-size: 25px;font-weight: 700">{{dataInfo.country.childStatistic}}</span>
                    <span style="color: slategrey;padding-left:5%">更新截止{{dataInfo2.lastUpdateTime}}</span>
                </el-col>
                <el-col :span="12"></el-col>
                <div>
                    <el-tooltip class="item" effect="dark" content="数据来自国家卫健委，各省市卫健委，各省市政府" placement="left">
                        <i class="fa fa-question-circle-o"></i>
                    </el-tooltip>
                    说明
                </div>
            </el-row>
            <br>
            <el-row :gutter="20">
                <el-col :span="6" >
                    <el-card class="card1">
                        <div slot="header" class="clearfix">
                            <span style="font-size:18px;color: #1f2d3d;font-weight: 700">累计</span>
                        </div>
                        <div class="count">
                            <el-row :gutter="20">
                                <el-col :span="6" style="min-width: 160px">
                                    <div class="num-size num">{{dataInfo2.chinaTotal.confirm}}</div>
                                    <div class="num-size1">累计确诊</div>
                                    <div>较昨日<span class="num">+{{dataInfo2.chinaAdd.confirm}}</span></div>
                                    <div class="diver"></div>
                                    <div class="diver"></div>
                                </el-col>
                                <el-col :span="6" style="min-width: 160px">
                                    <div class="num-size num3">{{dataInfo2.chinaTotal.dead}}</div>
                                    <div class="num-size1">累计死亡</div>
                                    <div>较昨日<span class="num3">+{{dataInfo2.chinaAdd.dead}}</span></div>
                                    <div class="diver"></div>
                                    <div class="diver"></div>
                                </el-col>
                                <el-col :span="6" style="min-width: 160px">
                                    <div class="num-size num2">{{dataInfo2.chinaTotal.heal}}</div>
                                    <div class="num-size1">累计治愈</div>
                                    <div>较昨日<span class="num2">+{{dataInfo2.chinaAdd.heal}}</span></div>
                                    <div class="diver"></div>
                                    <div class="diver"></div>
                                </el-col>

                                <el-col :span="6" style="min-width: 160px">
                                    <div class="num-size num4">{{dataInfo2.chinaTotal.importedCase}}</div>
                                    <div class="num-size1">输入病例</div>
                                    <div>较昨日<span class="num4">+{{dataInfo2.chinaAdd.importedCase}}</span></div>
                                    <div class="diver"></div>
                                    <div class="diver"></div>
                                </el-col>
                                <el-col :span="6" style="min-width: 160px">
                                    <div class="num-size num4">{{dataInfo2.chinaTotal.noInfect}}</div>
                                    <div class="num-size1">无症状</div>
                                    <div>较昨日<span class="num4">+{{dataInfo2.chinaAdd.noInfect}}</span></div>
                                    <div class="diver"></div>
                                    <div class="diver"></div>
                                </el-col>
                                <!--                            <el-col :span="6" style="min-width: 160px">-->
                                <!--                                <div class="num-size num1">{{dataInfo2.areaTree.total.deadRate}}%</div>-->
                                <!--                                <div class="num-size1">死亡率</div>-->
                                <!--                                <div><span class="num2">———</span></div>-->
                                <!--                                <div class="diver"></div>-->
                                <!--                                <div class="diver"></div>-->
                                <!--                            </el-col>-->
                                <!--                            <el-col :span="6" style="min-width: 160px">-->
                                <!--                                <div class="num-size num5">{{dataInfo2.areaTree.total.healRate}}%</div>-->
                                <!--                                <div class="num-size1">治愈率</div>-->
                                <!--                                <div><span class="num2">———</span></div>-->
                                <!--                                <div class="diver"></div>-->
                                <!--                                <div class="diver"></div>-->
                                <!--                            </el-col>-->
                            </el-row>
                        </div>
                    </el-card>
                </el-col>
                <el-col :span="6">
                    <el-card class="card0">
                        <div slot="header" class="clearfix">
                            <span style="font-size:18px;color: #1f2d3d;font-weight: 700">现有</span>
                        </div>
                        <div style="text-align: center">
                            <el-row :gutter="2">
                                <el-col :span="6" style="min-width: 160px">
                                    <div class="num-size num3">{{dataInfo2.chinaTotal.nowConfirm}}</div>
                                    <div class="num-size1">现有确诊</div>
                                    <div>较昨日<span class="num3">+{{dataInfo2.chinaAdd.noInfect}}</span></div>
                                    <div class="diver"></div>
                                    <div class="diver"></div>
                                </el-col>
                                <el-col :span="6" style="min-width: 160px">
                                    <div class="num-size num6">{{dataInfo2.chinaTotal.nowSevere}}</div>
                                    <div class="num-size1">现有重症</div>
                                    <div>较昨日<span class="num6">{{dataInfo2.chinaAdd.nowSevere}}</span></div>
                                    <div class="diver"></div>
                                    <div class="diver"></div>
                                </el-col>
                                <el-col :span="6" style="min-width: 160px">
                                    <div class="num-size num4">{{dataInfo2.chinaTotal.suspect}}</div>
                                    <div class="num-size1">现有疑似</div>
                                    <div>较昨日<span class="num4">{{dataInfo2.chinaAdd.suspect}}</span></div>
                                    <div class="diver"></div>
                                    <div class="diver"></div>
                                </el-col>
                            </el-row>
                        </div>
                    </el-card>
                    <br>
                    <el-card class="card2">
                        <el-row>
                            <el-col :span="6" style="min-width: 160px">
                                <div class="num-size num1">{{dataInfo2.areaTree.total.deadRate}}%</div>
                                <div class="num-size1">死亡率</div>
                                <div><span class="num2">———</span></div>
                                <div class="diver"></div>
                            </el-col>
                            <el-col :span="6" style="min-width: 160px">
                                <div class="num-size num5">{{dataInfo2.areaTree.total.healRate}}%</div>
                                <div class="num-size1">治愈率</div>
                                <div><span class="num2">———</span></div>
                                <div class="diver"></div>
                            </el-col>
                        </el-row>
                    </el-card>
                </el-col>

                <el-col :span="12">
                    <el-card class="card3">
                        <div id="myChartChina" style="width:100%;height:390px;"></div>
                    </el-card>
                </el-col>
            </el-row>
            <br>
            <el-row :gutter="20">
                <el-col :span="12">
                    <el-card class="card3">
                        <div id="myChartChina1" style="width:100%;height:390px;"></div>
                    </el-card>
                </el-col>
                <el-col :span="12">
                    <el-card class="card3">
                        <div id="myChartChina2" style="width:100%;height:390px;"></div>
                    </el-card>
                </el-col>
            </el-row>
            <br>

            <el-row :gutter="20">
                <el-col :span="24">
                    <el-card class="card4" shadow="never">
                        <div id="lineChart1" style="width:100%;height:390px;"></div>
                    </el-card>
                </el-col>
                <!--            <el-col :span="8">-->
                <!--                <el-card>-->
                <!--                    <div id="lineChart2" style="width:100%;height:390px;"></div>-->
                <!--                </el-card>-->
                <!--            </el-col>-->
            </el-row>
            <br>
            <!--        <el-row :gutter="20">-->
            <!--            <el-card>-->
            <!--                <div id="myChart2" style="width:100%;height:430px;"></div>-->
            <!--            </el-card>-->
            <!--        </el-row>-->
            <br>
            <el-row :gutter="20">
                <el-col>
                    <el-card class="card5" shadow="never">
                        <div slot="header" class="clearfix">
                            <span style="font-size:18px;color: #1f2d3d;font-weight: 700">全国各地疫情数据</span>
                        </div>
                        <div style="text-align: center">
                            <div class="table">
                                <!--                            row-key="__ob__.dep.id"-->
                                <!--                            :tree-props="{children: 'children', }"-->
                                <el-table
                                        v-if="tableData!=''"
                                        :data="tableData"
                                        style="width: 100%;margin-bottom: 20px;"
                                        height="780"
                                >
                                    <el-table-column
                                            fixed
                                            prop="name"
                                            label="省份"
                                            sortable
                                            width="120">
                                    </el-table-column>
                                    <el-table-column
                                            prop="total.confirm"
                                            label="总确诊数"
                                            sortable>
                                    </el-table-column>
                                    <el-table-column
                                            prop="total.nowConfirm"
                                            label="现存确诊"
                                            sortable>
                                    </el-table-column>
                                    <el-table-column
                                            prop="today.confirm"
                                            label="新增确诊"
                                            sortable>
                                    </el-table-column>
                                    <el-table-column
                                            prop="total.dead"
                                            label="死亡数"
                                            sortable>
                                    </el-table-column>
                                    <el-table-column
                                            prop="total.heal"
                                            label="治愈数"
                                            sortable>
                                    </el-table-column>
                                    <el-table-column
                                            prop="total.suspect"
                                            label="疑似"
                                            sortable>
                                    </el-table-column>
                                    <el-table-column
                                            prop="total.wzz"
                                            label="无症状"
                                            sortable>
                                    </el-table-column>
                                    <el-table-column
                                            prop="today.wzz_add"
                                            label="新增无症状"
                                            sortable>
                                    </el-table-column>
                                    <el-table-column
                                            prop="total.healRate"
                                            label="治愈率(%)"
                                            sortable>
                                    </el-table-column>
                                    <el-table-column
                                            prop="total.deadRate"
                                            label="死亡率(%)"
                                            sortable>
                                    </el-table-column>
                                    <el-table-column
                                            fixed="right"
                                            label="操作"
                                            width="100">
                                        <template slot-scope="scope">
                                            <el-button @click="handleClick(scope.row)" type="text" size="small">查看</el-button>
                                        </template>
                                    </el-table-column>
                                </el-table>
                            </div>
                        </div>
                    </el-card>
                </el-col>
            </el-row>
            <!--抽屉表格-->
            <el-drawer
                    :title="tableDataItem.name+'地区疫情数据'"
                    :visible.sync="table"
                    direction="rtl"
                    size="50%">
                <el-table :data="tableDataItem.children"
                            height="auto"
                style="color: #f6f5f5">
                    <el-table-column
                            prop="name"
                            label="市地区"
                            sortable
                            width="120">
                    </el-table-column>
                    <el-table-column
                            prop="total.confirm"
                            label="总确诊数"
                            sortable>
                    </el-table-column>
                    <el-table-column
                            prop="total.nowConfirm"
                            label="现存确诊"
                            sortable>
                    </el-table-column>
                    <el-table-column
                            prop="today.confirm"
                            label="新增确诊"
                            sortable>
                    </el-table-column>
                    <el-table-column
                            prop="total.dead"
                            label="死亡数"
                            sortable>
                    </el-table-column>
                    <el-table-column
                            prop="total.heal"
                            label="治愈数"
                            sortable>
                    </el-table-column>
                    <el-table-column
                            prop="total.suspect"
                            label="疑似"
                            sortable>
                    </el-table-column>
                    <el-table-column
                            prop="total.wzz"
                            label="无症状"
                            sortable>
                    </el-table-column>
                    <el-table-column
                            prop="total.healRate"
                            label="治愈率(%)"
                            sortable>
                    </el-table-column>
                    <el-table-column
                            prop="total.deadRate"
                            label="死亡率(%)"
                            sortable>
                    </el-table-column>
                </el-table>
                <!--图表显示-->
            </el-drawer>
        </div>

    </div>
</template>

<script>
    import axios from "axios";
    import * as echarts from 'echarts';
    import china1 from './json/china1.json'
    echarts.registerMap('china1', china1)
    export default {
        name: "Contents",
        data(){
          return{
              table: false,
              loading:true,
              fullscreenLoading:true,
                dataInfo:{
                    country:'',
                    dataSourceUpdateTime:'',
                    provinceArray:'',
                    trend:''
                },
              dataInfo2:{
                  lastUpdateTime:'',
                  areaTree:{total:''},
                  chinaAdd:'',
                  chinaTotal:''
              },
              tableData:'',
              stripe:true,
              tableDataItem:'',
              olddata:'',
            }
        },
        methods: {
            changeLoading(){
                this.loading = false;
            },
            handleClick(row) {
                // console.log(row);
                this.table= true;
                this.tableDataItem = row;
            },
    },
        mounted() {
            setTimeout(this.changeLoading,1000);
            //阿里健康-疫情api
            axios.get("http://ncovdata.market.alicloudapi.com/ncov/cityDiseaseInfoWithTrend",{
                headers:{
                    Authorization:`APPCODE 0accc7b6e99d461e8da67055a7d1b33e`
                }
            }).then(res=>{
                // console.log(res.data);
                // console.log(res.data.trend);
                this.olddata = res.data.trend;
                this.dataInfo = res.data;
                var oldSerise = [];
                var oldSerise1 = [];
                var oldSerise2 = [];
                var oldSerise3 = [];
                var dateList = [];
                var Chart1 = document.getElementById('lineChart1');
                var Chart2= document.getElementById('lineChart2');
                var lineChart1 = echarts.init(Chart1);
                Object.keys(this.olddata).forEach(k => {
                    if(k<=this.olddata.length){

                        let oitem = {
                            name:this.olddata[k].fullDay,
                            value:this.olddata[k].sure_cnt
                        }
                        let oitem2 = this.olddata[k].fullDay;
                        let oitem3 = {
                            name:this.olddata[k].fullDay,
                            value:this.olddata[k].cure_cnt
                        }
                        let oitem4 = {
                            name:this.olddata[k].fullDay,
                            value:this.olddata[k].die_cnt
                        }
                        let oitem5 = {
                            name:this.olddata[k].fullDay,
                            value:this.olddata[k].doubt_cnt
                        }
                        oldSerise1.push(oitem3);
                        oldSerise.push(oitem);
                        oldSerise2.push(oitem4);
                        oldSerise3.push(oitem5);
                        dateList.push(oitem2);
                    }
                });
               var option = {
                    title: [{
                        left: 'left',
                        text: '累计确诊折线图'
                    }],
                    tooltip: {
                        trigger: 'axis'
                    },
                   legend: {
                       left: 'right',
                       data: ['累计确诊', '累计治愈','累计疑似','累计死亡']
                   },
                    xAxis: [{
                        data: dateList,
                        boundaryGap: false,
                        type: 'category',
                    }],
                    yAxis: [{
                        type:'value',
                    }],
                    series: [{
                        name:'累计确诊',
                        type: 'line',
                        showSymbol: true,
                        data: oldSerise
                    },{
                        name:'累计治愈',
                        type: 'line',
                        showSymbol: true,
                        data: oldSerise1
                    },{
                        name:'累计疑似',
                        type: 'line',
                        showSymbol: true,
                        data: oldSerise3
                    },{
                        name:'累计死亡',
                        type: 'line',
                        showSymbol: true,
                        data: oldSerise2
                    }]
                };
                option && lineChart1.setOption(option);
            });

            //中国疫情网数据
            axios.post(`/api/getDisease.html`).then(res => {
                let data = JSON.parse(res.data.data);
                this.dataInfo2 = data;
                this.tableData = data.areaTree[0].children;
                // console.log(this.tableData)
                this.dataInfo2.areaTree = data.areaTree[0];
                var myChartContainer = document.getElementById('myChartChina');
                var myChartContainer1= document.getElementById('myChartChina1');
                var myChartContainer2= document.getElementById('myChartChina2');
                var myChartChina = echarts.init(myChartContainer);
                var myChartChina1 = echarts.init(myChartContainer1);
                var myChartChina2 = echarts.init(myChartContainer2);
                    // 绘制图表
                var serise = [];
                var serise1 =[];
                var serise2 =[];
                Object.keys(this.tableData).forEach(key => {
                    let item = {
                        //累计
                        name: this.tableData[key].name,
                        value:this.tableData[key].total.confirm
                    }
                    let item1 = {
                        //现存
                        name: this.tableData[key].name,
                        value:this.tableData[key].total.nowConfirm
                    }
                    let item2 = {
                        name: this.tableData[key].name,
                        value:this.tableData[key].today.confirm
                    }
                    serise.push(item);
                    serise1.push(item1);
                    serise2.push(item2);
                })


                var optionMap = {
                        title: {
                            text: '累计确诊疫情地图数据',
                            subtext: '疫情数据来自国家卫健委、各省市卫健委、各地政府机关',
                            sublink: 'http://www.nhc.gov.cn/xcs/xxgzbd/gzbd_index.shtml'
                        },
                        tooltip : {
                            trigger: 'item'
                        },
                        // legend: {
                        //     orient: 'vertical',
                        //     left: 'left',
                        //     data:['疫情数据']
                        // },
                        visualMap: {
                            min: 0,
                            max: 3800,
                            left: 'left',
                            top: 'bottom',
                            text:['高','低'],           // 文本，默认为数值文本
                            calculable : true,
                            color: ['#eb5e0b', '#eb5e0b', '#f9f871','#75cfb8']//值域颜色，最少两个
                        },
                        series : [
                            {
                                name: '疫情数据',
                                type: 'map',
                                mapType: 'china1',
                                roam: true,
                                label: {
                                    normal: {
                                        show: true
                                    },
                                    emphasis: {
                                        show: false
                                    }
                                },
                                data:serise
                            },
                        ]
                    };
                    if (optionMap && typeof optionMap === "object") {
                        myChartChina.setOption(optionMap, true);
                    }
                var optionMap1 = {
                    title: {
                        text: '现存确诊疫情地图数据',
                        subtext: '疫情数据来自国家卫健委、各省市卫健委、各地政府机关',
                        sublink: 'http://www.nhc.gov.cn/xcs/xxgzbd/gzbd_index.shtml'
                    },
                    tooltip : {
                        trigger: 'item'
                    },
                    // legend: {
                    //     orient: 'vertical',
                    //     left: 'left',
                    //     data:['疫情数据']
                    // },
                    visualMap: {
                        min: 0,
                        max: 500,
                        left: 'left',
                        top: 'bottom',
                        text:['高','低'],           // 文本，默认为数值文本
                        calculable : true,
                        color: ['#eb5e0b', '#f9f871','#ff9292','#fff']//值域颜色，最少两个
                    },
                    series : [
                        {
                            name: '疫情数据',
                            type: 'map',
                            mapType: 'china1',
                            roam: true,
                            label: {
                                normal: {
                                    show: true
                                },
                                emphasis: {
                                    show: false
                                }
                            },
                            data:serise1
                        },
                    ]
                };
                if (optionMap && typeof optionMap1 === "object") {
                    myChartChina1.setOption(optionMap1, true);
                }
                var optionMap2 = {
                    title: {
                        text: '新增确诊疫情地图数据',
                        subtext: '疫情数据来自国家卫健委、各省市卫健委、各地政府机关',
                        sublink: 'http://www.nhc.gov.cn/xcs/xxgzbd/gzbd_index.shtml'
                    },
                    tooltip : {
                        trigger: 'item'
                    },
                    // legend: {
                    //     orient: 'vertical',
                    //     left: 'left',
                    //     data:['疫情数据']
                    // },
                    visualMap: {
                        min: 0,
                        max: 20,
                        left: 'left',
                        top: 'bottom',
                        text:['高','低'],           // 文本，默认为数值文本
                        calculable : true,
                        color: ['#ec4646', '#e27802','#e8eae6']//值域颜色，最少两个
                    },
                    series : [
                        {
                            name: '疫情数据',
                            type: 'map',
                            mapType: 'china1',
                            roam: true,
                            label: {
                                normal: {
                                    show: true
                                },
                                emphasis: {
                                    show: false
                                }
                            },
                            data:serise2
                        },
                    ]
                };
                if (optionMap2 && typeof optionMap2 === "object") {
                    myChartChina2.setOption(optionMap2, true);
                }
            });
            document.getElementById("contents").scrollIntoView({ block: 'start', behavior: 'smooth' });

        }
    }
</script>

<style scoped>
    #contents{
        /*background: #d6e6f2;*/
        background: #fff;
        height: 145vh;
        margin: -20px;
        min-width: auto;
    }
.el-card{
    text-align: center;
}
.num-size{
    font-size: 20px;
    font-weight:700;
}
.num-size1{
    font-size: 20px;
    font-weight:700;
}
.num{
    color: #ef6c57;
}
.num1{
    color: #1a2634;
}
.num2{
    color: #487e95;
}
.num3{
    color: #ec4646;
}
.num4 {
    color: orange;
}
.num5{
    color: #00af91;
}
.num6{
    color: #ee9595;
}

.diver{
    height: 10px;
}
    #myChart2{
        border-radius: 3%;
    }
    /deep/ .el-table, /deep/ .el-table__expanded-cell{
        background-color: transparent;
    }
    /deep/ .el-table th,
    /deep/ .el-table tr,
    /deep/ .el-table td {
        background-color: transparent;
    }
    .card0{
        border: none;
        border-radius: 10px;
        /*background:rgba(0,0,0,0.1);*/
        background: #ecf0f1;
    }
    .card1{
        min-height: 434px;
        border: none;
        border-radius: 10px;
        background: #ecf0f1;
        /*background:rgba(0,0,0,0.1);*/
    }
    .card2{
        /*background-color: transparent;*/
        border-radius: 10px;
        background: #ecf0f1;
        /*background:rgba(0,0,0,0.1);*/
        border: none;
    }
    .card3{
        min-height: 434px;
        border: none;
        border-radius: 10px;
        /*background:rgba(0,0,0,0.1);*/
        background: #f1f2f6;
    }
    .card4{
        min-height: 434px;
        border: none;
        border-radius: 10px;
        background: transparent;
        /*background:rgba(0,0,0,0.1);*/
    }

    .card5{
        min-height: 434px;
        border: none;
        border-radius: 20px;
        /*background:rgba(0,0,0,0.1);*/
        background: transparent;
    }
    /*需要支持css3*/
    ::-webkit-scrollbar {
        /*隐藏滚轮*/
        display: none;
    }
    /deep/ .el-drawer{
        background: rgba(0,0,0,0.4);
    }
    /deep/ .el-drawer .el-table th {
        font-size: 17px;
    }
    /deep/ .el-drawer .el-table tbody tr td {
        font-weight: 700;
    }
    /deep/ .el-drawer .el-table tbody tr:hover>td { color:#16c79a;cursor: pointer}
    /deep/  .el-drawer__header {
        font-size: 22px;
        color: #487e95;
        background: rgba(19, 32, 42, 0.5) !important;
    }
</style>

<!--效果去除父级和子级限制可实现-->
<style>
    .el-drawer.rtl{
        overflow: auto;
    }
    /*.form .el-form-item__label{*/
    /*    color: white;*/
    /*}*/
</style>
