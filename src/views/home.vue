
<template>
    <div id="home" v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <div style="width: 100%;height: 100% ;padding-top: 5%">
            <el-row :gutter="20">
                <el-col :span="15">
                    <el-card class="card1" shadow="never">
                        <div v-if="ntype=='管理员'" style="width: auto;height: 450px;background: url('https://ouch-cdn2.icons8.com/Owhy0sc_FHS54M6RFCE1yQ-uIS3hMi5XE7110b96pxw/rs:fit:1448:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMTM2/LzgwZmYyN2EyLTg2/OWYtNGEzNi04YTBj/LTZiYzIyNzc4YmJh/Ny5wbmc.png') center center ;background-size: contain;background-repeat: no-repeat;"></div>
                        <div v-if="ntype=='普通用户'" style="width: auto;height: 450px;background: url('https://ouch-cdn2.icons8.com/Pv2rU-RL6SrJ_6eYQl7VlXZWvPuEZ0T-USPmxS-KH5k/rs:fit:1158:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNDkz/L2Y5OTc0ZWVmLTdm/YzYtNDMyNC1iNDgx/LTk3OTQzOTVhNGY4/My5wbmc.png') center center;background-size: contain;background-repeat: no-repeat;"></div>
                        <div v-if="ntype=='审核员'" style="width: auto;height: 450px;background: url('https://ouch-cdn2.icons8.com/F1fytH14n_QWKCrEmzpniHG7XmsbqCOLadmpLRHHNhA/rs:fit:1053:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjIw/Lzk3YWM0MDE4LTI2/NDEtNGQxYi1iNzZh/LTE2MDA5ODE5ZWUz/Ni5wbmc.png') center center;background-size: contain;background-repeat: no-repeat;"></div>
                        <div v-if="ntype=='单位用户'" style="width: auto;height: 450px;background: url('https://ouch-cdn2.icons8.com/i2wiC-jpdlbw-YKtOgizLUNii8Bu-UD-advXwvhXFsk/rs:fit:748:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjQ2/LzYyMzE4MTUyLTdj/MTctNGFkZi04ZDIz/LWRiZmNiZmE3NTA3/ZS5wbmc.png') center center;background-size: contain;background-repeat: no-repeat;"></div>
<!--                        <img  src="https://ouch-cdn2.icons8.com/Owhy0sc_FHS54M6RFCE1yQ-uIS3hMi5XE7110b96pxw/rs:fit:1448:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMTM2/LzgwZmYyN2EyLTg2/OWYtNGEzNi04YTBj/LTZiYzIyNzc4YmJh/Ny5wbmc.png" alt="">-->
                        <div style="text-align: center;font-size: 30px;font-family:华文琥珀">
                            XINGUAN
                        </div>
                        <br>
                        <div>
                            <el-divider content-position="center">   <span style="font-size: 25px">新冠疫情物资管理系统</span></el-divider>

                        </div>
<!--                        <img src="https://s3.jpg.cm/2021/04/06/j0q2E.png" alt="">-->
                    </el-card>
                </el-col>
                <el-col :span="9">
                    <el-row>
                        <el-card class="card2">
<!--                            <h2>项目名</h2>-->
                            <br>
                            <div style="font-size: 20px;text-align: center">
                                <i class="el-icon-s-promotion fa-2x"></i>
                                <span style="padding-left:5%;font-size: 25px">新冠疫情物资管理系统</span>
                            </div>
                            <br>
<!--                            <div style="width: auto;height: 300px;background-image: url('https://s3.jpg.cm/2021/04/06/j0q2E.png');background-size: cover"></div>-->
<!--                                 src="https://ouch-cdn2.icons8.com/Owhy0sc_FHS54M6RFCE1yQ-uIS3hMi5XE7110b96pxw/rs:fit:1448:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMTM2/LzgwZmYyN2EyLTg2/OWYtNGEzNi04YTBj/LTZiYzIyNzc4YmJh/Ny5wbmc.png" alt="">-->
<!--                            <div style="text-align: center;font-size: 30px;font-family:华文琥珀">-->
<!--                                XINGUAN-->
<!--                            </div>-->
                        </el-card>
                    </el-row>
                    <br>
                    <el-row>
                        <el-card class="card2">
<!--                            <h2>时钟</h2>-->
<!--                            <br>-->
                            <div style="text-align: center">
                                {{new Date}}
                                <div style="font-size: 25px;color: #00af91">
                                    <br>
                                    {{date}}
                                </div>
                            </div>

                        </el-card>
                    </el-row>
                    <br><br><br>
                    <el-row>
                        <div style="width: auto;height:170px;background: url('https://ouch-cdn2.icons8.com/T7YZ_wMVyx_mgfSuh8LSciWEFUEKcYwKO1onpOzOc3s/rs:fit:2256:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNDQx/L2Q3YjZkODU0LTNl/ZjUtNGFkOS04MTI2/LTIwYTdlYTBlZWM0/MC5wbmc.png') center center;background-size: contain;background-repeat: no-repeat"></div>
<!--                        <el-card class="card2">-->
<!--&lt;!&ndash;                            <h2>作者</h2>&ndash;&gt;-->
<!--                            <br>-->
<!--                            <div style="font-size: 25px;color: #00af91">-->
<!--&lt;!&ndash;                                李文涛&ndash;&gt;-->
<!--                            </div>-->
<!--                            <br>-->
<!--&lt;!&ndash;                            @RuthlessHardt@Outlook.com&ndash;&gt;-->

<!--                        </el-card>-->
                    </el-row>
                </el-col>
            </el-row>
            <el-row :gutter="20">
                <el-col :span="24">
                   <div style="display: flex;justify-content: center;text-align: center;align-content: center;
                   align-items: center;padding-top: 7%">
                       <el-button type="primary" icon="el-icon-arrow-down" circle @click="scrollTo2"></el-button>
                   </div>
                    <el-divider></el-divider>
                </el-col>
            </el-row>
        </div>
<!--        <br><br><br>-->
        <div style="height: 6%;width: 100%;">
            <div style="font-weight: 700;font-size: 30px;">
<!--                方案解决-->
            </div>
            <div id="title">
                <span style="text-align: center;font-size: 30px;font-family:华文琥珀">XINGUAN </span>
                <span>物资统筹管理</span>
<!--                <span style="padding-left: 2%;font-weight: 700">@李文涛liwentao</span>-->
            </div>
        </div>
        <br>
        <!--轮播图-->
        <div class="carousel">
            <el-carousel :interval="3000" type="card"  height="250px" style="width: 90%;">
                <el-carousel-item v-for="(item,index) in carousels" :key="index">
                    <h1 class="medium">{{item}}</h1>
                    <div v-for="(item2,index2) in desc" :key="index2">
                        <h4 class="medium">{{index==index2?item2:''}}</h4>
                    </div>
                </el-carousel-item>
            </el-carousel>
        </div>
        <div class="container">
            <div class="containerItem">
<!--                <div id="title">-->
<!--                    <span style="text-align: center;font-size: 30px;font-family:华文琥珀">XINGUAN </span>-->
<!--                    <span>物资统筹管理</span>-->
<!--                    <span style="padding-left: 2%;font-weight: 700">@李文涛liwentao</span>-->
<!--                </div>-->
                <br>
                <span style="float: left;font-size: 30px;font-weight: 300" v-show="ntype=='单位用户'">总览</span>
                <div class="contents" v-show="ntype=='单位用户'">
                    <el-tooltip class="item" effect="dark" content="7天内健康上报数" placement="top-end">
                    <el-card class="card">
                        <div class="dataNum numColor">
                            {{waitting3}}
                        </div>
                        <span>近期健康上报</span><br>
                        <el-link type="primary"  @click="goto('/health')">查看详情</el-link>
                    </el-card>
                    </el-tooltip>
                    <el-col :span="1"></el-col>
                    <el-tooltip class="item" effect="dark" content="库存为0项数" placement="top-end">
                    <el-card class="card" >
                        <div class="dataNum numColor1">
                            {{waitting4}}
                        </div>
                        <span>库存短缺</span><br>
                        <el-link type="primary"  @click="goto('/inventoryList')">查看详情</el-link>
                    </el-card>
                    </el-tooltip>
                    <el-col :span="1"></el-col>
                    <el-tooltip class="item" effect="dark" content="库存小于100项数" placement="top-end">
                    <el-card class="card" >
                        <div class="dataNum numColor2">
                            {{waitting5}}
                        </div>
                        <span>库存不足</span><br>
                        <el-link type="primary"  @click="goto('/inventoryList')">查看详情</el-link>
                    </el-card>
                    </el-tooltip>
                </div>
                <br><br>
                <span style="float: left;font-size: 30px;font-weight: 300" v-show="ntype=='管理员'||ntype=='审核员'">总览</span>
                <div class="contents" v-show="ntype=='管理员'||ntype=='审核员'">
                    <el-card class="card">
                        <div class="dataNum numColor">
                            {{waitting}}
                        </div>
                        <span>入库待审批</span>
                        <br>
                        <el-link type="primary" @click="goto('/materialIn')">去审批</el-link>
                    </el-card>
                    <el-col :span="1"></el-col>
                    <el-card class="card">
                        <div class="dataNum numColor1">
                            {{waitting1}}
                        </div>
                        <span>发放待审批</span>
                        <br>
                        <el-link type="primary"  @click="goto('/materialDistribution')">去审批</el-link>
                    </el-card>
                    <el-col :span="1"></el-col>
                    <el-card class="card">
                        <div class="dataNum numColor2">
                            {{waitting2}}
                        </div>
                        <span>库存总数</span>
                        <br>
                        <el-link type="primary"  @click="goto('/inventoryList')">查看详情</el-link>
                    </el-card>
                </div>
                <br><br>
<!--                <span style="float: left;font-size: 30px;font-weight: 300" v-show="ntype=='普通用户'">我的申请</span>-->
<!--                <div class="contents" v-show="ntype=='普通用户'">-->
<!--                    <el-card class="card1">-->
<!--                        <div class="application">-->
<!--                            <div style="float: left;width: 50%">-->
<!--                                <div>-->
<!--                                    <span style="font-weight: 700;font-size: 20px;">Mini</span><br>-->
<!--                                    <span style="font-size: 14px;color: #6c757d">申请于{{dateTime}}</span>-->
<!--                                </div>-->
<!--                                <div style="width: 100%">-->
<!--                                    <el-progress :percentage="50"></el-progress>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                            <div style="margin-top: 1%;float: right;padding-right: 2%">-->
<!--                                <el-button size="medium"  plain round @click="dialogVisible = true"><i class="el-icon-edit-outline"></i> 编辑</el-button>-->
<!--                                <el-button type="info" size="medium" class="btnColor" round><i class="el-icon-refresh-right"></i> 重新申请</el-button>-->
<!--                                <el-button type="info" size="medium" class="btnColor" round><i class="el-icon-document"></i> 查看</el-button>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </el-card>-->
<!--                </div>-->
                <div style="min-height: 200px" v-show="ntype!='普通用户'"></div>
                <div style="min-height: 420px;cursor: pointer" v-show="ntype=='普通用户'">
                    <el-row>
                        <div style="float: right"  v-if="user.username=='lsp'">
                            lsp吗
                            <el-switch
                                    style="display: block"
                                    v-model="value1"
                                    active-color="rgb(241, 196, 15)"
                                    inactive-color="rgb(44, 62, 80)">
                            </el-switch>
                        </div>
                    </el-row>
                    <br><br>
                    <el-row :gutter="20">
                        <div  v-if="!value1">
                            <el-col :span="6">
                                <el-card class="card4" @click.native="goto('/grantMaterial')">
                                    <span>物资申请</span>
                                </el-card>
                                <br>
                            </el-col>
                        </div>
                        <div v-for="i in 12" v-if="value1">
                            <el-col :span="6">
                                <el-card class="card3" @click.native="goto('/grantMaterial')">
                                    <span v-if="i%3==2">你个 lsp</span>
                                </el-card>
                                <br>
                            </el-col>
                        </div>
<!--                        <div v-for="i in 8" v-if="user.username=='lsp'">-->
<!--                            <el-col :span="6">-->
<!--                                <el-card class="card3" @click.native="goto('/grantMaterial')">-->
<!--                                    <span v-if="i%3==2">你个 lsp</span>-->
<!--                                </el-card>-->
<!--                                <br>-->
<!--                            </el-col>-->
<!--                        </div>-->
                    </el-row>
                </div>
                <br><br>
            </div>
        </div>

    </div>
</template>

<script>

    import {homeData} from "../services/materialService";

    export default {
        name:'home',
        data(){
          return{
              user:{
                  username:localStorage.getItem("name")
              },
              ntype:localStorage.getItem("ntype"),
              date:'',
              activeName:'1',
              carousels:["新冠疫情物资管理系统",'全国疫情监控','健康上报'],
              desc:['网络化管理','实时疫情数据','人员健康监控',],
              value: new Date(),
              value1:false,
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
              close:false,
              dataNum:{
                  inStorageApprovingNum:'',
                  grantApprovingNum:'',
                  stockNum:'',
                  recentHealthData:'',
                  stockShortageList:'',
                  stockWarning:''
              }
          }
        },
        created(){
            let aDate = new Date();
            this.date = aDate.getFullYear()+"年 "+(aDate.getMonth()+1)+"月 "+aDate.getDate()
                +"日  "+aDate.getHours()+":"+aDate.getMinutes()+":"+aDate.getSeconds();
        },
        methods:{
            getHomeData(){
                homeData().then(res=>{
                    // console.log(res.data);
                    this.dataNum.inStorageApprovingNum = res.data.data[0];
                    this.dataNum.grantApprovingNum = res.data.data[1];
                    this.dataNum.stockNum = res.data.data[2];
                    this.dataNum.recentHealthData = res.data.data[3];
                    this.dataNum.stockShortageList = res.data.data[4];
                    this.dataNum.stockWarning = res.data.data[5];
                });
            },
            changeDate(){
                let aDate = new Date();
                this.date = aDate.getFullYear()+"年 "+(aDate.getMonth()+1)+"月 "+aDate.getDate()
                    +"日  "+aDate.getHours()+":"+aDate.getMinutes()+":"+aDate.getSeconds();
            },
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
            handleClose(done) {
                this.$confirm('确认关闭？')
                    .then(_ => {
                        done();
                    })
                    .catch(_ => {});
            },
            scrollTo2(){
                //页面平滑滚动到指定位置
                document.getElementById('title').scrollIntoView({ block: 'start', behavior: 'smooth' })
            },
            goto(url){
                this.$router.push(url)
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
                return this.format_number(this.dataNum.inStorageApprovingNum);
            },
            waitting1(){
                return this.format_number(this.dataNum.grantApprovingNum);
            },
            waitting2(){
                return this.format_number(this.dataNum.stockNum);
            },
            waitting3(){
                return this.format_number(this.dataNum.recentHealthData);
            },
            waitting4(){
                return this.format_number(this.dataNum.stockShortageList.length);
            },
            waitting5(){
                return this.format_number(this.dataNum.stockWarning.length);
            }
        },
        mounted() {
            this.getHomeData();
            setTimeout(this.changeLoading,1000);
            setInterval(this.changeDate,1000);
        }
    }
</script>

<style scoped>
#home{
    min-width: 1000px;
    max-width: 2000px;
    height: 100vh;
    margin: -20px;
    padding: 2.2%  3% 0% 3%;
    /*background: #d6e6f2;*/
    background: #fff;
    /*background: linear-gradient(120deg,#a6e3e9,#d4a5a5);*/
    /*background: url("https://s3.jpg.cm/2021/04/06/j0q2E.png") fixed;*/
    /*background:url("https://s3.jpg.cm/2021/04/06/jzZVX.png") fixed;*/
    /*background:linear-gradient(150deg,#2222,#113222),url("https://s3.jpg.cm/2021/04/06/jzy5C.png") fixed;*/
    background-size: auto;
    transition: 3000ms;
    scroll-behavior:smooth;
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
    padding-bottom: 0%;
}
.containerItem{
    width: 80%;
    display: flex;
    flex-direction: column;
}
.contents{
    margin-top: 2%;
    /*margin-bottom: 10%;*/
    display: flex;
}
.card{
    min-width: 31%;
    min-height:150px;
    text-align: center;
    align-items: center;
    display: flex;
    justify-content: center;
    border-radius: 10px;
    border: none;
    /*background:rgba(0,0,0,0.1);*/
}
.card1{
    text-align: center;
     width: 100%;
     min-height:150px;
     border-radius: 20px;
     /*background:rgba(0,0,0,0.1);*/
     background: #fff;
     border: none;
     /*box-shadow: -30px 40px 40px rgba(0,0,0,0.1);*/
 }

.card2{
    text-align: center;
    width: 100%;
    min-height:150px;
    border-radius: 10px;
    background:rgba(0,0,0,0.1);
    border: none;
}

.card3{
    /*width: 400px;*/
    text-align: center;
    justify-content: center;
    align-items: center;
    display: flex;
    border: none;
    border-radius: 10px;
    min-height: 200px;
    /*background: #f8f5f1;*/
    background:linear-gradient(120deg,rgba(189, 195, 199,0.6),rgba(149, 165, 166,0.6)), url("https://s3.jpg.cm/2021/05/15/MYLsT.jpg") no-repeat 10px 230px fixed;
    background-size:cover;
    transition: 3s;
    cursor: pointer;
    /*box-shadow: 10px 10px 5px rgba(0,0,0,0.5);*/
}
.card3 span{
    font-size: 30px;
    font-weight: 700;
    padding: 10% 20px;
    color: white;
    /*border-bottom: 15px solid rgba(211, 84, 0,1);*/
    transition: 1s;
}

.card3:hover span{
    font-size: 30px;
    font-weight: 700;
    padding: 10% 20px;
    color: white;
    border-bottom-left-radius:50px;
    border-bottom: 15px solid rgba(211, 84, 0,1);
}

.card3:hover{
    /*width: 1350px;*/
    background:linear-gradient(120deg,rgba(189, 195, 199,0.2),rgba(149, 165, 166,0.2)), url("https://s3.jpg.cm/2021/05/15/MYLsT.jpg") no-repeat 50px 100px fixed;
    box-shadow: 20px 20px 20px rgba(0,0,0,0.2);
    background-size:contain;
}

.card4{
    /*width: 400px;*/
    text-align: center;
    justify-content: center;
    align-items: center;
    display: flex;
    border: none;
    border-radius: 10px;
    min-height: 200px;
    /*background: #f8f5f1;*/
    background:linear-gradient(120deg,rgba(189, 195, 199,0.2),rgba(149, 165, 166,0.6)), url("https://s3.jpg.cm/2021/05/15/MYVEU.jpg") no-repeat 10px 100px fixed;
    background-size:cover;
    transition: 3s;
    cursor: pointer;
    /*box-shadow: 10px 10px 5px rgba(0,0,0,0.5);*/
}
.card4 span{
    font-size: 30px;
    font-weight: 700;
    padding: 10% 20px;
    color: white;
    /*border-bottom: 15px solid rgba(211, 84, 0,1);*/
    transition: 1s;
}

.card4:hover span{
    font-size: 30px;
    font-weight: 700;
    padding: 10% 20px;
    color: white;
    border-bottom-left-radius:50px;
    border-bottom: 15px solid rgba(211, 84, 0,1);
}

.card4:hover{
    /*width: 1350px;*/
    background:linear-gradient(120deg,rgba(189, 195, 199,0.2),rgba(149, 165, 166,0.2)), url("https://s3.jpg.cm/2021/05/15/MYVEU.jpg") no-repeat 30px 150px fixed;
    box-shadow: 20px 20px 20px rgba(0,0,0,0.2);
    background-size:cover;
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
