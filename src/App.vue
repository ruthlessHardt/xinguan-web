<template>
  <div id="app">
<!--      <Home/>-->
      <layout></layout>
  </div>
</template>

<script>
import Home from "./layout/Home";
import layout from "./layout/layout.vue"
export default {
  name: 'app',
  components: {
    // Home
      layout
  }
}
</script>

<style>
  *{
    padding: 0;
    margin: 0;
  }
</style>
