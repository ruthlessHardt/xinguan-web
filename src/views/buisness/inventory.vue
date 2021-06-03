<template>
    <div id = "inventory">
        <el-row>
            <el-col>
                <el-card>
                    <el-link icon="el-icon-document" target="_blank" @click="goto(0)">
                        <span style="font-weight: 700">查看设备使用情况列表</span>
                    </el-link>
                </el-card>
            </el-col>
        </el-row>
        <br>
        <el-row>
            <el-col :span="24">
                <el-card>
                    <el-row>
                        <el-col :span="0.5">
                             <el-card style="width: 10px;height: 25px;background-color: crimson"></el-card>
                        </el-col>
                        <el-col :span="22">
                            <span style="font-size: 20px;font-weight: 700">设备使用记录</span>
                        </el-col>
                    </el-row>
                </el-card>
            </el-col>
        </el-row>
        <br>
        <el-row>
            <el-col :span="24">
                <el-card class="card1">
                    <el-form ref="form" :model="form" label-width="180px">
                        <el-form-item label="采购名称">
                            <el-input v-model="form.equipmentName"></el-input>
                        </el-form-item>
                        <el-form-item label="采购金额">
                            <el-input-number v-model="form.equipmentMoney" :min="1" :max="9999" label="采购金额"></el-input-number>
                        </el-form-item>
                        <el-form-item label="采购用户ID">
                            <el-input v-model="form.buyerUid" disabled></el-input>
                        </el-form-item>
                        <el-form-item label="采购原因">
                            <el-input type="textarea" v-model="form.purchaseReason"></el-input>
                        </el-form-item>
                        <el-form-item label="申请进度">
                            <el-radio-group v-model="form.applyProgress" disabled>
                                <el-radio label="本地保存未提交申请" value="1"></el-radio>
                                <el-radio label="已申请" value="2"></el-radio>
                                <el-radio label="申请通过" value="3"></el-radio>
                                <el-radio label="申请未通过" value="4"></el-radio>
                            </el-radio-group>
                        </el-form-item>
                        <el-form-item label="申请未通过原因">
                            <el-input type="textarea" v-model="form.applyFailureReason"></el-input>
                        </el-form-item>
                        <el-form-item label="采购进度">
                            <el-radio-group v-model="form.purchaseProgress" disabled>
                                <el-radio label="未采购" value="0"></el-radio>
                                <el-radio label="待采购" value="1"></el-radio>
                                <el-radio label="采购中" value="2"></el-radio>
                                <el-radio label="已采购" value="3"></el-radio>
                            </el-radio-group>
                        </el-form-item>

                        <el-form-item>
                            <el-button type="primary" @click="onSubmit">提交申请</el-button>
                            <el-button @click="clearForm">清空</el-button>
                        </el-form-item>
                    </el-form>
                </el-card>
            </el-col>
        </el-row>

    </div>
</template>

<script>
    export default {
        data(){
            return {
                form: {
                    equipmentName: '',
                    equipmentMoney: '',
                    buyerUid:'此ID为登录用户的ID',
                    purchaseReason:'',
                    applyProgress:'',
                    applyFailureReason:'',
                    purchaseProgress:'',
                }
            }
        },
        methods: {
            clearForm(){
                this.form ={
                    equipmentName: '',
                    equipmentMoney: '',
                    buyerUid:'此ID为登录用户的ID',
                    purchaseReason:'',
                    applyProgress:'',
                    applyFailureReason:'',
                    purchaseProgress:'',
                }
            },
            goto(index){
              if(index==0){
                  this.$router.push("/inventoryList");
              }
            },
            onSubmit() {
                // console.log('submit!');
            }
        }
    }
</script>

<style scoped>
#inventory{
    margin: 2% 5% 0 5%;
}
.card1{
    min-width: 1000px;
}
.el-form-item{
    width: 50%;
}
</style>
