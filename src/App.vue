<template>
  <div id="app">
<!--      <login v-if="loginInfo===null"></login>-->
<!--      <layout v-else-if="loginInfo!==null"></layout>-->
      <router-view v-if="isRouterAlive"></router-view>
  </div>
</template>

<script>
import layout from "./layout/layout.vue"
import login from './views/login/login'
export default {
  name: 'app',
    provide(){
      return {
          reload:this.reload
      }
    },
  components: {
      layout,
      login
  },
    data(){
      return {
          isRouterAlive:true,

        // loginInfo:localStorage.getItem("loginInfos"),
          // login:true,
      }
    },

    methods:{
      reload(){
          this.isRouterAlive = false;
          this.$nextTick(function (){
                this.isRouterAlive = true;
          })
      },
    }
}
</script>

<style>
  *{
    padding: 0;
    margin: 0;
  }
</style>
