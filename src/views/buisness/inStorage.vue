<template>
    <div id="materialIn"
            v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <div>
            <el-row :gutter="40">
                <el-col :span="7">
                    <el-card class="card1">
                        <el-steps :active="active" finish-status="success">
                            <el-step title="填写"></el-step>
                            <el-step title="步骤 2"></el-step>
                            <el-step title="入库"></el-step>
                        </el-steps>
                    </el-card>
                </el-col>
                <el-col :span="17">
                    <el-card class="card1">
                        <el-steps :active="active" finish-status="success">
                            <el-step title="填写"></el-step>
                            <el-step title="审核"></el-step>
                            <el-step title="步骤 3"></el-step>
                        </el-steps>
                        <br><br><br>
                        <el-row>
                            <el-form ref="form" :model="sizeForm" label-width="80px" size="mini">
                                <el-form-item label="活动名称">
                                    <el-input v-model="sizeForm.name"></el-input>
                                </el-form-item>
                                <el-form-item label="活动区域">
                                    <el-select v-model="sizeForm.region" placeholder="请选择活动区域">
                                        <el-option label="区域一" value="shanghai"></el-option>
                                        <el-option label="区域二" value="beijing"></el-option>
                                    </el-select>
                                </el-form-item>
                                <el-form-item label="活动时间">
                                    <el-col :span="11">
                                        <el-date-picker type="date" placeholder="选择日期" v-model="sizeForm.date1" style="width: 100%;"></el-date-picker>
                                    </el-col>
                                    <el-col class="line" :span="2">-</el-col>
                                    <el-col :span="11">
                                        <el-time-picker placeholder="选择时间" v-model="sizeForm.date2" style="width: 100%;"></el-time-picker>
                                    </el-col>
                                </el-form-item>
                                <el-form-item label="活动性质">
                                    <el-checkbox-group v-model="sizeForm.type">
                                        <el-checkbox-button label="美食/餐厅线上活动" name="type"></el-checkbox-button>
                                        <el-checkbox-button label="地推活动" name="type"></el-checkbox-button>
                                        <el-checkbox-button label="线下主题活动" name="type"></el-checkbox-button>
                                    </el-checkbox-group>
                                </el-form-item>
                                <el-form-item label="特殊资源">
                                    <el-radio-group v-model="sizeForm.resource" size="medium">
                                        <el-radio border label="线上品牌商赞助"></el-radio>
                                        <el-radio border label="线下场地免费"></el-radio>
                                    </el-radio-group>
                                </el-form-item>
                                <el-form-item size="large">
                                    <el-button type="primary" @click="onSubmit">立即创建</el-button>
                                    <el-button>取消</el-button>
                                </el-form-item>
                            </el-form>
                        </el-row>
                    </el-card>
                </el-col>
            </el-row>
            <el-button style="margin-top: 12px;" @click="next">下一步</el-button>
        </div>
    </div>

</template>

<script>
    export default {
        data() {
            return {
                active: 0,
                dialogFormVisible: false,
                formLabelWidth: '120px',
                sizeForm: {
                    name: '',
                    region: '',
                    date1: '',
                    date2: '',
                    delivery: false,
                    type: [],
                    resource: '',
                    desc: ''
                },
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
            next() {
                if (this.active++ > 2) this.active = 0;
            }
        },
        mounted() {
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
        color: #52616b;
        font-weight: 700;
    }
    /deep/ .el-table tbody tr:hover>td { background-color: transparent;color:#fff;cursor: pointer}
    .el-table::before {
        left: 0;
        bottom: 0;
        width: 100%;
        height: 0px;
    }
    .card1{
        /*background-color: #2B2C3E;*/
        min-height: 70vh;
        border: none;
    }
    .title{
        font-size: 26px;
        font-weight: 200;
        margin-bottom: 1%;
    }
</style>
