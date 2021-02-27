
<template>
    <div id="home" v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">

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
        <div style="height: 70%;width: 100%;padding-top:1%">
            <el-row :gutter="40">
                <el-col :span="7">
                    <el-card style="height: 250px;">
                        <div slot="header" style="text-align: center;font-weight: 700">
                            <span>方案1</span>
                            <el-button style="float: right; padding: 3px 0" type="text">详情</el-button>
                        </div>
                        <div>
                            各街道办事处：
                            　　按照长慈发【2020】2号《关于统筹分配防疫物资的通知》，二道区将长春市慈善会用于社会各界捐赠的新冠疫情防疫物资发放各社区用于一线防疫工作。结合二道区新型冠状病毒感染的肺炎疫情防控工作实际，现制定如下方案：
                            　　一、物资使用范围：
                            　　二道区辖区44个城镇社区和二道区民政局一线人员。
                            　　二、物资分配比例
                            　　二道区共44个城镇社区。每个社区KF94口罩100只，区民政局一线人员共300只。每个社区一次性口罩100只，区民政局一线人员共200只。致中堂中医馆药茶每个社区10盒（5袋／盒），区民政局一线人员共10盒。
                            　　三、物资发放时间：2020年2月27日。
                            　　四、工作要求
                            　　1、各街道按照物资采购清单认真检查、准确核对物资，确保所购物资数量准确、规格型号正确。
                            　　2、各街道收到物资保证第一时间发放社区，合理分配使用，确保及时有效、准确到位、应急有力。
                            　　3、加强社区对物资的规范管理，做细做实各项防范措施，不得用于一切和疫情防控无关的事项。
                            　　4、社区设立物资分发和使用台账，严格控制物资消耗，确保物资使用发挥最大效益。
                            　　5、二道区慈善会会主动协调财政部门、审计部门加强对社区疫情防控物资使用、管理的监督检查。严禁滞留截留、需报冒领。
                            　　6、二道区慈善会按照《慈善法》、社团《章程》以及本次疫情防控相关文件要求，严格执行审核程序，严格把控物资管理发放程序。
                            　　联系电话：0439-81326492   联系人： 李萍
                        </div>
                    </el-card>
                    <br>
                    <el-card style="">
                        <div slot="header" style="text-align: center;font-weight: 700">
                           <span>方案2</span>
                            <el-button style="float: right; padding: 3px 0" type="text">详情</el-button>
                        </div>
                        <div>
                        2月26日，教育部联合国家卫生健康委印发高等学校、中小学校和托幼机构春季学期新冠肺炎疫情防控技术方案（第三版），
                        科学指导学校做好2021年春季学期疫情防控工作。
                        《中小学校春季学期新冠肺炎疫情防控技术方案（第三版）》提出，开学前，学校要重视开学准备、明确责任到人、
                        落实防控机制、明确返校要求、储备防疫物资、整治校园环境、设立处置场所、配备防疫人员。开学后，要实施入校排查
                        </div>
                    </el-card>
                    <br>
                    <el-row :gutter="10">
                        <el-col :span="12">
                            <el-button type="warning" style="width: 100%">更多方案</el-button>
                        </el-col>
                        <el-col :span="12">
                            <el-button type="primary" style="width: 100%" @click="scrollTo2">立即处理</el-button>
                        </el-col>
                    </el-row>
                </el-col>
                <el-col :span="17">
                    <div id="chart" style="width: 1100px;height: 600px;"></div>
                </el-col>
            </el-row>
        </div>
        <br><br><br>
        <div style="height: 30%;width: 100%">
            <div style="font-weight: 700;font-size: 30px;">
                方案解决
            </div>
        </div>
        <div class="container">
            <div class="containerItem">
                <div id="title">
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
                                    <el-progress :percentage="50"></el-progress>
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

            <el-dialog width="1000px" title="申请表" :visible.sync="dialogVisible" :before-close="handleClose" :close-on-click-modal="close">
                <el-form :model="form">
                    <el-row :gutter="20">
                        <el-col :span="10">
                            <el-form-item label="姓名" :label-width="formLabelWidth">
                                <el-input v-model="form.name" autocomplete="off" style="width: 200px;"></el-input>
                            </el-form-item>
                        </el-col>
                        <el-col :span="10">
                            <el-form-item label="需求来源地" :label-width="formLabelWidth">
                                <el-select v-model="form.region" placeholder="请选择需求地">
                                    <el-option label="南京" value="nanjing"></el-option>
                                    <el-option label="无锡" value="wuxi"></el-option>
                                    <el-option label="上海" value="shanghai"></el-option>
                                </el-select>
                            </el-form-item>
                        </el-col>
                    </el-row>
                    <el-row :gutter="20">
                        <el-col :span="10">
                            <el-form-item label="姓名" :label-width="formLabelWidth">
                                <el-input v-model="form.name" autocomplete="off" style="width: 200px;"></el-input>
                            </el-form-item>
                        </el-col>
                        <el-col :span="10">
                            <el-form-item label="需求来源地" :label-width="formLabelWidth">
                                <el-select v-model="form.region" placeholder="请选择需求地">
                                    <el-option label="南京" value="nanjing"></el-option>
                                    <el-option label="无锡" value="wuxi"></el-option>
                                    <el-option label="上海" value="shanghai"></el-option>
                                </el-select>
                            </el-form-item>
                        </el-col>
                    </el-row>
                    <el-row :gutter="20">
                        <el-col :span="10">
                            <el-form-item label="姓名" :label-width="formLabelWidth">
                                <el-input v-model="form.name" autocomplete="off" style="width: 200px;"></el-input>
                            </el-form-item>
                        </el-col>
                        <el-col :span="10">
                            <el-form-item label="需求来源地" :label-width="formLabelWidth">
                                <el-select v-model="form.region" placeholder="请选择需求地">
                                    <el-option label="南京" value="nanjing"></el-option>
                                    <el-option label="无锡" value="wuxi"></el-option>
                                    <el-option label="上海" value="shanghai"></el-option>
                                </el-select>
                            </el-form-item>
                        </el-col>
                    </el-row>
                </el-form>
                <div slot="footer" class="dialog-footer">
                    <el-button @click="dialogVisible = false">取 消</el-button>
                    <el-button type="primary" @click="dialogVisible = false">确 定</el-button>
                </div>
            </el-dialog>
    </div>
</template>

<script>
    import * as echarts from 'echarts';
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
              close:false,
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
            handleClose(done) {
                this.$confirm('确认关闭？')
                    .then(_ => {
                        done();
                    })
                    .catch(_ => {});
            },
            drawChart(){
                var chartDom = document.getElementById('chart');
                var myChart = echarts.init(chartDom);
                var option;
                option = {
                    tooltip: {
                        trigger: 'axis',
                        },
                    xAxis: {
                        type: 'category',
                        boundaryGap: false,
                        data: ['2021-1-2','2021-1-3', '2021-1-3', '2021-1-2', '2021-1-2',
                            '2021-1-2','2021-1-2', '2021-1-3', '2021-1-2', '2021-1-2',
                            '2021-1-2','2021-1-2', '2021-1-2', '2021-1-2', '2021-1-2',
                            '2021-1-2','2021-1-2', '2021-1-2', '2021-1-2', '2021-1-2',
                            '2021-1-2','2021-1-2', '2021-1-2', '2021-1-2', '2021-1-2'],
                        axisLabel: {
                            show: true,
                            textStyle: {
                                color: "#fff"
                             }
                        }
                    },
                    yAxis: {
                        type: 'value',
                        axisLabel: {
                            show: true,
                            textStyle: {
                                color: "#fff"
                            }
                        }
                    },
                    series: [{
                        data: [620, 592, 1901, 21334, 21190, 2130,2592,
                            22901, 1334, 11290, 1130,1592, 1901, 9334, 7290,
                            9930,6592, 6901, 6334, 6290, 6630,592, 901, 1334,
                            1290, 1130,592, 901, 1334, 1290, 1130,592, 901, 1334,
                            1290, 1130,592, 901, 13134, 1290, 11210,592, 901, 1334,
                            1290, 1130,592, 1901, 1334, 12290,592, 901, 1334, 1290,
                            1130, 1320],
                        type: 'line',
                        areaStyle: {}
                    }]
                };
                option && myChart.setOption(option);
            },
            scrollTo2(){
                //页面平滑滚动到指定位置
                document.getElementById('title').scrollIntoView({ block: 'start', behavior: 'smooth' })
            }
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
            this.drawChart();
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
    background:linear-gradient(150deg,#2222,#113222),url("https://s3.jpg.cm/2021/02/28/zDuDS.jpg") fixed;
    background-size:cover;
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
    padding-bottom: 6%;
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
