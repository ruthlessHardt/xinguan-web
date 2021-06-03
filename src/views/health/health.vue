<template>
    <div style="padding-top: 2%">
        <el-row :gutter="20">
            <el-col :span="4">
                <el-col :span="3.5">
                    <el-card>
                        <el-col :span="0.5">
                            <el-card style="width: 10px;height: 25px;background-color: crimson"></el-card>
                        </el-col>
                        健康上报小程序体验版
                        <div id="ewm">
                            <img :src="xcxImage" alt="">
                        </div>
                    </el-card>
                </el-col>
            </el-col>
            <el-col :span="20">
                <el-row>
                    <el-col :span="23">
                        <el-card>
                            <el-col :span="0.5">
                                <el-card style="width: 10px;height: 25px;background-color: crimson"></el-card>
                            </el-col>
                            人员健康数据
                        </el-card>
                    </el-col>
                </el-row>
                <br>
                <el-row>
                    <el-col :span="23">
                        <el-card class="card1">
                            <el-divider></el-divider>
                            <el-table
                                    border
                                    height="550px"
                                    :data="tableData"
                                    style="width: 100%;">
                                <div v-for="(item,index) in table" :key="index">
                                    <el-table-column
                                            :label="item.name"
                                            :prop="item.dataName"
                                            show-overflow-tooltip
                                            sortable
                                            v-if="item.name!='上报时间'"
                                    >
                                    </el-table-column>
                                    <el-table-column
                                            :label="item.name"
                                            :prop="item.dataName"
                                            width="160px"
                                            sortable
                                            v-if="item.name=='上报时间'"
                                            fixed
                                    >
                                    </el-table-column>


                                </div>
<!--                                <el-table-column-->
<!--                                        label="操作"-->
<!--                                        align="center"-->
<!--                                        width="300px">-->
<!--                                    <template slot-scope="scope">-->
<!--                                        <el-button-->
<!--                                                size="mini"-->
<!--                                                type="success"-->
<!--                                                @click="bianji(scope.row)">编辑</el-button>-->
<!--                                        <el-button-->
<!--                                                size="mini"-->
<!--                                                type="danger"-->
<!--                                                @click="handleDelete(scope.row)">删除</el-button>-->
<!--                                    </template>-->
<!--                                </el-table-column>-->
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
            </el-col>

        </el-row>
    </div>
</template>

<script>
    import {healthReportList} from "../../services/healthService";
    export default {
            data(){
                return {
                    totalPage:0,
                    pageSize:10,
                    pageIndex: 1,
                    currentPage:'',
                    xcxImage:'https://s3.jpg.cm/2021/04/11/ykF5S.jpg',
                    form:{
                        id:'',
                        cardId:'',
                        name:'',
                        sex:'',
                        people:'',
                        tel:'',
                        fromAddress:'',
                        currentAddress:'',
                        whetherBeenToRiskArea:'',
                        temperature:'',
                        respiratoryDisease:'',
                        digestiveDiseases:'',
                        travelPlan:'',
                        otherDiseases:'',
                    },
                    tableData: [],
                    table: {
                        otherDiseases:{
                            name:'其他疾病',
                            dataName:'otherDiseases',
                        },
                        createTime:{
                            name:'上报时间',
                            dataName:'createTime',
                        },
                        cardId:{
                            name:'身份证',
                            dataName:'cardId',
                        },
                        name:{
                            name:'姓名',
                            dataName:'name',
                        },
                        sex:{
                            name:'性别',
                            dataName:'sex',
                        },
                        people:{
                            name:'民族',
                            dataName:'people',
                        },
                        tel:{
                            name:'联系电话',
                            dataName:'tel',
                        },
                        fromAddress:{
                            name:'来自什么地方',
                            dataName:'fromAddress',
                        },
                        currentAddress:{
                            name:'现居地',
                            dataName:'currentAddress',
                        },
                        whetherBeenToRiskArea:{
                            name:'是否去过高危地区',
                            dataName:'whetherBeenToRiskArea',
                        },
                        temperature:{
                            name:'体温',
                            dataName:'temperature',
                        },
                        respiratoryDisease:{
                            name:'是否有呼吸道疾病',
                            dataName:'respiratoryDisease',
                        },
                        digestiveDiseases:{
                            name:'是否有消化道疾病',
                            dataName:'digestiveDiseases',
                        },
                        travelPlan:{
                            name:'未来出差计划',
                            dataName:'travelPlan',
                        },

                    },
                }
            },
        methods:{
            bianji(item){
                this.form={
                    id:item.id,
                    cardId:item.cardId,
                    name:item.name,
                    sex:item.sex,
                    people:item.people,
                    tel:item.tel,
                    fromAddress:item.fromAddress,
                    currentAddress:item.currentPage,
                    whetherBeenToRiskArea:item.whetherBeenToRiskArea,
                    temperature:item.temperature,
                    respiratoryDisease:item.respiratoryDisease,
                    digestiveDiseases:item.digestiveDiseases,
                    travelPlan:item.travelPlan,
                    otherDiseases:item.otherDiseases,
                };
            },
            handleDelete(item){
                // deleteRecord(item.id).then(res1=>{
                //     if(res1.data.data==1){
                //         getGrantRecords(this.currentPage,'').then(res=>{
                //             this.tableData = res.data.data;
                //             this.pageSize = res.data.data.pageSize;
                //             this.totalPage = res.data.data.total;
                //         });
                //         this.$notify({
                //             title: '成功',
                //             message: '删除成功',
                //             type: 'success'
                //         });
                //     }else{
                //         this.$notify({
                //             title: '提示',
                //             message: res1.data.data,
                //             type: 'info'
                //         });
                //     }
                //
                // })
            },
            handleCurrentChange(val) {
                this.currentPage = val;
                healthReportList(val,'').then(res=>{
                    this.tableData = res.data.data.list;
                    this.pageSize = res.data.data.pageSize;
                    this.totalPage = res.data.data.total;
                })
            },
        },
        mounted() {
            healthReportList(1,'').then(res=>{
                // console.log(res.data.data);
                this.tableData = res.data.data.list;
                this.pageSize = res.data.data.pageSize;
                this.totalPage = res.data.data.total;
            })
        }
    }
</script>

<style scoped>
#ewm img{
    width: 200px;
    height: 200px;
}
    .card1{
        width: 100%;
        min-height: 700px;
        max-height: 800px;
    }
</style>
