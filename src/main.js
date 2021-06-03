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

import cookies from 'vue-cookies'
Vue.use(cookies)

//注册
import Print from 'vue-print-nb'
Vue.use(Print);

/*图片预览*/
import Viewer from 'v-viewer'
import 'viewerjs/dist/viewer.css'
Vue.use(Viewer)
Viewer.setDefaults({
  Options: { 'inline': true, 'button': true, 'navbar': true, 'title': true, 'toolbar': true, 'tooltip': true, 'movable': true, 'zoomable': true, 'rotatable': true, 'scalable': true, 'transition': true, 'fullscreen': true, 'keyboard': true, 'url': 'data-source' }
})

new Vue({
  render: h => h(App),
  router,
  vuex,
  cookies
}).$mount('#app')
