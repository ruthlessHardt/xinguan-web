<template>
    <div id="materialIn"
            v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading"
         topmargin="0" oncontextmenu="return false" 
         ondragstart="return false" onselectstart ="return false" 
         onselect="document.selection.empty()" oncopy="document.selection.empty()" 
         onbeforecopy="return false" 
    >
<!--        onmouseup="document.selection.empty()"-->
        <div>
            <div style="font-size: 20px;font-weight: 700;">
               <i class="el-icon-hot-water"></i>物资入库
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <i class="el-icon-document-remove"></i>
                <el-link target="_blank" @click="goto(0)">查看物资入库记录列表</el-link>
            </div>
            <br>
            <el-row :gutter="20">
                <el-col :span="9">
                    <el-card class="card2" shadow="never">
                        <div slot="header" class="clearfix">
                            <span class="text">物资类别</span>
                        </div>
                        <el-table
                                :data="tableData"
                                style="width: 100%;">
                            <div
                                    v-for="(item,index) in table"
                                    :key = "index"
                            >
                                <el-table-column
                                        :label="item.name"
                                        :prop="item.dataName"
                                        sortable
                                >
                                </el-table-column>
                            </div>
                        </el-table>
                        <br>
                    </el-card>
                    <br>
                    <el-card class="card2" shadow="never">
                        <div slot="header" class="clearfix">
                            <span class="text">物资资料</span>
                        </div>
                        <el-table
                                :data="tableData1"
                                style="width: 100%;">
                            <el-scrollbar
                                    wrapClass="scrollbar-wrap"
                                    :style="{height: 200}"
                                    ref="scrollbarContainer">
                                <div
                                        v-for="(item,index) in table1"
                                        :key = "index"
                                >
                                    <el-table-column
                                            :label="item.name"
                                            :prop="item.dataName"
                                            sortable
                                            :width="item.dataLength"
                                            v-if="item.name!='物资图'"
                                    >
                                    </el-table-column>
                                    <el-table-column
                                            :label="item.name"
                                            v-if="item.name=='物资图'"
                                    >
                                        <div slot-scope="scope" v-if="scope.row.materialImg!=null">
                                            <viewer :images="scope.row.materialImg.split('')">
                                                <img :src="scope.row.materialImg" style="width: 100%;height: auto">
                                            </viewer>

                                        </div>
                                    </el-table-column>
                                </div>
                            </el-scrollbar>

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
                        <br>
                    </el-card>
                </el-col>
                <el-col :span="15">
                    <el-card class="card1" style="" shadow="never">
                        <el-steps :active="active" finish-status="success">
                            <el-step title="物资基础信息填写"></el-step>
                            <el-step title="物资来源填写"></el-step>
                            <el-step title="预览"></el-step>
                        </el-steps>
                        <br><br><br>
                        <el-row v-if="active<1">
                            <el-form ref="form" :model="materialInForm" label-width="180px" >
<!--                                <el-form-item label="记录码" style="width: 395px">-->
<!--                                    <el-input v-model="materialInForm.recordId" disabled></el-input>-->
<!--                                </el-form-item>-->
                                <el-row :gutter="20">
                                    <el-col :span="10">
                                        <el-form-item label="物资类别">
                                            <el-select  v-model="materialInForm.materialCategory" clearable style="width: 250px;"  @change="changeSelect">
                                                <el-option
                                                        v-for="(item,index) in options"
                                                        :key="index"
                                                        :label="item.typeName"
                                                        :value="item.typeName">
                                                </el-option>
                                            </el-select>
                                        </el-form-item>
                                    </el-col>
                                    <el-col :span="14">
                                        <el-form-item label="物资资料">
                                            <el-select  v-model="materialInForm.infoId"
                                                        clearable
                                                        :label-in-value="true"
                                                        style="width: 250px">
                                                <el-option
                                                        v-for="(item,index) in options1_1"
                                                        :key="index"
                                                        :label="item.materialName"
                                                        :value="item.materialId">
                                                </el-option>
                                            </el-select>
                                            &nbsp;&nbsp;
                                            <el-button icon="el-icon-plus"  size="small" circle @click="gotoAddInfo"></el-button>
                                        </el-form-item>
                                    </el-col>
                                </el-row>
                                <el-form-item label="物资数量" >
                                    <el-input-number style="width: 250px" v-model="materialInForm.num" :min="1"></el-input-number>
                                </el-form-item>
                                <el-row>
                                    <el-col :span="8">
                                        <el-form-item label="厂商" style="width: 430px">
                                            <el-input v-model="materialInForm.materialSupportor" ></el-input>
                                        </el-form-item>
                                    </el-col>
                                </el-row>
                                <el-row :gutter="20">
                                    <el-col :span="10">
                                        <el-form-item label="操作员" style="width: 430px">
                                            <el-input v-model="materialInForm.operator" disabled></el-input>
                                        </el-form-item>
                                    </el-col>
                                    <el-col :span="8">
                                        <el-form-item label="操作员联系方式" style="width: 430px">
                                            <el-input v-model="materialInForm.tel" disabled></el-input>
                                        </el-form-item>
                                    </el-col>
                                </el-row>
                            </el-form>
                        </el-row>
                        <el-row v-if="active>=1&&active<2">
                            <el-form ref="fromInfoForm" :model="fromInfoForm" label-width="180px" :rules="rules" >
                                <el-row>
                                    <el-col :span="24">
                                        <el-form-item label="物资来源" prop="selectedOptions">
                                            <el-row>
                                                <el-col :span="20">
                                                    <el-cascader
                                                            style="width: 600px;"
                                                            size="large"
                                                            :options="areaOptions"
                                                            v-model="selectedOptions">
                                                    </el-cascader>
                                                </el-col>
                                            </el-row>
                                        </el-form-item>
                                        <el-form-item prop="fromAreaAddress">
                                            <el-row>
                                                <el-col :span="20">
                                                    <el-input
                                                            type="textarea"
                                                            placeholder="详细地址"
                                                            v-model="fromInfoForm.fromAreaAddress"
                                                            maxlength="100"
                                                            show-word-limit
                                                            style="width: 660px;"
                                                            :autosize="{ minRows: 2, maxRows: 3}"
                                                    />
                                                </el-col>
                                            </el-row>
                                        </el-form-item>
                                    </el-col>
                                </el-row>
                                <el-row :gutter="20">
                                    <el-col :span="8">
                                        <el-form-item label="物资联系人" style="width: 395px" prop="contacts">
                                            <el-input v-model="fromInfoForm.contacts" ></el-input>
                                        </el-form-item>
                                    </el-col>
                                    <el-col :span="8">
                                        <el-form-item label="联系方式" style="width: 395px" prop="tel">
                                            <el-input v-model="fromInfoForm.tel" ></el-input>
                                        </el-form-item>
                                    </el-col>
                                </el-row>
                                <el-form-item label="备注" prop="fromDesc">
                                    <el-input
                                            type="textarea"
                                            placeholder="请输入内容"
                                            v-model="fromInfoForm.fromDesc"
                                            maxlength="100"
                                            show-word-limit
                                            style="width: 660px"
                                            :autosize="{ minRows: 3, maxRows: 6}"
                                   />
                                </el-form-item>
                            </el-form>
                        </el-row>
                        <el-row v-if="active>=2">
                            <div id="materialInFile">
                                <el-card class="card3" shadow="never">
                                <div slot="header" class="clearfix">
                                    <span class="text">物资入库清单</span>
                                </div>
                                    <el-row>
                                        <el-col :span="12">
<!--                                            <el-row>-->
<!--                                                <el-col :span="10">-->
<!--                                                    <div>-->
<!--                                                        <span>物资记录码：</span>-->
<!--                                                    </div>-->
<!--                                                </el-col>-->
<!--                                                <el-col :span="12">-->
<!--                                                    <div>-->
<!--                                                        <span>{{materialInForm.recordId}}</span>-->
<!--                                                    </div>-->
<!--                                                </el-col>-->
<!--                                            </el-row>-->
<!--                                            <br>-->
                                            <el-row>
                                                <el-col :span="10">
                                                    <div>
                                                        <span>物资类别：</span>
                                                    </div>
                                                </el-col>
                                                <el-col :span="12">
                                                    <div>
                                                        <span>{{materialInForm.materialCategory}}</span>
                                                    </div>
                                                </el-col>
                                            </el-row>
                                            <br>
                                            <el-row>
                                                <el-col :span="10">
                                                    <div>
                                                        <span>物资名：</span>
                                                    </div>
                                                </el-col>
                                                <el-col :span="12">
                                                    <div>
                                                        <span>{{materialInfo.materialName}}</span>
                                                    </div>
                                                </el-col>
                                            </el-row>
                                            <br>
                                            <el-row>
                                                <el-col :span="10">
                                                    <div>
                                                        <span>物资数量：</span>
                                                    </div>
                                                </el-col>
                                                <el-col :span="12">
                                                    <div>
                                                        <span>{{materialInForm.num}}</span>
                                                    </div>
                                                </el-col>
                                            </el-row>
                                            <br>
                                            <el-row>
                                                <el-col :span="10">
                                                    <div>
                                                        <span>规格/单位：</span>
                                                    </div>
                                                </el-col>
                                                <el-col :span="12">
                                                    <div>
                                                        <span>{{materialInfo.specifications}}/{{materialInfo.unit}}</span>
                                                    </div>
                                                </el-col>
                                            </el-row>
                                            <br>
                                            <el-row>
                                                <el-col :span="10">
                                                    <div>
                                                        <span>厂商：</span>
                                                    </div>
                                                </el-col>
                                                <el-col :span="12">
                                                    <div>
                                                        <span>{{materialInForm.materialSupportor}}</span>
                                                    </div>
                                                </el-col>
                                            </el-row>
                                        </el-col>
                                        <el-col :span="10">
                                            <img :src="materialInfo.img"
                                                 style="width: auto;height: 200px;border-radius: 5px;user-select: none;float: right">
                                        </el-col>
                                    </el-row>
                                <br>
                                <el-row>
                                    <el-col :span="5">
                                        <div>
                                            <span>物资来源地：</span>
                                        </div>
                                    </el-col>
                                    <el-col :span="12">
                                        <div>
                                            <span>
                                                {{fromInfoForm.fromAreaProvince}}{{fromInfoForm.fromAreaCity}}{{fromInfoForm.fromAreaCounty}}{{fromInfoForm.fromAreaAddress}}
                                            </span>
                                        </div>
                                    </el-col>
                                </el-row>

                                <br>
                                <el-row>
                                    <el-col :span="5">
                                        <div>
                                            <span>物资联系人：</span>
                                        </div>
                                    </el-col>
                                    <el-col :span="12">
                                        <div>
                                            <span>{{fromInfoForm.contacts}}</span>
                                        </div>
                                    </el-col>
                                </el-row>
                                <br>
                                <el-row>
                                    <el-col :span="5">
                                        <div>
                                            <span>联系电话：</span>
                                        </div>
                                    </el-col>
                                    <el-col :span="18">
                                        <div>
                                            <span>{{fromInfoForm.tel}}</span>
                                        </div>
                                    </el-col>
                                </el-row>
                                    <br>
                                    <el-row>
                                        <el-col :span="5">
                                            <div>
                                                <span>备注：</span>
                                            </div>
                                        </el-col>
                                        <el-col :span="18">
                                            <div>
                                                <span>{{fromInfoForm.fromDesc}}</span>
                                            </div>
                                        </el-col>
                                    </el-row>
                                <br>
                                <el-divider><i class="el-icon-s-check fa-2x"></i></el-divider>
                                    <div class="bottom clearfix" style="float:right;">
                                        <time class="time">{{ currentDate }}</time>
                                        <el-row>
                                            <el-col :span="10">
                                                <div>
                                                    <span>操作员：</span>
                                                </div>
                                            </el-col>
                                            <el-col :span="12">
                                                <div>
                                                    <span>{{materialInForm.operator}}</span>
                                                </div>
                                            </el-col>
                                        </el-row>
                                        <el-row>
                                            <el-col :span="10">
                                                <div>
                                                    <span>操作员联系方式：</span>
                                                </div>
                                            </el-col>
                                            <el-col :span="12">
                                                <div>
                                                    <span>{{materialInForm.tel}}</span>
                                                </div>
                                            </el-col>
                                        </el-row>
                                        <br>
                                    </div>

                            </el-card>
                            </div>
                        </el-row>
                        <div style="padding-top:20px;text-align: center">
                            <el-button style="margin-top: 1px;" type="primary"  @click="pre" v-if="active>0">上一步</el-button>
                            <el-button style="margin-top: 1px;" type="primary" @click="next" v-if="active<2">下一步</el-button>
                            <el-button style="margin-top: 1px;" type="primary" @click="next" v-if="active==2">确认</el-button>
                            <el-button type="success" @click="onSubmit" v-if="active==3">提交入库申请</el-button>
                            <el-button type="warning" v-print="'#materialInFile'" v-if="active==3">打印文件</el-button>
                        </div>
                    </el-card>
                </el-col>
            </el-row>
        </div>
    </div>

</template>

<script>
    import { regionData,CodeToText } from 'element-china-area-data'
    import {addFroms, addRecords, getAllInfo, getInfo, materialType} from "../../services/materialService";

    export default {
        data() {
            return {
                totalPage:0,
                pageSize:10,
                pageIndex: 1,
                currentPage:'',
                currentDate: new Date(),
                active: 0,
                dialogFormVisible: false,
                formLabelWidth: '120px',
                materialInfo:{
                    materialName:"",
                    specifications:'',
                    unit:'',
                    img:'',
                },
                materialInfoSearch:{
                    infoId:'',
                },
                materialInForm: {
                    recordId:'',
                    materialCategory:'',
                    infoId:"",
                    fromId:"",
                    num:1,
                    desc:'',
                    materialSupportor:'',
                    operator:localStorage.getItem("name"),
                    tel:localStorage.getItem("tel"),
                },
                fromInfoForm:{
                    fromAreaProvince:'',
                    fromAreaCity:'',
                    fromAreaCounty:'',
                    fromAreaAddress:'',
                    contacts:'',
                    tel:'',
                    fromDesc:'',
                },
                value2: '',
                input:'',
                loading:true,
                fullscreenLoading:true,
                search:'',
                options: [],
                options1:[],
                options1_1:[],
                areaOptions:regionData,
                tableData: [],
                table: {
                    // state:{
                    //     name:'状态',
                    //     dataName:'state',
                    //     dataLength:'70px'
                    // },
                    typeDesc:{
                        name:'类别描述',
                        dataName:'typeDesc',
                        dataLength:'120px'
                    },
                    // typeId:{
                    //     name:'ID',
                    //     dataName:'typeId',
                    //     dataLength:'40px'
                    // },
                    typeCode:{
                        name:'类别码',
                        dataName:'typeCode',
                        dataLength:'110px'
                    },
                    typeName:{
                        name:'类别名',
                        dataName:'typeName',
                        dataLength:'100px'
                    },
                    // level:{
                    //     name:'等级',
                    //     dataName:'level',
                    //     dataLength:'60px'
                    // },

                    // createTime:{
                    //     name:'类别生成时间',
                    //     dataName:'createTime',
                    //     dataLength:'170px'
                    // }
                },
                tableData1: [],
                table1: {
                    materialCode:{
                        name:'资料信息码',
                        dataName:'materialCode',
                        dataLength:'120px'
                    },
                    materialName:{
                        name:'物资名',
                        dataName:'materialName',
                        dataLength:'100px'
                    },
                    materialImg:{
                        name:'物资图',
                        dataName:'materialImg',
                        dataLength:'100px'
                    },
                    materialSpecifications:{
                        name:'规格',
                        dataName:'materialSpecifications',
                        dataLength:'100px'
                    },
                    materialUnit:{
                        name:'单位',
                        dataName:'materialUnit',
                        dataLength:'80px'
                    },
                    materialDesc:{
                        name:'物资说明',
                        dataName:'materialDesc',
                        dataLength:'100px'
                    },
                },
                selectedOptions: [],
                rules:{
                    tel: [
                        { required: true, message: '请输入手机号', trigger: 'blur' },
                        { min: 11, max:11, message: '请输入有效手机号', trigger: 'blur' }
                    ],
                },
            }
        },
        computed:{

        },
        methods:{
            changeLoading(){
                this.loading = false;
            },
            ruku(){
                this.$router.push("/inStorage");
            },
            checkNumber(theObj) {
                /*校验是否为11位的数字*/
                let number = parseInt(theObj) / 1;
                if (number.toString().length==11) {
                    return true;
                }
                return false;
            },
            next() {
                if (this.active++ > 2) this.active = 3;
                if(this.active==1){
                    if(this.materialInForm.materialCategory==''){
                        this.$notify({
                            title: '提示',
                            message: '未选择物资类别',
                            type: 'error'
                        });
                        this.active = 0;
                    }else if(this.materialInForm.infoId==''){
                        this.$notify({
                            title: '提示',
                            message: '未选择物资资料',
                            type: 'error'
                        });
                        this.active = 0;
                    }else if(this.materialInForm.materialSupportor.trim().length<=3){
                        this.$notify({
                            title: '提示',
                            message: '未正确填写厂商',
                            type: 'warning'
                        });
                        this.active = 0;
                    }
                }
                if(this.active==2){
                    if(this.selectedOptions!=''&&this.selectedOptions.length==3&&this.fromInfoForm.fromAreaAddress.trim()!=''
                        &&this.fromInfoForm.tel.trim().length==11&&this.checkNumber(this.fromInfoForm.tel.trim())==true
                        &&this.fromInfoForm.contacts!=''
                        &&this.fromInfoForm.fromAreaAddress.trim()!=''){

                        let area = this.selectedOptions.splice(",");
                        this.fromInfoForm.fromAreaProvince = CodeToText[area[0]];
                        this.fromInfoForm.fromAreaCity = CodeToText[area[1]];
                        this.fromInfoForm.fromAreaCounty = CodeToText[area[2]];

                        this.materialInfoSearch.infoId = this.materialInForm.infoId;
                        getInfo(this.materialInfoSearch,1).then(res=>{
                            if(res.data.data.list.length>0){
                                this.materialInfo.materialName = res.data.data.list[0].materialName;
                                this.materialInfo.img = res.data.data.list[0].materialImg;
                                this.materialInfo.specifications = res.data.data.list[0].materialSpecifications;
                                this.materialInfo.unit = res.data.data.list[0].materialUnit;
                            }
                        })
                        /*注意点：splice原理！splice改变的是原数组*/
                        /*将三级联动还原显示*/
                        this.selectedOptions = area;
                    }else if(this.selectedOptions==''&&this.selectedOptions==[]){
                        this.$notify({
                            title: '提示',
                            message: '未选择来源地',
                            type: 'warning'
                        });
                        this.active==1;
                    }else  if(this.fromInfoForm.fromAreaAddress.trim()==''){
                        this.$notify({
                            title: '提示',
                            message: '未填写详细地址',
                            type: 'error'
                        });
                        this.active = 1;
                    }else  if(this.fromInfoForm.contacts.trim()==''){
                        this.$notify({
                            title: '提示',
                            message: '未填写联系人',
                            type: 'error'
                        });
                        this.active = 1;
                    }else  if(this.fromInfoForm.tel.trim().length!==11||this.checkNumber(this.fromInfoForm.tel.trim())!=true){
                        this.$notify({
                            title: '提示',
                            message: '未正确填写手机号',
                            type: 'error'
                        });
                        this.active = 1;
                    }

                }
            },
            pre(){
                if (this.active-- > 1) this.active = this.active--;
            },
            goto(index){
                if(index==0){
                    this.$router.push("/materialIn");
                }
            },
            gotoAddInfo(){
                this.$router.push({name:'materialInfo',params:{code:1001,dialogFormVisible1:true}});
            },
            handleCurrentChange(val) {
                this.currentPage = val;
                getInfo("",val).then(res=>{
                    this.tableData1 = res.data.data.list;
                    this.options1 = res.data.data.list;
                    this.pageSize = res.data.data.pageSize;
                    this.totalPage = res.data.data.total;
                })
            },
            /*提交申请*/
            onSubmit(){
                /*物资来源先注册*/
                /*注册成功来源fromId赋值给物资入库记录中的fromId*/
                addFroms(this.fromInfoForm).then(res=>{
                    if(res.data.code === 200){
                        if(res.data.data.result!=null){
                            this.materialInForm.fromId = res.data.data.fromId;
                            addRecords(this.materialInForm).then(res=>{
                                if(res.data.data==1){
                                    this.$notify({
                                        title: '提示',
                                        message: '提交成功',
                                        type: 'success',
                                        duration:6000,
                                    });
                                    this.active = 0;
                                    this.selectedOptions = '';
                                    this.fromInfoForm = {
                                        fromAreaProvince:'',
                                        fromAreaCity:'',
                                        fromAreaCounty:'',
                                        fromAreaAddress:'',
                                        contacts:'',
                                        tel:'',
                                        fromDesc:'',
                                    };
                                    this.materialInForm = {
                                        recordId:'',
                                        materialCategory:'',
                                        infoId:"",
                                        fromId:"",
                                        num:1,
                                        desc:'',
                                        materialSupportor:'',
                                        operator:localStorage.getItem("name"),
                                        tel:localStorage.getItem("tel"),
                                    };
                                    this.materialInfoSearch = { infoId:'',};
                                }
                            });
                        }
                    }
                });

            },
            changeSelect(typeName){
                this.materialInForm.infoId = '';
                this.options1_1 = [];
                //匹配出类别id
                let id  = '';
                this.options.map(function (val) {
                    if(typeName === val.typeName){
                        id = val.typeId;
                    }
                });
                //再遍历相对应类别的物资资料
                let that = this;
                this.options1.map(function (val) {
                    if(id.toString() === val.materialTypeId){
                        // console.log(val);
                        that.options1_1.push(val);
                    }
                });
                // console.log(typeName);
                // console.log(id);
                // console.log(this.options1);
                // console.log(this.options1_1);
            },
        },
        mounted() {
            document.getElementById("materialIn").scrollIntoView({ block: 'start', behavior: 'smooth' });
            setTimeout(this.changeLoading,1000);
            materialType().then(res=>{
                this.tableData = res.data.data;
                this.options = res.data.data;
            });
            getInfo("",1).then(res=>{
                this.tableData1 = res.data.data.list;
                this.pageSize = res.data.data.pageSize;
                this.totalPage = res.data.data.total;
            })
            //获取全部物资资料
            getAllInfo().then(res=>{
                this.options1 = res.data.data;
            })
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
        color: #52616b;
        font-weight: 700;
    }
    /deep/ .el-table tbody tr:hover>td { background-color: transparent;color: #00917c;cursor: pointer}
    .el-table::before {
        left: 0;
        bottom: 0;
        width: 100%;
        height: 0px;
    }
    .card1{
        min-width: 780px;
        min-height: 780px;
        /*background-color: #2B2C3E;*/
        /*min-height: 70vh;*/
        border: none;
    }
    .card2{
        overflow: scroll;
        min-height: 355px;
        max-height: 380px;
        border: none;
    }
    .card3{
        overflow: scroll;
        min-height: 440px;
        max-height: 600px;
        border: none;
    }
    /*需要支持css3*/
    ::-webkit-scrollbar {
        /*隐藏滚轮*/
        display: none;
    }
    .text{

    }
</style>
