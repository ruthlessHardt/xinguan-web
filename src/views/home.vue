<template>
    <div id="home" v-loading="loading" fullscreen
         element-loading-background="rgba(0, 0, 0, 0.8)"
         v-loading.fullscreen.lock="fullscreenLoading">
        <div>
            <span style="text-align: center;font-size: 30px;font-family:华文琥珀">
            XINGUAN
            </span>
            <span>统筹管理物资</span>
        </div>
        <!--轮播图-->
        <el-carousel :interval="4000"  height="250px">
            <el-carousel-item v-for="(item,index) in carousels" :key="index">
                <h1 class="medium">{{item}}</h1>
                <div v-for="(item2,index2) in desc" :key="index2">
                    <h4 class="medium">{{index==index2?item2:''}}</h4>
                </div>
            </el-carousel-item>
        </el-carousel>
        <!--  -->
        <br>
        <el-row :gutter="20">
            <el-col :span="8">
                <el-calendar v-model="value"></el-calendar>
            </el-col>
            <el-col :span="7" style="background-color: #a3d2ca">
                <el-card>
                    <el-collapse  v-model="activeName" accordion>
                        <el-collapse-item title="一致性 Consistency" name="1">
                            <div>与现实生活一致：与现实生活的流程、逻辑保持一致，遵循用户习惯的语言和概念；</div>
                            <div>在界面中一致：所有的元素和结构需保持一致，比如：设计样式、图标和文本、元素的位置等。</div>
                        </el-collapse-item>
                        <el-collapse-item title="反馈 Feedback" name="2">
                            <div>控制反馈：通过界面样式和交互动效让用户可以清晰的感知自己的操作；</div>
                            <div>页面反馈：操作后，通过页面元素的变化清晰地展现当前状态。</div>
                        </el-collapse-item>
                        <el-collapse-item title="效率 Efficiency" name="3">
                            <div>简化流程：设计简洁直观的操作流程；</div>
                            <div>清晰明确：语言表达清晰且表意明确，让用户快速理解进而作出决策；</div>
                            <div>帮助用户识别：界面简单直白，让用户快速识别而非回忆，减少用户记忆负担。</div>
                        </el-collapse-item>
                        <el-collapse-item title="可控 Controllability" name="4">
                            <div>用户决策：根据场景可给予用户操作建议或安全提示，但不能代替用户进行决策；</div>
                            <div>结果可控：用户可以自由的进行操作，包括撤销、回退和终止当前操作等。</div>
                        </el-collapse-item>
                    </el-collapse>
                </el-card>
            </el-col>
            <el-col :span="8">
                <el-card>
                    <div id="myChart1" style="width: 500px;height: 500px;"></div>
                </el-card>
            </el-col>
        </el-row>
        <br>
        <el-row :gutter="20">
            <el-col :span="10">
                <div id="myChart2" style="width:100%;height:850px;"></div>
            </el-col>
        </el-row>




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
          }
        },
        methods:{
            changeLoading(){
                this.loading = false;
            },
            drawBMap(){
                // 百度地图API功能
                var map = new BMap.Map("myChart2");    // 创建Map实例
                var point = new BMap.Point(118.804041,32.063021);
                map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
                //IP获取定位
                function myFun(result){
                    var cityName = result.name;
                    map.setCenter(cityName);
                    map.centerAndZoom(cityName, 6);
                }
                var myCity = new BMap.LocalCity();
                myCity.get(myFun);
            },
        },
        mounted() {
            setTimeout(this.changeLoading,1000);
            this.drawBMap();
        }
    }
</script>

<style scoped>
#home{

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
.diver{
    height: 10px;
}
</style>
