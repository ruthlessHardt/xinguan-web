
<template>
    <div id="home" v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">

        <!--轮播图-->
        <div class="carousel">
            <el-carousel :interval="4000"  height="250px" style="width: 80%;">
                <el-carousel-item v-for="(item,index) in carousels" :key="index">
                    <h1 class="medium">{{item}}</h1>
                    <div v-for="(item2,index2) in desc" :key="index2">
                        <h4 class="medium">{{index==index2?item2:''}}</h4>
                    </div>
                </el-carousel-item>
            </el-carousel>
        </div>

        <br><br>
        <div class="container">
            <div class="containerItem">
                <div>
                    <span style="text-align: center;font-size: 30px;font-family:华文琥珀">XINGUAN </span>
                    <span>物资统筹管理</span>
                    <span style="padding-left: 2%;font-weight: 700">@李文涛liwentao</span>
                </div>
                <br>
                <span style="float: left;font-size: 30px;font-weight: 300">总览</span>
                <div class="contents">
                    <el-card class="card" shadow="never">
                        <div class="dataNum numColor">
                            {{waitting}}
                        </div>
                        <span>待处理</span>
                    </el-card>
                    <el-col :span="1"></el-col>
                    <el-card class="card" shadow="never">
                        <div class="dataNum numColor1">
                            {{waitting1}}
                        </div>
                        <span>待办理</span>
                    </el-card>
                    <el-col :span="1"></el-col>
                    <el-card class="card" shadow="never">
                        <div class="dataNum numColor2">
                            {{waitting2}}
                        </div>
                        <span>待处理</span>
                    </el-card>
                </div>
                <br><br>
                <span style="float: left;font-size: 30px;font-weight: 300">我的申请</span>
                <div class="contents">
                    <el-card class="card1" shadow="never">
                        <div class="application">
                            <div style="float: left;width: 50%">
                                <div>
                                    <span style="font-weight: 700;font-size: 20px;">Mini</span><br>
                                    <span style="font-size: 14px;color: #6c757d">申请于{{dateTime}}</span>
                                </div>
                                <div style="width: 100%">
                                    <el-progress :percentage="20"></el-progress>
                                </div>
                            </div>
                            <div style="margin-top: 1%;float: right;padding-right: 2%">
                                <el-button size="medium"  plain round @click="dialogVisible = true"><i class="el-icon-edit-outline"></i> 编辑</el-button>
                                <el-button type="info" size="medium" class="btnColor" round><i class="el-icon-refresh-right"></i> 重新申请</el-button>
                                <el-button type="info" size="medium" class="btnColor" round><i class="el-icon-document"></i> 查看</el-button>
                            </div>
                        </div>
                    </el-card>
                </div>
            </div>
        </div>
<!--        <transition name="el-zoom-in-center">-->
            <el-dialog title="申请表" :visible.sync="dialogVisible">
                <el-form :model="form" v-for="i in 5" :key="i">
                    <el-form-item label="姓名" :label-width="formLabelWidth">
                        <el-input v-model="form.name" autocomplete="off" style="width: 700px;"></el-input>
                    </el-form-item>
                    <el-form-item label="申请内容" :label-width="formLabelWidth">
                        <el-select v-model="form.region" placeholder="请选择活动区域">
                            <el-option label="ceshi231213" value="shanghai"></el-option>
                            <el-option label="ceshi2123" value="beijing" v-for="i in 10" :key="i"></el-option>
                        </el-select>
                    </el-form-item>
                </el-form>
            </el-dialog>
<!--        </transition>-->
    </div>
</template>

<script>
    export default {
        name:'home',
        data(){
          return{
              activeName:'1',
              carousels:["新冠物资管理系统",'统筹管理物资','合理分配物资','配送路径最优选'],
              desc:['网络化管理','基于动态规划','基于动态规划','蚁群算法、遗传算法',],
              value: new Date(),
              loading:true,
              fullscreenLoading:true,
              color:['black'],
              dialogVisible: false,
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
          }
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
        },
        computed:{
            dateTime(){
                var date = new Date();
                var seperator1 = "-";
                var year = date.getFullYear();
                var month = date.getMonth() + 1;
                var strDate = date.getDate();
                if (month >= 1 && month <= 9) {
                    month = "0" + month;
                }
                if (strDate >= 0 && strDate <= 9) {
                    strDate = "0" + strDate;
                }
                return year + seperator1 + month + seperator1 + strDate;
            },
            waitting(){
                return this.format_number(73123);
            },
            waitting1(){
                return this.format_number(31331);
            },
            waitting2(){
                return this.format_number(6313);
            }
        },
        mounted() {
            setTimeout(this.changeLoading,1000);
        }
    }
</script>

<style scoped>
#home{
    min-width: 1000px;
    max-width: 2000px;
}
.el-carousel__item h1{
    color: #475669;
    font-size: 40px;
    line-height: 100px;
    margin: 50px 0 0 0;
}
.el-carousel__item h4{
    color: #475669;
    font-size: 20px;
    margin: 0;
}

.el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
}
    .medium{
        text-align: center;
    }
.container{
    justify-content: center;
    align-items: center;
    display: flex;
}
.containerItem{
    width: 80%;
    display: flex;
    flex-direction: column;
}
.contents{
    margin-top: 1%;
    display: flex;
}
.card{
    min-width: 31%;
    min-height:150px;
    text-align: center;
    align-items: center;
    display: flex;
    justify-content: center;
}
.card1{
    width: 100%;
    min-height:150px;
}
.carousel{
    justify-content: center;
    text-align: center;
    align-items: center;
    display: flex;
}
.dataNum{
    font-size: 40px;
    font-weight: 700;
    margin-top: 10%;
    margin-bottom: 20%;
}
.numColor{
    color: #ef6c57;
}
.numColor1{
    color: #00af91;
}
.numColor2{
    color: #ffd04b;
}
    .application{
        margin-left: 60px;
        margin-top: 20px;
        /*display: flex;*/
    }
    .btnColor{
        background-color: #1a2634;
        color: #fff;
        font-weight: 700;
    }
</style>
