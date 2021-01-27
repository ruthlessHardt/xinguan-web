<template>
  <div class="navbar">
    <el-card class="box-card">
      <div class="item">
        <i class="el-icon-s-operation" style="font-size: 30px;" @click="changeStatus"></i>
        <el-breadcrumb separator="/">
          <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
          <el-breadcrumb-item>活动管理</el-breadcrumb-item>
        </el-breadcrumb>
        <el-dropdown style="float: right;margin-top: -20px">
          <div class="author">
            <img src="https://p9.qhimg.com/bdm/1000_618_80/t012c3cde7d76dafe78.jpg">
            <i class="el-icon-arrow-down el-icon--right" style="display: none"></i>

          </div>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item>设置</el-dropdown-item>
            <el-dropdown-item divided>注销</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
      </div>
    </el-card>
  </div>
</template>

<script>

export default {
  name: 'Navbar',
  data(){
    return {
     status:false,
    }
  },
  methods: {
    async logout() {

    },
    changeStatus(){
      this.status =! this.status;
      console.log(this.status);
        this.$emit('changeStatus',this.status);
    }
  }
}
</script>

<style  scoped>
/*.navbar{*/
/*  margin-left: -20px;*/
/*  margin-right: -20px;*/
/*  height: 10vh;*/
/*  min-width: 500px;*/
/*}*/
.box-card{
  border-radius: 0 !important;
}
.el-breadcrumb{
  font-size: 16px;
  padding-left: 4%;
  margin-top: -25px;
}
.item{
  display: inline;
}
.item>i{
  cursor: pointer;
}
.item>i:hover{
    color: slategrey;
}
.profile{
  float: right;
}
.el-dropdown-link {
  cursor: pointer;
  color: #409EFF;
}
.el-icon-arrow-down {
  font-size: 12px;
}
.author{
  padding-right: 20px;
}
  .author>img{
    border-radius: 20%;
    width: 45px;
    height: 45px;
  }
</style>
