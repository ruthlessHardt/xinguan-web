<template>
    <div id="materialIn"
            v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <div>
            <el-row :gutter="20">
                <el-col :span="12">
                  <el-card>
                    <el-row :gutter="20">
                      <el-col :span="22">
                        <div class="top">
                          <div class="title">
                            资料库
                          </div>
                          <span>{{watching1}}</span>
                        </div>
                      </el-col>
                      <el-col :span="2">
                        <i class="el-icon-s-cooperation fa-3x" style="color: #00af91;overflow: hidden"></i>
                      </el-col>
                    </el-row>
                  </el-card>
                </el-col>
                <el-col :span="12">
                  <el-card>
                    <el-row :gutter="20">
                      <el-col :span="22">
                        <div class="top">
                          <div class="title">
                            最近7天新入资料
                          </div>
                          <span>{{watching2}}</span>
                        </div>
                      </el-col>
                      <el-col :span="2">
                        <i class="el-icon-s-claim fa-3x" style="color: #00af91;overflow: hidden"></i>
                      </el-col>
                    </el-row>

                  </el-card>
                </el-col>
            </el-row>
            <br>
            <br>

            <el-row :gutter="20">
                <el-col :span="4">
                  <el-card shadow="never">
                    <el-row>
                      <el-col :span="2">
                        <el-card style="width: 10px;height: 25px;background-color: #2B2C3E"></el-card>
                      </el-col>
                      <el-col :span="22">
                        <span style="font-size: 20px;font-weight: 700">各类别下资料数</span>
                      </el-col>
                    </el-row>
                  </el-card>
                    <div style="overflow: scroll;height: 800px;">
                    <div v-for="(item,index) in InfoNums.nameNums" :key="index">
                        <el-card class="card3">
                          <el-row :gutter="20">
                            <el-col :span="18">
                              <div class="top">
                                <div class="title">
                                  {{item.typeName}}
                                </div>
                                <span>{{item.nums}}</span>
                              </div>
                            </el-col>
<!--                            <el-col :span="2">-->
<!--                              <i class="el-icon-caret-left fa-2x" style="color: #fff;overflow: hidden"></i>-->
<!--                            </el-col>-->
                          </el-row>
                        </el-card>
                        <br>
                    </div>
                    </div>
                </el-col>
                <el-col :span="20">
<!--                    <div>-->
<!--                        <el-row :gutter="20">-->
<!--                            <el-col :span="23">-->
<!--                                <el-button type="info" icon="el-icon-finished" @click="addMaterialInfo">物资资料添加</el-button>-->
<!--                                <el-button type="info" icon="el-icon-sort-down" @click="deriveExcel">导出资料清单</el-button>-->
<!--                            </el-col>-->
<!--                        </el-row>-->
<!--                    </div>-->
<!--                    <br>-->
                    <div>
                        <el-row :gutter="80">
                            <el-col :span="24">
                                <el-card shadow="never">
                                    <div>
                                        <el-row :gutter="13">
                                            <el-col :span="3">
                                                <el-select size="small" v-model="materialInfoSearch.materialTypeId" clearable placeholder="请选择类型">
                                                    <el-option
                                                            v-for="(item,index) in options"
                                                            :key="index"
                                                            :label="item.typeName"
                                                            :value="item.typeId.toString()">
                                                    </el-option>
                                                </el-select>
                                            </el-col>
                                            <el-col :span="3">
                                                <el-input size="small" placeholder="请输入资料码" v-model="materialInfoSearch.materialCode" clearable></el-input>
                                            </el-col>
                                            <el-col :span="3">
                                                <el-input size="small" placeholder="请输入资料名" v-model="materialInfoSearch.materialName" clearable></el-input>
                                            </el-col>

                                            <el-col :span="1.4">
                                                <el-button size="small" type="primary" icon="el-icon-search" @click="searchMaterial">查询</el-button>
                                            </el-col>
                                            <el-col :span="8">
                                                <el-button size="small" type="primary" icon="el-icon-plus" @click="ruku">入库</el-button>
                                            </el-col>
                                          <el-col :span="3">
                                            <el-button type="primary" size="small" icon="el-icon-finished" @click="addMaterialInfo">物资资料添加</el-button>
                                          </el-col>
                                          <el-col :span="2">
                                            <el-button type="warning" size="small" icon="el-icon-sort-down" @click="deriveExcel">导出资料清单</el-button>
                                          </el-col>
                                        </el-row>
                                    </div>
                                    <el-divider></el-divider>
                                    <div class="contain">
                                        <el-table
                                                :data="tableData"
                                                style="width: 100%;"
                                                >
                                            <div
                                                    v-for="(item,index) in table"
                                                    :key = "index"
                                            >
                                                <el-table-column
                                                        :label="item.name"
                                                        :prop="item.dataName"
                                                        sortable
                                                        show-overflow-tooltip
                                                        v-if="item.name!='物资图片'"
                                                >
                                                </el-table-column>
                                                <el-table-column
                                                        :label="item.name"
                                                        v-if="item.name=='物资图片'"
                                                >
                                                    <div slot-scope="scope" v-if="scope.row.materialImg!=null">
                                                        <viewer :images="scope.row.materialImg.split('')">
                                                            <img :src="scope.row.materialImg" style="width:100px;height: 60px">
                                                        </viewer>
                                                    </div>
                                                </el-table-column>
                                            </div>
                                            <el-table-column
                                                    label="操作"
                                                    align="center"
                                                    width="200px">
                                                <template slot-scope="scope">
                                                    <el-button
                                                            size="mini"
                                                            type="info"
                                                            @click="bianji(scope.row)">资料编辑</el-button>
                                                    <el-button
                                                            size="mini"
                                                            type="danger"
                                                            @click="handleDelete(scope.row)">销毁资料</el-button>
                                                </template>
                                            </el-table-column>
                                        </el-table>
                                        <br>
                                    </div>

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
                    </div>
                </el-col>
            </el-row>
            <br>
        </div>
        <br>
        <!--编辑物资信息的抽屉-->
        <el-drawer
                title="物资信息修改"
                :visible.sync="fromdialog"
                direction="ltr"
                ref="drawer"
                size="650px"
        >
            <div class="demo-drawer__content">
                <div style="margin: 0 5% 0 5%">
                    <el-form ref="form" :model="form" label-width="150px" size="default">
                        <el-form-item label="物资名" class="form">
                            <el-input v-model="form.materialName" style="width: 250px;" :placeholder="form.username"></el-input>
                        </el-form-item>
                        <el-form-item label="物资类别" class="form">
                            <el-select v-model="form.materialTypeId" :placeholder="form.materialTypeId">
                                <el-option
                                        v-for="(item,index) in options1"
                                        :key="index"
                                        :label="item.typeName"
                                        :value="item.typeId.toString()">
                                </el-option>
                            </el-select>
                        </el-form-item>
                        <el-form-item label="物资规格" class="form">
                            <el-input v-model="form.materialSpecifications" style="width: 250px;" :placeholder="form.materialSpecifications"></el-input>
                        </el-form-item>
                        <el-form-item label="单位" class="form">
                            <el-input v-model="form.materialUnit" style="width: 250px;" :placeholder="form.materialUnit"></el-input>
                        </el-form-item>
                        <el-form-item label="备注" prop="materialDesc" class="form">
                            <el-row>
                                <el-col :span="20">
                                    <el-input
                                            type="textarea"
                                            :placeholder="form.materialDesc"
                                            v-model="form.materialDesc"
                                            maxlength="100"
                                            show-word-limit
                                            style="width: 300px;"
                                            :autosize="{ minRows: 2, maxRows: 3}"
                                    />
                                </el-col>
                            </el-row>
                        </el-form-item>
                        <el-form-item size="large">
                            <el-button type="primary" @click="onSubmit()">确认修改</el-button>
                            <el-button  @click="cancelForm">取消</el-button>
                        </el-form-item>
                    </el-form>
                </div>
            </div>
        </el-drawer>
        <!--新增物资的对话框-->
        <el-dialog title="新增物资资料" :visible.sync="dialogFormVisible1">
            <div style="margin: 0 5% 0 5%">
                <el-form ref="form" :model="materialInfo"  label-width="270px" size="default">
                    <el-form-item label="物资名" prop="materialName">
                        <el-input v-model="materialInfo.materialName" style="width: 250px;"></el-input>
                    </el-form-item>
                    <el-form-item label="物资图链接" prop="materialName">
                        <el-input v-model="materialInfo.materialImg" style="width: 250px;"></el-input>
                    </el-form-item>
                    <el-form-item label ="物资类别" >
                        <el-select v-model="materialInfo.materialTypeId" clearable placeholder="请选择类型">
                            <el-option
                                    v-for="(item,index) in options"
                                    :key="index"
                                    :label="item.typeName"
                                    :value="item.typeId.toString()">
                            </el-option>
                        </el-select>
                    </el-form-item>
                    <el-form-item label="物资规格" prop="materialSpecifications">
                        <el-input v-model="materialInfo.materialSpecifications" style="width: 250px;"></el-input>
                    </el-form-item>
                    <el-form-item label="单位" prop="materialUnit">
                        <el-input v-model="materialInfo.materialUnit" style="width: 250px;"></el-input>
                    </el-form-item>
                    <el-form-item label="物资备注" prop="fromDesc">
                        <el-input
                                type="textarea"
                                placeholder="请输入内容"
                                v-model="materialInfo.materialDesc"
                                maxlength="100"
                                show-word-limit
                                style="width: 300px"
                                :autosize="{ minRows: 4, maxRows: 9}"
                        />
                    </el-form-item>
                </el-form>
            </div>
            <div slot="footer" class="dialog-footer">
                <el-button @click="dialogFormVisible1 = false">取 消</el-button>
                <el-button type="primary" @click="addSubmit">确 定</el-button>
            </div>
        </el-dialog>



        <!--导出-->
        <el-table
                id="table1"
                :data="tableData1"
                height="500"
                border
                style="width: 100%;display: none">
            <div
                    v-for="(item,index) in table"
                    :key = "index"
            >
                <el-table-column
                        :label="item.name"
                        :prop="item.dataName"
                        sortable
                        v-if="item.name!='物资图片'"
                >
                </el-table-column>
                <el-table-column
                        :label="item.name"
                        v-if="item.name=='物资图片'"
                >
                    <div slot-scope="scope" v-if="scope.row.materialImg!=null">
                        <viewer :images="scope.row.materialImg.split('')">
                            <img :src="scope.row.materialImg" style="width:120px;height: auto">
                        </viewer>
                    </div>
                </el-table-column>
            </div>
<!--            <el-table-column-->
<!--                    label="操作"-->
<!--                    align="center"-->
<!--                    width="200px">-->
<!--                <template slot-scope="scope">-->
<!--                    <el-button-->
<!--                            size="mini"-->
<!--                            type="success"-->
<!--                            @click="bianji(scope.row)">编辑</el-button>-->
<!--                    <el-button-->
<!--                            size="mini"-->
<!--                            type="danger"-->
<!--                            @click="handleDelete(scope.row)">删除</el-button>-->
<!--                </template>-->
<!--            </el-table-column>-->
        </el-table>
    </div>

</template>

<script>
    import * as echarts from 'echarts';
    import {
        addInfo,
        deleteInfo, getInfo1,
        getInfoNums,
        getInfoTable,
        materialType,
        updateMaterialInfo
    } from "../../services/materialService";
    import XLSX from 'xlsx'
    export default {
        data() {
            return {
                totalPage:0,
                pageSize:10,
                pageIndex: 1,
                currentPage:'',
                dialogFormVisible: false,
                dialogFormVisible1:false,
                formLabelWidth: '120px',
                fromdialog:false,
                tableData: [],
                tableData1:[],
                table: {
                    state:{
                        name:'状态',
                        dataName:'state',
                        dataLength:'100px'
                    },
                    // materialId:{
                    //     name:'ID',
                    //     dataName:'materialId',
                    //     dataLength:'90px'
                    // },
                    materialCode:{
                        name:'资料码',
                        dataName:'materialCode',
                        dataLength:'200px'
                    },
                    materialImg:{
                        name:'物资图片',
                        dataName:'materialImg',
                        dataLength:'200px'
                    },
                    materialName:{
                        name:'物资名',
                        dataName:'materialName',
                        dataLength:'200px'
                    },
                    materialSpecifications:{
                        name:'规格',
                        dataName:'materialSpecifications',
                        dataLength:'150px'
                    },
                    xgMaterialType:{
                        name:'类别',
                        dataName:'xgMaterialType.typeName',
                        dataLength:'120px'
                    },
                    materialUnit:{
                        name:'单位',
                        dataName:'materialUnit',
                        dataLength:'100px'
                    },
                    materialDesc:{
                        name:'资料备注',
                        dataName:'materialDesc',
                        dataLength:'200px'
                    },
                    createTime:{
                        name:'记录生成时间',
                        dataName:'createTime',
                        dataLength:'170px'
                    }
                },
                value2: '',
                input:'',
                loading:true,
                fullscreenLoading:true,
                search:'',
                options: [],
                options1: [],
                materialInfoSearch:{
                    materialTypeId:'',
                    materialName:'',
                    materialCode:''
                },
                value: '',
                state:'选项1',
                form: {
                    materialId:'',
                    materialCode: '',
                    materialName:'',
                    materialTypeId:"",
                    materialSpecifications:'',
                    materialUnit:'',
                    materialDesc:'',
                },
                materialInfo: {
                    materialName:'',
                    materialImg:'图1',
                    materialTypeId:"",
                    materialSpecifications:'',
                    materialUnit:'',
                    materialDesc:'',
                },
                rules:{
                    username: [
                        { required: true, message: '请输入姓名', trigger: 'blur' },
                        { min:1, max:6, message: '长度不得超过6字符', trigger: 'blur' }
                    ],
                    phone: [
                        { required: true, message: '请输入手机号', trigger: 'blur' },
                        { min: 11, max:11, message: '请输入有效手机号', trigger: 'blur' }
                    ],
                    tel: [
                        { min: 11, max:11, message: '请输入有效手机号', trigger: 'blur' }
                    ],
                },
                InfoNums:{
                    infoNumber:'',
                    newInfoNums:'',
                    nameNums:{},
                },
            }
        },
        computed:{
            watching1(){
                return this.format_number(this.InfoNums.infoNumber);
            },
            watching2(){
                return this.format_number(this.InfoNums.newInfoNums);
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
                getInfoTable("",val).then(res=>{
                    this.tableData = res.data.data.list;
                    this.pageSize = res.data.data.pageSize;
                    this.totalPage = res.data.data.total;
                });
            },
            bianji(item){
                this.fromdialog=true;
                this.form.materialId = item.materialId;
                this.form.materialCode = item.materialCode;
                this.form.materialName = item.materialName;
                this.form.materialTypeId = item.materialTypeId;
                this.form.materialSpecifications = item.materialSpecifications;
                this.form.materialUnit =item.materialUnit;
                this.form.materialDesc = item.materialDesc;

            },
            handleDelete(item){
                deleteInfo( item.materialId).then(res1=>{
                    if(res1.data.data==1){
                        getInfoTable("",this.currentPage).then(res=>{
                            // console.log(res.data.data);
                            this.tableData = res.data.data.list;
                            this.pageSize = res.data.data.pageSize;
                            this.totalPage = res.data.data.total;
                        });
                        this.$notify({
                            title: '成功',
                            message: '删除成功',
                            type: 'success'
                        });
                    }

                })
            },
            cancelForm() {
                this.loading = false;
                this.fromdialog = false;
                clearTimeout(this.timer);
            },
            onSubmit() {
                updateMaterialInfo(this.form).then(res=>{
                    getInfoTable("",this.currentPage).then(res=>{
                        this.tableData = res.data.data.list;
                        this.pageSize = res.data.data.pageSize;
                        this.totalPage = res.data.data.total;
                    });
                });
                this.fromdialog = false;
            },
            searchMaterial(){
                this.materialInfoSearch.materialCode = this.materialInfoSearch.materialCode.trim();
                this.materialInfoSearch.materialName = this.materialInfoSearch.materialName.trim();
                getInfoTable(this.materialInfoSearch,1).then(res=>{
                    this.tableData = res.data.data.list;
                    this.pageSize = res.data.data.pageSize;
                    this.totalPage = res.data.data.total;
                })
            },
            addMaterialInfo(){
                    this.materialInfo.materialName='';
                    this.materialInfo.materialImg = '';
                    this.materialInfo.materialSpecifications='';
                    this.materialInfo.materialUnit='';
                    this.materialInfo.materialDesc='';
                    this.materialInfo.materialTypeId='';
                    this.dialogFormVisible1 = true
            },
            addSubmit(){
                // console.log(this.materialInfo);
                if(this.materialInfo.materialName!=''&&this.materialInfo.materialImg != ''
                    &&this.materialInfo.materialSpecifications!=''&&this.materialInfo.materialUnit!=''
                    &&this.materialInfo.materialDesc!=''&&this.materialInfo.materialTypeId!=''){
                    addInfo(this.materialInfo).then(res1=>{
                        if(res1.data.data==1){
                            this.dialogFormVisible1 = false;
                            this.$notify({
                                title: '提示',
                                message: '添加成功',
                                type: 'success'
                            });
                            getInfoTable("",this.currentPage).then(res=>{
                                this.tableData = res.data.data.list;
                                this.pageSize = res.data.data.pageSize;
                                this.totalPage = res.data.data.total;
                            });
                        }else{
                            this.$notify({
                                title: '提示',
                                message: '添加失败',
                                type: 'warning'
                            });
                        }

                    });
                }else{
                    this.$notify({
                        title: '提示',
                        message: '请将信息填写完整',
                        type: 'error'
                    });
                }

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

        },
        mounted() {
            if(this.$route.params.code==1001){
                this.dialogFormVisible1 = this.$route.params.dialogFormVisible1;
            }
            getInfoNums().then(res=>{
                this.InfoNums.infoNumber = res.data.data[0];
                this.InfoNums.newInfoNums = res.data.data[1];
                this.InfoNums.nameNums = res.data.data[2];
            })
            document.getElementById("materialIn").scrollIntoView({ block: 'start', behavior: 'smooth' });
            setTimeout(this.changeLoading,1000);
            getInfoTable("",1).then(res=>{
                // console.log(res.data.data);
                this.tableData = res.data.data.list;
                this.pageSize = res.data.data.pageSize;
                this.totalPage = res.data.data.total;
            });
            getInfo1().then(res=>{
                this.tableData1 = res.data.data;
            });
            /*获取物资类别*/
            materialType().then(res=>{
                this.options1 = res.data.data;
                this.options = res.data.data;
            });
        }
    }
</script>
<style scoped>
    #materialIn{
        width: auto;
        height:100%;
        margin: -20px;
        padding: 2.2%  3% 0% 3%;
        /*background: #d6e6f2;*/

        /*background:linear-gradient(150deg,#2222,#113222),url("https://s3.jpg.cm/2021/02/28/zDuDS.jpg") fixed;*/
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
        background:rgba(0,0,0,0.1);
        border: none;
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
      text-align: center!important;
    }
    .card2{
        min-height: 266px;
    }
    .card3{
        background:linear-gradient(140deg,#dfe6e9,#b2bec3);
        /*background:rgba(0,0,0,0.1);*/
        border: none;
        border-radius: 7px;
    }
    .card4{
        background:linear-gradient(120deg,#a6e3e9,#d8e3e7);
        border: none;
    }
    .card5{
        background-color: #ea8a8a;
        border: none;
    }
    /*需要支持css3*/
    ::-webkit-scrollbar {
        /*隐藏滚轮*/
        display: none;
    }
    /deep/ .el-drawer{
        background: rgba(0,0,0,0.4);
    }
    .el-card{
      border: none;
    }
</style>

<style>
    .form .el-form-item__label{
        color: white;
    }
</style>
