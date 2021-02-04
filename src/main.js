import Vue from 'vue'
import App from './App.vue'
import router from './router'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import 'font-awesome/css/font-awesome.min.css'
import vuex from 'vuex'
import * as echarts from 'echarts';
Vue.use(vuex);
Vue.use(ElementUI);
Vue.config.productionTip = false
import BaiduMap from 'vue-baidu-map';
Vue.use(BaiduMap, {
  /* Visit http://lbsyun.baidu.com/apiconsole/key for details about app key. */
  ak: 'nsNIAFzRFjAGp4hKjU00MvyiAEbZGkWg'
})

import axios from 'axios'
// axios.defaults.baseURL = '/api/api'  //关键代码

new Vue({
  render: h => h(App),
  router,
  vuex
}).$mount('#app')
