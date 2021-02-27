<template>
    <div id="userManage" v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <div style="padding-left: 3%">
            <el-row :gutter="40">
                <el-col :span="5">
                    <el-card>
                        <div slot="header" class="clearfix">
                            <span>卡片名称</span>
                        </div>
                        ss
                    </el-card>
                    <br>
                    <el-card>
                        <div slot="header" class="clearfix">
                            <span>卡片名称</span>
                        </div>
                        s
                    </el-card>
                    <br>
                    <el-card>
                        <div slot="header" class="clearfix">
                            <span>卡片名称</span>
                        </div>
                        s
                    </el-card>
                </el-col>
                <el-col :span="18">
                    <el-card style="min-height: 402px">
                        <div slot="header" class="clearfix">
                            <span>卡片名称</span>
                        </div>
                        ssasda
                    </el-card>
                </el-col>
            </el-row>
            <el-row>

            </el-row>
        </div>
    </div>

</template>

<style>
    .el-table .warning-row {
        background: oldlace;
    }

    .el-table .success-row {
        background: #f0f9eb;
    }
</style>

<script>
    export default {
        methods: {
            changeLoading(){
                this.loading = false;
            },
            tableRowClassName({row, rowIndex}) {
                if (rowIndex === 1) {
                    return 'warning-row';
                } else if (rowIndex === 3) {
                    return 'success-row';
                }
                return '';
            }
        },
        data() {
            return {
                loading:true,
                fullscreenLoading:true,
                tableData: [{
                    date: '2016-05-02',
                    name: '王小虎',
                    address: '上海市普陀区金沙江路 1518 弄',
                }, {
                    date: '2016-05-04',
                    name: '王小虎',
                    address: '上海市普陀区金沙江路 1518 弄'
                }, {
                    date: '2016-05-01',
                    name: '王小虎',
                    address: '上海市普陀区金沙江路 1518 弄',
                }, {
                    date: '2016-05-03',
                    name: '王小虎',
                    address: '上海市普陀区金沙江路 1518 弄'
                }]
            }
        },
        mounted() {
            setTimeout(this.changeLoading,1000);
        }
    }
</script>
