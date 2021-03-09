<template>
    <div id="material"
            v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <div>
            <el-row :gutter="20">
                <el-col :span="6">
                    <el-card class="card1">
                       <span>需求计划</span>
                    </el-card>
                </el-col>
                <el-col :span="6">
                    <el-card class="card1">
                        需求
                    </el-card>
                </el-col>
                <el-col :span="6">
                    <el-card class="card1">
                        需求
                    </el-card>
                </el-col>
                <el-col :span="6">
                    <el-card class="card1">
                        需求
                    </el-card>
                </el-col>
            </el-row>
        </div>
    </div>

</template>

<script>
    export default {
        data() {
            return {
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
            }
        },
        methods:{
            changeLoading(){
                this.loading = false;
            }
        },
        mounted() {
            setTimeout(this.changeLoading,1000);
        }
    }
</script>
<style scoped>
    #material{
        width: auto;
        height:240vh;
        margin: -20px;
        padding: 2.2%  3% 0% 3%;
        background-color: #545372;
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
        background-color: #2B2C3E;
        border: none;
        color: white;
        text-align: center;
    }
</style>
