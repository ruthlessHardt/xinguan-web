import axios from "axios";
import {server} from "./config/config";
import VueCookies from 'vue-cookies'
import Vue from 'vue'
Vue.use(VueCookies)
let token =  VueCookies.get("authorization");
export async function healthReportList(pageNum,health) {
    let response = await axios.get(server+"/health/getList",{
        params:{
            cardId:health.cardId,
            name:health.name,
            tel:health.tel,
            pageNum:pageNum,
        },
        headers:{'authorization':token},
    });
    return response;
}
