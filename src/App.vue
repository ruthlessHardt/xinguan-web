<template>
  <div id="app">
      <login v-if="loginInfo===''"></login>
      <layout v-else-if="loginInfo!==''"></layout>
  </div>
</template>

<script>
import Home from "./layout/Home";
import layout from "./layout/layout.vue"
import login from './views/login/login'
export default {
  name: 'app',
  components: {
    // Home
      layout,
      login
  },
    data(){
      return {
        loginInfo:localStorage.getItem("loginInfos")!=''?'':localStorage.getItem("loginInfos"),
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
