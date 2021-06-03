<template>
    <div id="materialIn"
            v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <div>
            <el-row :gutter="20">
                <template>
                        <div class="carousel">
                            <el-carousel style="width: 90%;" height="250px" direction="horizontal" :autoplay="true" :interval="5000" type="card">
                                <el-carousel-item v-for="item in lbtList" :key="item" style="border-radius: 6px">
                                    <!--                                    <h3 class="medium">{{ item }}</h3>-->
                                    <div>
                                        <img :src="item" style="width: 100%;height: auto;">
                                    </div>
                                </el-carousel-item>
                            </el-carousel>
                        </div>
                </template>
                <br><br><br>
<!--                <el-col :span="6">-->
<!--                    <el-card class="card3">-->
<!--                        <el-row :gutter="21">-->
<!--                            <el-col :span="22">-->
<!--                                <div>-->
<!--                                    入库记录-->
<!--                                    <span style="margin-left: 2%;color: #00917c;font-weight: 700">-->
<!--                                        {{Num1}}-->
<!--                                    </span>-->
<!--                                </div>-->
<!--                            </el-col>-->
<!--                        </el-row>-->

<!--                    </el-card>-->
<!--                </el-col>-->
            </el-row>
            <br>
            <el-row :gutter="20">
                <el-col :span="8    ">
                    <el-card class="card3">
                        <el-row :gutter="21">
                            <el-col :span="22">
                                <div class="top">
                                    <div class="title">
                                        入库记录
                                    </div>
                                    <span>{{Num1}}</span>
                                </div>
                            </el-col>
                        </el-row>

                    </el-card>
                    <br>
                    <el-card class="card3">
                        <div class="top">
                            <div class="title">
                                已入库
                            </div>
                            <span>{{Num2}}</span>
                        </div>
                    </el-card>
                    <br>
                    <el-card class="card3">
                        <div class="top">
                            <div class="title">
                                待审核
                            </div>
                            <span>{{Num3}}</span>
                        </div>
                    </el-card>
                    <br>
                    <el-card class="card3">
                        <div class="top">
                            <div class="title">
                                近期入库
                            </div>
                            <span>{{Num4}}</span>
                        </div>
                    </el-card>
                </el-col>
                <el-col :span="16">
<!--                    <el-row>-->
<!--                        <template>-->
<!--                            <el-card class="card4" shadow="never">-->
<!--                                <div class="carousel">-->
<!--                                    <el-carousel height="320px" direction="horizontal" :autoplay="true" :interval="5000" type="card">-->
<!--                                        <el-carousel-item v-for="item in lbtList" :key="item" style="border-radius: 6px">-->
<!--                                            &lt;!&ndash;                                    <h3 class="medium">{{ item }}</h3>&ndash;&gt;-->
<!--                                            <div>-->
<!--                                                <img :src="item" style="width: 100%;height: auto;">-->
<!--                                            </div>-->
<!--                                        </el-carousel-item>-->
<!--                                    </el-carousel>-->
<!--                                </div>-->
<!--                            </el-card>-->

<!--                        </template>-->
<!--                    </el-row>-->
                    <el-row>
<!--                        <div style="width: auto;height:420px;background: url('https://ouch-cdn2.icons8.com/7sWa_2wOugEqGkhv1O5sYd3DoeZmPDJ5DdvUk7xrRq8/rs:fit:912:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNDkx/LzBiOTgxZDI1LTM3/NmItNDZmNi05NzYx/LWQ3OTUyYjg1ZTZk/YS5zdmc.png') center center no-repeat;background-size: contain;"></div>-->
                        <div style="width: auto;height:400px;background: url('https://ouch-cdn2.icons8.com/w_jkDGmF3a7V9GdGFj2xOpRR6pjZpNYnZkEDi8JaIAw/rs:fit:1218:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNTI4/LzE1M2ZhMjQ3LTli/OWEtNGQ3Ny04YWRm/LTNiMDdiYzA2Y2I5/OS5wbmc.png') center center no-repeat;background-size: contain;"></div>
                    </el-row>
                </el-col>
            </el-row>
<!--            <br>-->
<!--            <el-card class="card2">-->
<!--                <div id = "chart1" style="width: 100%;height: 300px;margin:0 0px -30px 0px;"></div>-->
<!--            </el-card>-->
            <br><br><br><br>
            <el-card shadow="never">
                <div>
                    <el-row :gutter="20">
<!--                        <el-col :span="3">-->
<!--                            <el-select size="small" v-model="value" clearable placeholder="请选择类型">-->
<!--                                <el-option-->
<!--                                        v-for="item in options"-->
<!--                                        :key="item.value"-->
<!--                                        :label="item.label"-->
<!--                                        :value="item.value">-->
<!--                                </el-option>-->
<!--                            </el-select>-->
<!--                        </el-col>-->
                        <el-col :span="4">
                            <el-input size="small" placeholder="请输入记录码（例如：123123kasdlnad）" v-model="input" clearable></el-input>
                        </el-col>
                        <el-col :span="4">
                            <el-select size="small" v-model="state" clearable>
                                <el-option
                                        v-for="item in options"
                                        :key="item.value"
                                        :label="item.label"
                                        :value="item.value">
                                </el-option>
                            </el-select>
                        </el-col>
<!--                        <el-col :span="6">-->
<!--                            <el-date-picker-->
<!--                                    size="small"-->
<!--                                    v-model="value2"-->
<!--                                    type="daterange"-->
<!--                                    align="right"-->
<!--                                    unlink-panels-->
<!--                                    range-separator="至"-->
<!--                                    start-placeholder="开始日期"-->
<!--                                    end-placeholder="结束日期"-->
<!--                                    :picker-options="pickerOptions">-->
<!--                            </el-date-picker>-->
<!--                        </el-col>-->
                        <el-col :span="1.4">
                            <el-button size="small" type="primary" icon="el-icon-search" @click="searchRecords">查询</el-button>
                        </el-col>
                        <el-col :span="1.4">
                            <el-button size="small" type="primary" icon="el-icon-plus" @click="ruku">入库</el-button>
                        </el-col>
                        <el-col :span="1.4">
                            <el-button size="small" type="warning" icon="el-icon-download" @click="deriveExcel">导出</el-button>
                        </el-col>
                    </el-row>
                </div>
                <el-divider></el-divider>
            <el-table
                    id="table"
                    :data="tableData.list"
                    style="width: 100%;"
                    >
                <div
                v-for="(item,index) in table"
                :key = "index"
                >
                    <el-table-column
                            v-if="item.name!='入库申请时间'"
                            :label="item.name"
                            :prop="item.dataName"
                            sortable
                            show-overflow-tooltip
                    >
                    </el-table-column>
                    <el-table-column
                            v-if="item.name=='入库申请时间'"
                            :label="item.name"
                            :prop="item.dataName"
                            sortable
                            fixed
                    >
                    </el-table-column>
                </div>

                <el-table-column
                        label="操作"
                        align="center"
                        width="250px"
                        v-show="ntype=='管理员'||ntype=='审核员'">
                    <template slot-scope="scope">
                        <el-button
                                v-if="scope.row.materialStatus=='待审核'&&(ntype=='审核员'||ntype=='管理员')"
                                size="mini"
                                type="primary"
                                @click="handleEdit(scope.row)">审核通过</el-button>
                        <el-button
                                v-if="scope.row.materialStatus=='待审核'&&(ntype=='审核员'||ntype=='管理员')"
                                size="mini"
                                type="danger"
                                @click="handleDelete(scope.row)">驳回</el-button>
                        <div v-if="scope.row.materialStatus=='已入库'">———————————</div>
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
                        :total="totalPage"
                >
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



        <!--下载表-->
        <el-table
                id="table1"
                border
                :data="tableData1"
                style="width: 100%;display: none"
        >
            <div
                    v-for="(item,index) in table"
                    :key = "index"
            >
                <el-table-column
                        :label="item.name"
                        :prop="item.dataName"
                        width="140px"
                        sortable
                >
                </el-table-column>
            </div>
        </el-table>
    </div>

</template>

<script>
    import {
        approveIn,
        disApproveIn,
        materialRecord,
        materialRecord1,
        recordsData
    } from "../../services/materialService";
    import XLSX from 'xlsx'
    export default {
        data() {
            return {
                ntype:localStorage.getItem("ntype"),
                currentPage:'',
                pageIndex: 1,
                totalPage:0,
                pageSize:10,
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
                tableData: [],
                table: {
                    // state:{
                    //     name:'状态',
                    //     dataName:'state',
                    //     dataLength:'100px'
                    // },
                    // id:{
                    //     name:'ID',
                    //     dataName:'id',
                    //     dataLength:'90px'
                    // },
                    materialSupportor:{
                        name:'供应商',
                        dataName:'materialSupportor',
                        dataLength:'200px'
                    },
                    createTime:{
                        name:'入库申请时间',
                        dataName:'createTime',
                        dataLength:'170px'
                    },

                    recordId:{
                        name:'记录码',
                        dataName:'recordId',
                        dataLength:'150px'
                    },
                    materialName:{
                        name:'资料名',
                        dataName:'xgMaterialInfo.materialName',
                        dataLength:'100px'
                    },
                    // infoId:{
                    //     name:'资料ID',
                    //     dataName:'infoId',
                    //     dataLength:'200px'
                    // },
                    materialCategory:{
                        name:'物资类别',
                        dataName:'materialCategory',
                        dataLength:'100px'
                    },
                    num:{
                        name:'数量',
                        dataName:'num',
                        dataLength:'100px'
                    },
                    // fromId:{
                    //     name:'来源ID',
                    //     dataName:'fromId',
                    //     dataLength:'120px'
                    // },

                    fromAreaProvince:{
                        name:'来源地省份',
                        dataName:'xgMaterialFrom.fromAreaProvince',
                        dataLength:'120px'
                    },
                    fromAreaCity:{
                        name:'来源地城市',
                        dataName:'xgMaterialFrom.fromAreaCity',
                        dataLength:'120px'
                    },
                    fromAreaCounty:{
                        name:'来源地镇/县',
                        dataName:'xgMaterialFrom.fromAreaCounty',
                        dataLength:'120px'
                    },
                    fromAreaAddress:{
                        name:'来源地详细地址',
                        dataName:'xgMaterialFrom.fromAreaAddress',
                        dataLength:'120px'
                    },
                    materialStatus:{
                        name:'物资状态',
                        dataName:'materialStatus',
                        dataLength:'100px'
                    },
                    operator:{
                        name:'操作者',
                        dataName:'operator',
                        dataLength:'100px'
                    },
                    tel:{
                        name:'联系电话',
                        dataName:'tel',
                        dataLength:'140px'
                    },


                },
                search:'',
                options: [{
                    value: '1',
                    label: '已入库'
                }, {
                    value: '2',
                    label: '待审核'
                }],
                value: '',
                state:'',
                lbtList:[
                    "https://s3.jpg.cm/2021/05/01/izbCy.jpg",
                    "https://s3.jpg.cm/2021/03/10/2obCy.jpg",
                    "https://s3.jpg.cm/2021/04/06/jzy5C.png",
                    "https://s3.jpg.cm/2021/03/10/2oUre.jpg",
                    "https://s3.jpg.cm/2021/04/06/j0q2E.png",
                ],
                dataNums:{
                    recordsNum:"",
                    warehouedNum:"",
                    toCheckNum:'',
                    recentNum:''
                },
                record:{
                    id:null,
                    recordId:"",
                    infoId:null,
                    materialCategory:"",
                    fromId:null,
                    materialStatus:'',
                    operator:'',
                    materialSupportor:'',
                    createTime:'',
                },
                tableData1: [],
            }
        },
        computed:{
            Num1(){
                return  this.format_number(this.dataNums.recordsNum);
            },
            Num2(){
                return  this.format_number(this.dataNums.warehouedNum);
            },
            Num3(){
                return  this.format_number(this.dataNums.toCheckNum);
            },
            Num4(){
                return  this.format_number(this.dataNums.recentNum);
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
            ruku(){
                // this.dialogFormVisible = true;
                this.$router.push("/inStorage");
            },
            handleCurrentChange(val) {
                this.currentPage = val;
                materialRecord("",val).then(res=>{
                    this.tableData = res.data.data;
                });
            },
            searchRecords(){
                if(this.state!=''){
                    this.record.materialStatus = this.state=='1'?'已入库':'待审核';
                }else if(this.input!=''){
                    this.record.recordId=this.input.trim();
                }
                materialRecord(this.record,1).then(res=>{
                    this.pageSize = res.data.data.pageSize;
                    this.totalPage = res.data.data.total;
                    this.tableData = res.data.data;
                    //置空
                    this.record.recordId = '';
                    this.record.materialStatus='';
                });
            },
            //导出
            deriveExcel(){
                let temp = this.tableData;
                this.tableData = this.tableData1;
                let workbook = XLSX.utils.table_to_book(document.getElementById('table1')); //需要在table上定义一个id
                try {
                    XLSX.writeFile(workbook, 'records.xlsx');
                    this.$message({
                        type:'success',
                        message:'导出成功,注意查收系统下载文件'
                    })
                } catch(e){
                    this.$message({
                        type:'success',
                        message:'导出失败,失败信息:' + e
                    })
                }
                this.tableData = temp;
            },
            handleEdit(item){
                approveIn(item).then(res=>{
                    this.$notify({
                        title: '提示',
                        message: res.data.data,
                        type: 'info'
                    });
                    materialRecord("",this.currentPage!=''?this.currentPage:1).then(res=>{
                        this.pageSize = res.data.data.pageSize;
                        this.totalPage = res.data.data.total;
                        this.tableData = res.data.data;
                    })
                })
            },
            handleDelete(item){
                disApproveIn(item).then(res=>{
                    this.$notify({
                        title: '提示',
                        message: res.data.data,
                        type: 'info'
                    });
                    materialRecord("",this.currentPage!=''?this.currentPage:1).then(res=>{
                        // console.log(res.data.data);
                        this.pageSize = res.data.data.pageSize;
                        this.totalPage = res.data.data.total;
                        this.tableData = res.data.data;
                    })
                })
            },
        },
        mounted() {
            document.getElementById("materialIn").scrollIntoView({ block: 'start', behavior: 'smooth' });
            setTimeout(this.changeLoading,1000);
            recordsData().then(res=>{
                if(res.data.data.length==4){
                    this.dataNums.recordsNum  = res.data.data[0];
                    this.dataNums.warehouedNum  = res.data.data[1];
                    this.dataNums.toCheckNum  = res.data.data[2];
                    this.dataNums.recentNum  = res.data.data[3];
                }
            });
            materialRecord1().then(res=>{
                this.tableData1 = res.data.data;
                // console.log(res.data.data);
            });
            materialRecord("",1).then(res=>{
                // console.log(res.data.data.list);
                this.pageSize = res.data.data.pageSize;
                this.totalPage = res.data.data.total;
                this.tableData = res.data.data;
            })
        }
    }
</script>
<style scoped>
    #materialIn{
        width: auto;
        height:120vh;
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
    .el-card{
      border: none;
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
        border-radius: 10px;
        background:rgba(0,0,0,0.1);
        /*background-color: #99a9bf;*/
        border: none;
    }
    .card4{
        border: none;
        background-color: transparent;
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
        display: flex;
        text-align: center;
        justify-content: center;
        align-items: center;
    }
    /*需要支持css3*/
    ::-webkit-scrollbar {
        /*隐藏滚轮*/
        display: none;
    }
</style>
