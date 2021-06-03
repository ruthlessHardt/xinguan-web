<template>
    <div id = "inventoryList" v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <el-row>
            <el-col :span="1">
                <el-card style="width: 10px;height: 25px;background-color: crimson"></el-card>
            </el-col>
            <el-col :span="2">
                <span style="font-size: 20px;font-weight: 500">库存柱形图</span>
            </el-col>
        </el-row>
        <el-row :gutter="20">
            <el-col :span="24">
                <div id="mychart" style="width: 100%;height: 600px"></div>
            </el-col>
        </el-row>
        <div>
            <i class="el-icon-ice-drink fa-5x"
               style="color: #d3dce6;transform: rotate(-30deg);position: fixed;
               z-index: -99;
               font-size: 650px;bottom: 1%;right: 14%;"></i>
        </div>
        <div>
            <i class="el-icon-ice-drink fa-5x"
               style="color: #d3dce6;transform: rotate(40deg);position: fixed;
               z-index: -99;
               font-size: 300px;bottom: 10%;left:24%;"></i>
        </div>
        <el-row>
            <el-col :span="24">
                <el-card shadow="never">
                    <el-row>
                        <el-col :span="1">
                             <el-card style="width: 10px;height: 25px;background-color: crimson"></el-card>
                        </el-col>
                        <el-col :span="12">
                            <span style="font-size: 20px;font-weight: 700">库存总览</span>
                        </el-col>
                        <el-col :span="1">
                            <el-card style="width: 20px;height: 25px;background-color: #ffd04b"></el-card>
                        </el-col>
                        <el-col :span="4">
                            <span style="font-size: 20px;font-weight: 700">库存不足100</span>
                        </el-col>

                        <el-col :span="1">
                            <el-card style="width: 20px;height: 25px;background-color: crimson"></el-card>
                        </el-col>
                        <el-col :span="2">
                            <span style="font-size: 20px;font-weight: 500">库存为0</span>
                        </el-col>
                    </el-row>
                </el-card>
            </el-col>
        </el-row>
        <br>
        <el-row :gutter="20">
            <div v-for="(item,index) in stockData" :key = 'index'>
            <el-col :span="4.5">
                <el-card class="card2">
                   <span>{{item.mname}}</span>
                    <div class="text">
                        <br><br>
                        <span v-if="item.num==0" style="color: crimson">{{item.num}}</span>
                        <span v-if="item.num<100&&item.num>0" style="color: #ffd04b">{{item.num}}</span>
                        <span v-if="item.num>=100">{{item.num}}</span>
                    </div>
                </el-card>
                <br><br><br>
            </el-col>
            </div>

<!--            <div v-for="(item,index) in stockData" :key = 'index' v-if="index>=5&&index<11">-->
<!--                <br>-->
<!--                <el-col :span="4.5">-->
<!--                    <el-card class="card2">-->
<!--                        <span>{{item.mname}}</span>-->
<!--                        <div class="text">-->
<!--                            <br><br>-->
<!--                            <span v-if="item.num==0" style="color: crimson">{{item.num}}</span>-->
<!--                            <span v-if="item.num<100&&item.num>0" style="color: #ffd04b">{{item.num}}</span>-->
<!--                            <span v-if="item.num>=100">{{item.num}}</span>-->
<!--                        </div>-->
<!--                    </el-card>-->
<!--                    <br><br><br>-->
<!--                </el-col>-->
<!--            </div>-->
<!--            <div v-for="(item,index) in stockData" :key = 'index' v-if="index>=11&&index<16">-->
<!--                <br>-->
<!--                <el-col :span="4.5">-->
<!--                    <el-card class="card2">-->
<!--                        <span>{{item.mname}}</span>-->
<!--                        <div class="text">-->
<!--                            <br>-->
<!--                            <span v-if="item.num==0" style="color: crimson">{{item.num}}</span>-->
<!--                            <span v-if="item.num<100&&item.num>0" style="color: #ffd04b">{{item.num}}</span>-->
<!--                            <span v-if="item.num>=100">{{item.num}}</span>-->
<!--                        </div>-->
<!--                    </el-card>-->
<!--                </el-col>-->
<!--            </div>-->
        </el-row>
        <el-row>
            <div style="width: auto;height:200px;background: url('https://ouch-cdn2.icons8.com/T7YZ_wMVyx_mgfSuh8LSciWEFUEKcYwKO1onpOzOc3s/rs:fit:2256:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNDQx/L2Q3YjZkODU0LTNl/ZjUtNGFkOS04MTI2/LTIwYTdlYTBlZWM0/MC5wbmc.png') 97% center;background-size: contain;background-repeat: no-repeat"></div>
        </el-row>







        <!--设备申请修改-->
        <el-dialog title="申请修改" :visible.sync="dialogFormVisible">
            <el-form ref="form" :model="form" label-width="180px">
                <el-form-item label="采购名称">
                    <el-input v-model="form.equipmentName" :placeholder="form.equipmentName"></el-input>
                </el-form-item>
                <el-form-item label="采购金额">
                    <el-input-number v-model="form.equipmentMoney" :min="1" :max="9999" label="采购金额" :placeholder="form.equipmentMoney"></el-input-number>
                </el-form-item>
                <el-form-item label="采购用户ID">
                    <el-input v-model="form.buyerUid" disabled :placeholder="form.buyerUid"></el-input>
                </el-form-item>
                <el-form-item label="采购原因">
                    <el-input type="textarea" v-model="form.purchaseReason" :placeholder="form.purchaseReason"></el-input>
                </el-form-item>
                <el-form-item label="申请进度">
                    <el-radio-group v-model="form.applyProgress" disabled :placeholder="form.applyProgress">
                        <el-radio label="本地保存未提交申请" value="1"></el-radio>
                        <el-radio label="已申请" value="2"></el-radio>
                        <el-radio label="申请通过" value="3"></el-radio>
                        <el-radio label="申请未通过" value="4"></el-radio>
                    </el-radio-group>
                </el-form-item>
                <el-form-item label="申请未通过原因">
                    <el-input type="textarea" v-model="form.applyFailureReason" :placeholder="form.applyFailureReason"></el-input>
                </el-form-item>
                <el-form-item label="采购进度">
                    <el-radio-group v-model="form.purchaseProgress" disabled :placeholder="form.purchaseProgress">
                        <el-radio label="未采购" value="0"></el-radio>
                        <el-radio label="待采购" value="1"></el-radio>
                        <el-radio label="采购中" value="2"></el-radio>
                        <el-radio label="已采购" value="3"></el-radio>
                    </el-radio-group>
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
    import {stock} from "../../services/materialService";
    import * as echarts from 'echarts';
    import 'echarts-gl';
    export default {
        data(){
            return {
                loading:true,
                fullscreenLoading:true,
                pageIndex: 1,
                currentPage:'',
                pageSize:10,
                totalPage:0,
                dialogFormVisible:false,
                stockData:[],
                form:{
                    equipmentName: '',
                    equipmentMoney: '',
                    buyerUid:'此ID为登录用户的ID',
                    purchaseReason:'',
                    applyProgress:'',
                    applyFailureReason:'',
                    purchaseProgress:'',
                },
                table: {
                    status:{
                        name:'状态',
                        dataName:'status',
                        widthLength:"130px",
                    },
                    applyId:{
                        name:'applyId',
                        dataName:'applyId',
                        widthLength:"80px",
                    },
                    equipmentName:{
                        name:'设备名',
                        dataName:'equipmentName',
                        widthLength:"120px",
                    },
                    equipmentMoney:{
                        name:'设备金额',
                        dataName:'equipmentMoney',
                        widthLength:"120px",
                    },
                    buyerUid:{
                        name:'采购用户ID',
                        dataName:'buyerUid',
                        widthLength:"100px",
                    },
                    purchaseReason:{
                        name:'采购原因',
                        dataName:'purchaseReason',
                        widthLength:"220px",
                    },
                    applyProgress:{
                        name:'申请进度',
                        dataName:'applyProgress',
                        widthLength:"100px",
                    },
                    applyFailureReason:{
                        name:'申请未通过原因',
                        dataName:'applyFailureReason',
                        widthLength:"220px",
                    },
                    purchaseProgress:{
                        name:'采购进度',
                        dataName:'purchaseProgress',
                        widthLength:"100px",
                    },
                    createTime:{
                        name:'创建时间',
                        dataName:'createTime',
                        widthLength:"100px",
                    },
                    updateTime:{
                        name:'更新时间',
                        dataName:'updateTime',
                        widthLength:"100px",
                    }
                },
                // tableData: [{
                //     applyId:'1',
                //     createTime: '2016-05-02',
                //     equipmentMoney:'60010',
                //     equipmentName: '王小虎',
                //     buyerUid:'1',
                //     purchaseReason: '上海市普陀区金沙江路 1518 弄',
                //     applyProgress:"申请中",
                //     applyFailureReason:'资金短缺',
                //     purchaseProgress:'未采购',
                //     updateTime:'————',
                //     status:'1',
                // }, {
                //     applyId:'2',
                //     createTime: '2016-05-04',
                //     equipmentMoney:'16000',
                //     equipmentName: '王小虎',
                //     buyerUid:'1',
                //     purchaseReason: '上海市普陀区金沙江路 1517 弄',
                //     applyProgress:"申请中",
                //     applyFailureReason:'资金短缺',
                //     purchaseProgress:'未采购',
                //     updateTime:'————',
                //     status:'1',
                // }, {
                //     applyId:'3',
                //     createTime: '2016-05-01',
                //     equipmentMoney:'6000',
                //     equipmentName: '王小虎',
                //     buyerUid:'1',
                //     purchaseReason: '上海市普陀区金沙江路 1519 弄',
                //     applyProgress:"申请中",
                //     applyFailureReason:'————',
                //     purchaseProgress:'未采购',
                //     updateTime:'————',
                //     status:'1',
                // },]
                nameList:[],
                valueList:[],
            }
        },
        methods: {
            changeLoading(){
                this.loading = false;
            },
            handleEdit(item) {
                this.dialogFormVisible=true;
                this.form = {
                    equipmentName:item.equipmentName,
                    equipmentMoney:item.equipmentMoney,
                    buyerUid:item.buyerUId,
                    purchaseReason:item.purchaseReason,
                    applyProgress:item.applyProgress,
                    applyFailureReason:item.applyFailureReason,
                    purchaseProgress:item.purchaseProgress,
                }
            },

            handleDelete(index, row) {
                // console.log(index, row);
            },
            goto(index){
                if(index==0){
                    this.$router.push("/inventory");
                }
            },
            handleCurrentChange(val) {
                this.currentPage = val;
            },
            getStock(){
                stock().then(res=>{
                    // console.log(res.data.data);
                    this.stockData = res.data.data;
                    let nameList =[];
                    let valueList = [];
                    this.stockData.map(item =>{
                        nameList.push(item.mname);
                        valueList.push(item.num);
                    });
                    // console.log(nameList);
                    // this.nameList = nameList;
                    // this.valueList = valueList;

                        var chartDom = document.getElementById('mychart');
                        var myChart = echarts.init(chartDom);
                        var option;

                    option = {
                        tooltip: {
                            trigger: 'axis',
                            axisPointer: {
                                type: 'cross'
                            }
                        },
                        xAxis: {
                            type: 'category',
                            data: nameList,
                            //强制显示
                            axisLabel: {
                                interval:0
                            }
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [{
                            data: valueList,
                            type: 'bar',
                            showBackground: true,
                            backgroundStyle: {
                                color: 'rgba(180, 180, 180, 0.2)'
                            }
                        }]
                    };
                        option && myChart.setOption(option);
                });
            },

            },

        mounted() {
            // this.drawCharts();
            setTimeout(this.changeLoading,1000);
            this.getStock()
        }
    }
</script>

<style scoped>
#inventoryList{
    margin: 2% 5% 0 5%;
}
.card1{
    box-shadow: #f6f5f5 -10px -10px 20px;
}
.el-form-item{
    width: 50%;
}
.card2{
    width: 300px;
    border-radius: 10px;
    min-height: 120px;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    border: none;
}
.card2 span{
    font-size: 20px;
    color: #3182BD;
}
.text{

}
.text span{
    color: #409EFF;
    font-weight: 700;
    font-size: 22px;
}
    .el-card{
        border: none;
    }
</style>
