<template>
    <div id="contents" v-loading="loading"
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <el-breadcrumb separator="/">
            <el-breadcrumb-item :to="{ path: '/contents' }">首页</el-breadcrumb-item>
        </el-breadcrumb>
        <br>
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
            <el-col :span="8" >
                <el-card>
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
                            <el-col :span="6" style="min-width: 160px">
                                <div class="num-size num1">{{dataInfo2.areaTree.total.deadRate}}%</div>
                                <div class="num-size1">死亡率</div>
                                <div><span class="num2">———</span></div>
                                <div class="diver"></div>
                                <div class="diver"></div>
                            </el-col>
                            <el-col :span="6" style="min-width: 160px">
                                <div class="num-size num5">{{dataInfo2.areaTree.total.healRate}}%</div>
                                <div class="num-size1">治愈率</div>
                                <div><span class="num2">———</span></div>
                                <div class="diver"></div>
                                <div class="diver"></div>
                            </el-col>
                        </el-row>
                    </div>
                </el-card>
            </el-col>
            <el-col :span="8">
                <el-card class="box-card">
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
                                <div>较昨日<span class="num6">+{{dataInfo2.chinaAdd.nowSevere}}</span></div>
                                <div class="diver"></div>
                                <div class="diver"></div>
                            </el-col>
                            <el-col :span="6" style="min-width: 160px">
                                <div class="num-size num4">{{dataInfo2.chinaTotal.suspect}}</div>
                                <div class="num-size1">现有疑似</div>
                                <div>较昨日<span class="num4">+{{dataInfo2.chinaAdd.suspect}}</span></div>
                                <div class="diver"></div>
                                <div class="diver"></div>
                            </el-col>
                        </el-row>
                    </div>
                </el-card>
                <br>
                <el-card>
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
<!--            <el-col :span="8">-->
<!--                <el-card>-->
<!--                    <div slot="header" class="clearfix">-->
<!--                        <span style="font-size:18px;color: #1f2d3d;font-weight: 700">疫情地图</span>-->
<!--                    </div>-->
<!--                    <div style="text-align: center">-->
<!--                        <div class="echarts">-->

<!--                        </div>-->
<!--                    </div>-->
<!--                </el-card>-->
<!--            </el-col>-->
        </el-row>
        <br>
        <el-row :gutter="20">
            <el-col>
                <el-card>
                    <div slot="header" class="clearfix">
                        <span style="font-size:18px;color: #1f2d3d;font-weight: 700">全国各地疫情数据</span>
                    </div>
                    <div style="text-align: center">
                        <div class="table">
                            <el-table
                                    v-if="tableData!=''"
                                    :data="tableData"
                                    style="width: 100%;margin-bottom: 20px;"
                                    border
                                    height="780"
                                    :stripe='stripe'
                                    row-key="__ob__.dep.id"
                                    :tree-props="{children: 'children', }">
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
                            </el-table>
                        </div>
                    </div>
                </el-card>
            </el-col>
        </el-row>
    </div>

</template>

<script>
    import axios from "axios";
    export default {
        name: "Contents",
        data(){
          return{
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
            }
        },
        methods: {
            changeLoading(){
                this.loading = false;
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
                this.dataInfo = res.data;
            });

            //中国疫情网数据
            axios.post(`/api/getDisease.html`).then(res => {
                let data = JSON.parse(res.data.data);
                this.dataInfo2 = data;
                this.tableData = data.areaTree[0].children;
                this.dataInfo2.areaTree = data.areaTree[0];
                console.log(data);
                // let dss = data.areaTree[0].children;
                // this.datas = dss;
                // this.chinaTotal = data.chinaTotal.confirm;
                // this.chinaAdd = data.chinaAdd.confirm;
                // this.chinaNow = data.chinaTotal.nowConfirm;
                // this.lastTime = data.lastUpdateTime;
                // this.isLoading = false;
            });
        }
    }
</script>

<style scoped>
    #contents{
        height: 88vh;
        min-width: 1200px;
    }
.el-card{
    text-align: center;
}
.num-size{
    font-size: 30px;
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
</style>
