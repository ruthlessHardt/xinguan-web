<template>
  <div id="app">
<!--      <login v-if="loginInfo===null"></login>-->
<!--      <layout v-else-if="loginInfo!==null"></layout>-->
      <router-view></router-view>
  </div>
</template>

<script>
import layout from "./layout/layout.vue"
import login from './views/login/login'
export default {
  name: 'app',
  components: {
      layout,
      login
  },
    data(){
      return {
        // loginInfo:localStorage.getItem("loginInfos"),
          // login:true,
      }
    },
}
</script>

<style>
  *{
    padding: 0;
    margin: 0;
  }
</style>
