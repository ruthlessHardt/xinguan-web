<template>
    <div id="materialIn"
            v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <div>
           <div>
                <el-row :gutter="40">
                    <el-col :span="12">
                        <el-card class="card3">
                            <div class="top">
                                <div class="title">
                                    发放记录
                                </div>
                                <span>{{watching1}}</span>
                            </div>
                        </el-card>
                    </el-col>
                    <el-col :span="12">
                        <el-card class="card3">
                            <div class="top">
                                <div class="title">
                                    近期发放记录
                                </div>
                                <span>{{watching2}}</span>
                            </div>
                        </el-card>
                    </el-col>
                </el-row>
               <br>
               <el-row :gutter="20">
                   <div v-for="(item,index) in dataNums.groupNums" :key="index">
                       <el-col :span="4">
                           <el-card class="card4">
                               <div class="top">
                                   <div class="title">
                                       {{item.typeName}}
                                   </div>
                                   <span>{{item.nums}}</span>
                               </div>
                           </el-card>
                               <br>
                       </el-col>
                    </div>
            </el-row>



            </div>
            <br>
            <div class="title">
                发放记录
            </div>
            <el-card class="card4" shadow="never">
                <div>
                    <el-row :gutter="13">
                        <el-col :span="3">
                            <el-input size="small" placeholder="发放单号" v-model="search.recordId" clearable></el-input>
                        </el-col>
                        <el-col :span="3">
                            <el-select size="small" v-model="search.grantCategory" clearable placeholder="请选择类型">
                                <el-option
                                        v-for="(item,index) in options"
                                        :key="index"
                                        :label="item.typeName"
                                        :value="item.typeName">
                                </el-option>
                            </el-select>
                        </el-col>
                        <el-col :span="3">
                            <el-select size="small"v-model="search.level" placeholder="请选择紧急程度" clearable>
                                <el-option label="1级" value="1"></el-option>
                                <el-option label="2级" value="2"></el-option>
                                <el-option label="3级" value="3"></el-option>
                                <el-option label="4级" value="4"></el-option>
                            </el-select>
                        </el-col>

                        <el-col :span="3">
                            <el-select size="small" v-model="search.materialStatus" clearable placeholder="请选择物资状态">
                                    <el-option label="审核中" value="审核中"></el-option>
                                    <el-option label="已发放" value="已发放"></el-option>
                            </el-select>
                        </el-col>
                        <el-col :span="1.4">
                            <el-button size="small" type="primary" icon="el-icon-search" @click="searchGrantRecord">查询</el-button>
                        </el-col>
                        <el-col :span="1.4">
                            <el-button size="small" type="primary" icon="el-icon-plus" @click="fafang">发放</el-button>
                        </el-col>
                        <el-col :span="2">
                            <el-button size="small" type="warning" icon="el-icon-download" @click="deriveExcel">导出</el-button>
                        </el-col>
                    </el-row>
                </div>
                <el-divider></el-divider>
                <el-table
                        height="410px"
                        :data="tableData.list"
                        style="width: 100%;">
                    <div v-for="(item,index) in table" :key="index">
                        <el-table-column
                                :label="item.name"
                                :prop="item.dataName"
                                sortable
                                show-overflow-tooltip
                        >
                        </el-table-column>
                    </div>
                    <el-table-column
                            label="操作"
                            align="center"
                            width="400px">
                        <template slot-scope="scope">
                            <el-button
                                    size="mini"
                                    type="info"
                                    @click="getDetail(scope.row)">详情查看</el-button>
                            <el-button
                                    v-show="scope.row.materialStatus=='审核中'"
                                    size="mini"
                                    type="success"
                                    @click="bianji(scope.row)">编辑</el-button>
                            <el-button
                                    v-if="scope.row.materialStatus=='审核中'&&(ntype=='审核员'||ntype=='管理员')"
                                    size="mini"
                                    type="primary"
                                    @click="approveOut(scope.row)">审核通过</el-button>
                            <el-button
                                    v-if="scope.row.materialStatus=='审核中'&&(ntype=='审核员'||ntype=='管理员')"
                                    size="mini"
                                    type="warning"
                                    @click="disApproveOut(scope.row)">驳回</el-button>
                            <el-button
                                    v-show="scope.row.materialStatus=='审核中'"
                                    size="mini"
                                    type="danger"
                                    @click="handleDelete(scope.row)">删除</el-button>
<!--                            <div v-if="scope.row.materialStatus=='已发放'&&scope.row.xgMaterialInfo!=null">———————————</div>-->
<!--                            <div >-->
                                <el-tag v-show="scope.row.xgMaterialInfo==null">该发放记录涉及的资料信息已被删除</el-tag>
<!--                            </div>-->
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
                        :total="totalPage">
                </el-pagination>
            </el-card>
        </div>

        <!--导出表-->
        <el-table
                id="table1"
                :data="tableData1"
                style="width: 100%;background-color: transparent;border: none;display: none">
            <div v-for="(item,index) in table1" :key="index">
                <el-table-column
                        :label="item.name"
                        :prop="item.dataName"
                >
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

        <!--物资发放信息详情的抽屉-->
        <el-drawer
                title="物资发放信息查看"
                :visible.sync="fromdialog1"
                direction="ttb"
                ref="drawer"
                size="1000px"
        >
            <div class="demo-drawer__content">
                <div style="margin: 0 5% 0 5%;">
                    <div>
                        <el-row>
                            <div>
                                <el-card class="card5" shadow="never" style="color: #f6f5f5">
                                    <el-row>
                                        <el-col :span="15">
                                            <el-row>
                                                <el-col :span="6">
                                                    <div>
                                                        <span>物资记录码：</span>
                                                    </div>
                                                </el-col>
                                                <el-col :span="12">
                                                    <div>
                                                        <span>{{grantRecordDetail.recordId}}</span>
                                                    </div>
                                                </el-col>
                                            </el-row>
                                            <br>
                                            <el-row>
                                                <el-col :span="6">
                                                    <div>
                                                        <span>物资名：</span>
                                                    </div>
                                                </el-col>
                                                <el-col :span="8">
                                                    <div>
                                                        <span>{{grantRecordDetail.infoName}}</span>
                                                    </div>
                                                </el-col>
                                            </el-row>
                                            <br>
                                            <el-row>
                                                <el-col :span="6">
                                                    <div>
                                                        <span>物资类别：</span>
                                                    </div>
                                                </el-col>
                                                <el-col :span="4">
                                                    <div>
                                                        <span>{{grantRecordDetail.grantCategory}}</span>
                                                    </div>
                                                </el-col>
                                            </el-row>
                                            <br>
                                            <el-row>
                                                <el-col :span="6">
                                                    <div>
                                                        <span>物资数量：</span>
                                                    </div>
                                                </el-col>
                                                <el-col :span="12">
                                                    <div>
                                                        <span>{{grantRecordDetail.num}}</span>
                                                    </div>
                                                </el-col>
                                            </el-row>
                                            <br>
                                            <el-row>
                                                <el-col :span="6">
                                                    <div>
                                                        <span>紧急程度：</span>
                                                    </div>
                                                </el-col>
                                                <el-col :span="12">
                                                    <div>
                                                        <span>{{grantRecordDetail.level}}</span>
                                                    </div>
                                                </el-col>
                                            </el-row>
                                            <br>
                                            <el-row>
                                                <el-col :span="6">
                                                    <div>
                                                        <span>厂商：</span>
                                                    </div>
                                                </el-col>
                                                <el-col :span="18">
                                                    <div>
                                                        <span>{{grantRecordDetail.materialSupportor}}</span>
                                                    </div>
                                                </el-col>
                                            </el-row>
                                        </el-col>
                                        <el-col :span="6">
                                            <img :src="grantRecordDetail.img" alt="#" style="width: 100%;height: 270px">
                                        </el-col>
                                    </el-row>
                                    <br>
                                    <el-row>
                                        <el-col :span="6">
                                            <div>
                                                <span>物资来源地：</span>
                                            </div>
                                        </el-col>
                                        <el-col :span="18">
                                            <div>
                                                <span>{{grantRecordDetail.fromAd}}</span>
                                            </div>
                                        </el-col>
                                    </el-row>
                                    <br>
                                    <el-row>
                                        <el-col :span="6">
                                            <div>
                                                <span>物资来源联系人：</span>
                                            </div>
                                        </el-col>
                                        <el-col :span="18">
                                            <div>
                                                <span>{{grantRecordDetail.fromConcat}}</span>
                                            </div>
                                        </el-col>
                                    </el-row>
                                    <br>
                                    <el-row>
                                        <el-col :span="6">
                                            <div>
                                                <span>物资来源联系方式：</span>
                                            </div>
                                        </el-col>
                                        <el-col :span="18">
                                            <div>
                                                <span>{{grantRecordDetail.fromTel}}</span>
                                            </div>
                                        </el-col>
                                    </el-row>
                                    <br>
                                    <el-row>
                                        <el-col :span="6">
                                            <div>
                                                <span>物资来源备注：</span>
                                            </div>
                                        </el-col>
                                        <el-col :span="18">
                                            <div>
                                                <span>{{grantRecordDetail.fromDesc}}</span>
                                            </div>
                                        </el-col>
                                    </el-row>
                                    <el-divider></el-divider>
                                    <el-row>
                                        <el-col :span="6">
                                            <div>
                                                <span>物资去向地：</span>
                                            </div>
                                        </el-col>
                                        <el-col :span="18">
                                            <div>
                                            <span>
                                               {{grantRecordDetail.toAd}}
                                            </span>
                                            </div>
                                        </el-col>
                                    </el-row>
                                    <br>
                                    <el-row>
                                        <el-col :span="6">
                                            <div>
                                                <span>物资接收方联系人：</span>
                                            </div>
                                        </el-col>
                                        <el-col :span="18">
                                            <div>
                                                <span>{{grantRecordDetail.toConcat}}</span>
                                            </div>
                                        </el-col>
                                    </el-row>
                                    <br>
                                    <el-row>
                                        <el-col :span="6">
                                            <div>
                                                <span>物资接收方联系方式：</span>
                                            </div>
                                        </el-col>
                                        <el-col :span="18">
                                            <div>
                                                <span>{{grantRecordDetail.toTel}}</span>
                                            </div>
                                        </el-col>
                                    </el-row>
                                    <br>
                                    <el-row>
                                        <el-col :span="6">
                                            <div>
                                                <span>物资接收机构：</span>
                                            </div>
                                        </el-col>
                                        <el-col :span="18">
                                            <div>
                                                <span>{{grantRecordDetail.organization}}</span>
                                            </div>
                                        </el-col>
                                    </el-row>
                                    <br>
                                    <el-row>
                                        <el-col :span="6">
                                            <div>
                                                <span>物资接收备注：</span>
                                            </div>
                                        </el-col>
                                        <el-col :span="18">
                                            <div>
                                                <span>{{grantRecordDetail.toDesc}}</span>
                                            </div>
                                        </el-col>
                                    </el-row>
                                    <el-divider><i class="el-icon-s-check fa-2x"></i></el-divider>
                                    <div class="bottom clearfix" style="">
                                        <el-row>
                                            <el-col :span="10">
                                                <div>
                                                    <span>操作员：</span>
                                                </div>
                                            </el-col>
                                            <el-col :span="12">
                                                <div>
                                                    <span>{{grantRecordDetail.operator}}</span>
                                                </div>
                                            </el-col>
                                        </el-row>
                                        <br>
                                        <el-row>
                                            <el-col :span="10">
                                                <div>
                                                    <span>操作员联系方式：</span>
                                                </div>
                                            </el-col>
                                            <el-col :span="12">
                                                <div>
                                                    <span>{{grantRecordDetail.tel}}</span>
                                                </div>
                                            </el-col>
                                        </el-row>
                                        <br>
                                    </div>
                                </el-card>
                            </div>
                        </el-row>
                    </div>
                    <div class="demo-drawer__footer" style="float: right">
                        <el-button style="width: 300px" type="primary" @click="fromdialog1=false">确认</el-button>
                    </div>
                </div>
            </div>
        </el-drawer>

        <!--编辑物资发放信息的抽屉-->
        <el-drawer
                title="物资发放信息修改"
                :visible.sync="fromdialog"
                direction="ltr"
                ref="drawer"
                size="660px"
        >
            <div class="demo-drawer__content">
                <div style="margin: 0 5% 0 5%">
                    <el-form ref="form" :model="form" label-width="150px" size="default">
                        <el-form-item label="物资识别码" class="form">
                            <el-input  style="width: 250px;" :placeholder="form.recordId" disabled></el-input>
                        </el-form-item>
                        <el-form-item label="物资类别" class="form">
                            <el-select v-model="form.grantCategory" :placeholder="form.grantCategory">
                                <el-option
                                        v-for="(item,index) in options"
                                        :key="index"
                                        :label="item.typeName"
                                        :value="item.typeName">
                                </el-option>
                            </el-select>
                        </el-form-item>
                        <el-form-item label="物资数量" class="form">
                            <el-input-number style="width: 250px" v-model="form.num" :min="1"></el-input-number>
                        </el-form-item>
                        <el-form-item label="操作员" class="form">
                            <el-input v-model="form.operator" style="width: 250px;" :placeholder="form.operator" disabled></el-input>
                        </el-form-item>
                        <el-form-item label="联系方式" class="form">
                            <el-input v-model="form.tel" style="width: 250px;" :placeholder="form.tel"></el-input>
                        </el-form-item>
                        <el-form-item label="供应商" class="form">
                            <el-input v-model="form.materialSupportor" style="width: 250px;" :placeholder="form.materialSupportor"></el-input>
                        </el-form-item>
                        <el-form-item size="large" class="form">
                            <el-button type="primary" @click="onSubmit">确认修改</el-button>
                            <el-button  @click="cancelForm">取消</el-button>
                        </el-form-item>
                    </el-form>
                </div>
            </div>
        </el-drawer>

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
    import {
        approveOut,
        deleteRecord, disApproveOut,
        getGrantNums,
        getGrantRecords, getGrantRecords1,
        materialType,
        updateGrantRecord
    } from "../../services/materialService";
    import XLSX from 'xlsx'

    export default {
        data() {
            return {
                ntype:localStorage.getItem("ntype"),
                fromdialog:false,
                fromdialog1:false,
                totalPage:0,
                pageSize:10,
                pageIndex: 1,
                currentPage:'',
                dialogFormVisible: false,
                formLabelWidth: '120px',
                form: {
                    id:'',
                    recordId:'',
                    grantCategory: "",
                    num:1,
                    fromId:'',
                    toId:"",
                    level:'',
                    materialStatus: '',
                    operator:'',
                    tel:'',
                    materialSupportor: '',
                },
                value2: '',
                input:'',
                loading:true,
                fullscreenLoading:true,
                tableData: [],
                tableData1: [],
                table: {
                    // state:{
                    //     name:'状态',
                    //     dataName:'state',
                    // },
                    // id:{
                    //     name:'ID',
                    //     dataName:'id',
                    // },
                    tel:{
                        name:'联系电话',
                        dataName:'tel',
                    },
                    createTime:{
                        name:'创建时间',
                        dataName:'createTime',
                    },
                    recordId:{
                        name:'记录码',
                        dataName:'recordId',
                    },
                    // infoId:{
                    //     name:'资料码',
                    //     dataName:'infoId',
                    // },
                    infoName:{
                        name:'资料名',
                        dataName:'xgMaterialInfo.materialName',
                    },
                    grantCategory:{
                        name:'分类',
                        dataName:'grantCategory',
                    },
                    // fromAreaProvince:{
                    //     name:'来源地省份',
                    //     dataName:'xgMaterialFrom.fromAreaProvince',
                    //     dataLength:'120px'
                    // },
                    // fromAreaCity:{
                    //     name:'来源地城市',
                    //     dataName:'xgMaterialFrom.fromAreaCity',
                    //     dataLength:'120px'
                    // },
                    // fromAreaCounty:{
                    //     name:'来源地镇/县',
                    //     dataName:'xgMaterialFrom.fromAreaCounty',
                    //     dataLength:'120px'
                    // },
                    // fromAreaAddress:{
                    //     name:'来源地详细地址',
                    //     dataName:'xgMaterialFrom.fromAreaAddress',
                    //     dataLength:'120px'
                    // },
                    materialStatus:{
                        name:'物资状态',
                        dataName:'materialStatus',
                    },
                    // toAreaProvince:{
                    //     name:'去向地省份',
                    //     dataName:'xgMaterialTo.toAreaProvince',
                    //     dataLength:'120px'
                    // },
                    // toAreaCity:{
                    //     name:'去向地城市',
                    //     dataName:'xgMaterialTo.toAreaCity',
                    //     dataLength:'120px'
                    // },
                    // toAreaCounty:{
                    //     name:'去向地镇/县',
                    //     dataName:'xgMaterialTo.toAreaCounty',
                    //     dataLength:'120px'
                    // },
                    // toAreaAddress:{
                    //     name:'去向地详细地址',
                    //     dataName:'xgMaterialTo.toAreaAddress',
                    //     dataLength:'120px'
                    // },
                    materialSupportor:{
                        name:'供应商',
                        dataName:'materialSupportor',
                    },
                    num:{
                        name:'数量',
                        dataName:'num',
                    },
                    level:{
                        name:'紧急程度',
                        dataName:'level',
                    },
                    operator:{
                        name:'操作员',
                        dataName:'operator',
                    },

                    // updateTime:{
                    //     name:'更新时间',
                    //     dataName:'updateTime',
                    // }
                },
                table1: {
                    // state:{
                    //     name:'状态',
                    //     dataName:'state',
                    // },
                    // id:{
                    //     name:'ID',
                    //     dataName:'id',
                    // },
                    materialStatus:{
                        name:'物资状态',
                        dataName:'materialStatus',
                    },
                    createTime:{
                        name:'创建时间',
                        dataName:'createTime',
                    },
                    recordId:{
                        name:'记录码',
                        dataName:'recordId',
                    },
                    infoId:{
                        name:'资料码',
                        dataName:'infoId',
                    },
                    infoName:{
                        name:'资料名',
                        dataName:'xgMaterialInfo.materialName',
                    },
                    grantCategory:{
                        name:'分类',
                        dataName:'grantCategory',
                    },
                    materialSpecifications:{
                        name:'规格',
                        dataName:'xgMaterialInfo.materialSpecifications',
                    },
                    materialDesc:{
                        name:'物资备注',
                        dataName:'xgMaterialInfo.materialDesc',
                    },
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
                    fromContacts:{
                        name:'物资来源联系人',
                        dataName:'xgMaterialFrom.contacts',
                    },
                    fromTel:{
                        name:'物资来源联系电话',
                        dataName:'xgMaterialFrom.tel',
                    },
                    toAreaProvince:{
                        name:'去向地省份',
                        dataName:'xgMaterialTo.toAreaProvince',
                        dataLength:'120px'
                    },
                    toAreaCity:{
                        name:'去向地城市',
                        dataName:'xgMaterialTo.toAreaCity',
                        dataLength:'120px'
                    },
                    toAreaCounty:{
                        name:'去向地镇/县',
                        dataName:'xgMaterialTo.toAreaCounty',
                        dataLength:'120px'
                    },
                    toAreaAddress:{
                        name:'去向地详细地址',
                        dataName:'xgMaterialTo.toAreaAddress',
                        dataLength:'120px'
                    },
                    organization:{
                        name:'物资接收机构',
                        dataName:'xgMaterialTo.organization',
                    },
                    toContacts:{
                        name:'物资接收方联系人',
                        dataName:'xgMaterialTo.contacts',
                    },
                    toTel:{
                        name:'物资接收方联系电话',
                        dataName:'xgMaterialTo.tel',
                    },
                    materialSupportor:{
                        name:'供应商',
                        dataName:'materialSupportor',
                    },
                    num:{
                        name:'数量',
                        dataName:'num',
                    },
                    level:{
                        name:'紧急程度',
                        dataName:'level',
                    },
                    operator:{
                        name:'操作员',
                        dataName:'operator',
                    },
                    tel:{
                        name:'联系电话',
                        dataName:'tel',
                    },


                    // updateTime:{
                    //     name:'更新时间',
                    //     dataName:'updateTime',
                    // }
                },
                search:{
                    recordId:"",
                    grantCategory:'',
                    level:'',
                    materialStatus:'',
                },
                options: [],
                value: '',
                dataNums:{
                    recordNums:'',
                    recentRecordNums:'',
                    groupNums:{},
                },
                grantRecordDetail:{
                    recordId:'',
                    infoName:'',
                    grantCategory: "",
                    num:1,
                    img:'',
                    fromAd:'',
                    toAd:'',
                    level:'',
                    materialStatus: '',
                    organization:'',
                    fromConcat:'',
                    fromTel:'',
                    fromDesc:'',
                    toConcat:'',
                    toTel:'',
                    toDesc:'',
                    operator:'',
                    tel:'',
                    materialSupportor: '',
                    createTime:'',
                },
            }
        },
        computed:{
          watching1(){
              return this.format_number(this.dataNums.recordNums);
          },
            watching2(){
                return this.format_number(this.dataNums.recentRecordNums);
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
            fafang(){
                this.$router.push("/grantMaterial");
            },
            searchGrantRecord(){
                this.search.recordId = this.search.recordId.trim();
                getGrantRecords(1,this.search).then(res=>{
                    this.tableData = res.data.data;
                    this.pageSize = res.data.data.pageSize;
                    this.totalPage = res.data.data.total;
                });
            },
            bianji(item){
                this.fromdialog=true;
                this.form.id = item.id;
                this.form.recordId = item.recordId;
                this.form.grantCategory = item.grantCategory;
                this.form.num = item.num;
                this.form.fromId = item.fromId;
                this.form.toId = item.toId;
                this.form.level =item.level;
                this.form.materialStatus = item.materialStatus;
                this.form.operator = item.operator;
                this.form.tel =item.tel;
                this.form.materialSupportor = item.materialSupportor;
            },
            onSubmit(){
                updateGrantRecord(this.form).then(res=>{
                    if(res.data.data==1){
                        this.loading = false;
                        this.fromdialog = false;
                        getGrantRecords(this.currentPage,'').then(res=>{
                            this.tableData = res.data.data;
                            this.pageSize = res.data.data.pageSize;
                            this.totalPage = res.data.data.total;
                        });
                        this.$notify({
                            title: '成功',
                            message: '更新成功',
                            type: 'success'
                        });
                    }
                })
            },
            handleCurrentChange(val) {
                this.currentPage = val;
                getGrantRecords(this.currentPage,'').then(res=>{
                    this.tableData = res.data.data;
                    // this.pageSize = res.data.data.pageSize;
                    // this.totalPage = res.data.data.total;
                });
            },
            cancelForm() {
                this.loading = false;
                this.fromdialog = false;
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
            handleDelete(item){
                deleteRecord(item.id).then(res1=>{
                    if(res1.data.data==1){
                        getGrantRecords(this.currentPage,'').then(res=>{
                            this.tableData = res.data.data;
                            this.pageSize = res.data.data.pageSize;
                            this.totalPage = res.data.data.total;
                        });
                        this.$notify({
                            title: '成功',
                            message: '删除成功',
                            type: 'success'
                        });
                    }else{
                        this.$notify({
                            title: '提示',
                            message: res1.data.data,
                            type: 'info'
                        });
                    }

                })
            },
            approveOut(item){
                // console.log(item)
                approveOut(item).then(res=>{
                    // console.log(res.data);
                    this.$notify({
                        title: '提示',
                        message: res.data.data,
                        type: 'info'
                    });
                    this.getNums();
                    getGrantRecords(this.currentPage,'').then(res=>{
                        this.tableData = res.data.data;
                        this.pageSize = res.data.data.pageSize;
                        this.totalPage = res.data.data.total;
                    });
                });

            },
            disApproveOut(item){
                disApproveOut(item).then(res=>{
                    this.$notify({
                        title: '提示',
                        message: res.data.data,
                        type: 'info'
                    });
                    getGrantRecords(this.currentPage,'').then(res=>{
                        this.tableData = res.data.data;
                        this.pageSize = res.data.data.pageSize;
                        this.totalPage = res.data.data.total;
                    });
                });

            },
            getDetail(item){
                // console.log(item);
                this.fromdialog1 = true;
                this.grantRecordDetail.recordId = item.recordId;
                this.grantRecordDetail.infoName = item.xgMaterialInfo.materialName;
                this.grantRecordDetail.grantCategory = item.grantCategory;
                this.grantRecordDetail.num = item.num;
                this.grantRecordDetail.img = item.xgMaterialInfo.materialImg;
                this.grantRecordDetail.fromAd = item.xgMaterialFrom.fromAreaProvince
                    +"   "+item.xgMaterialFrom.fromAreaCity
                    +"   "+item.xgMaterialFrom.fromAreaCounty
                    +"   "+item.xgMaterialFrom.fromAreaAddress;
                this.grantRecordDetail.toAd = item.xgMaterialTo.toAreaProvince
                    +"   "+item.xgMaterialTo.toAreaCity
                    +"   "+item.xgMaterialTo.toAreaCounty
                    +"   "+item.xgMaterialTo.toAreaAddress;
                this.grantRecordDetail.level =item.level;
                this.grantRecordDetail.materialStatus = item.materialStatus;
                this.grantRecordDetail.fromConcat = item.xgMaterialFrom.contacts;
                this.grantRecordDetail.fromTel =item.xgMaterialFrom.tel;
                this.grantRecordDetail.fromDesc =item.xgMaterialFrom.fromDesc;
                this.grantRecordDetail.toConcat = item.xgMaterialTo.contacts;
                this.grantRecordDetail.toTel =item.xgMaterialTo.tel;
                this.grantRecordDetail.toDesc =item.xgMaterialTo.toDesc;
                this.grantRecordDetail.organization =item.xgMaterialTo.organization;
                this.grantRecordDetail.operator =item.operator;
                this.grantRecordDetail.tel =item.tel;
                this.grantRecordDetail.materialSupportor = item.materialSupportor;
                this.grantRecordDetail.createTime = item.createTime;
                // console.log(item);
            },
            getNums(){
                //获取物资发放记录数概况
                getGrantNums().then(res=>{
                    //发放数
                    this.dataNums.recordNums = res.data.data[0];
                    //近期发放数
                    this.dataNums.recentRecordNums = res.data.data[1];
                    //各类物资发放数
                    this.dataNums.groupNums = res.data.data[2];
                });
            }
        },
        mounted() {
            setTimeout(this.changeLoading,1000);
            document.getElementById("materialIn").scrollIntoView({ block: 'start', behavior: 'smooth' });
            //获取物资发放记录
            getGrantRecords(1,'').then(res=>{
                this.tableData = res.data.data;
                this.pageSize = res.data.data.pageSize;
                this.totalPage = res.data.data.total;
            });

            //获取物资发放记录
            getGrantRecords1().then(res=>{
                this.tableData1 = res.data.data;
            });

            this.getNums();
            // //获取物资发放记录数概况
            // getGrantNums().then(res=>{
            //     //发放数
            //     this.dataNums.recordNums = res.data.data[0];
            //     //近期发放数
            //     this.dataNums.recentRecordNums = res.data.data[1];
            //     //各类物资发放数
            //     this.dataNums.groupNums = res.data.data[2];
            // });
            /*获取物资类别*/
            materialType().then(res=>{
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
        /*background-color: #545372;*/
        /*background: #d6e6f2;*/
    }
    /deep/ .el-table, /deep/ .el-table__expanded-cell{
        background-color: transparent;
    }
    /* 表格内背景颜色 */
    /deep/ .el-table th,
    /deep/ .el-table tr,
    /deep/ .el-table td {
        /*background-color: transparent;*/
    }

    /deep/ .el-table {
        color: #52616b;
        font-weight: 700;
    }
    /deep/ .el-table tbody tr:hover>td { color: #409EFF;cursor: pointer}
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
    }
    /*.title{*/
    /*    font-size: 26px;*/
    /*    font-weight: 200;*/
    /*    margin-bottom: 1%;*/
    /*    color: white;*/
    /*}*/
    .lab{
        color: white;
        text-align: center;
        justify-content: center;
        align-items: center;
        display: flex;
    }

    .card3{
        text-align: center;
        justify-content: center;
        align-items: center;
        display: flex;
        /*background-color: #99a9bf;*/
        background: transparent;
        /*background:rgba(0,0,0,0.1);*/
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
    .card4{
        /*background-color:#f8f5f1;*/
        border: none;
        border-radius: 10px;
    }

    .card5{
        background:transparent;
        border: none;
    }
    /deep/ .el-drawer{

        /*overflow-y: scroll;*/
        background: rgba(0,0,0,0.4);
        /*margin-bottom: 50px;*/

    }
    /deep/  .el-drawer__header {
        font-size: 22px;
        color: #a6e3e9;
        background: rgba(19, 32, 42, 0.5) !important;
    }
</style>

<style>
    .form .el-form-item__label{
        color: white;
    }
</style>

