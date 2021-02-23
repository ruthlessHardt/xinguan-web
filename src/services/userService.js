import axios from "axios";
import {server} from "./config/config"
import Vue from 'vue'
import VueCookies from 'vue-cookies'
Vue.use(VueCookies)
let token =  VueCookies.get("authorization");
/**
 * 登录
 * @param loginInfo
 * @returns {Promise<AxiosResponse<T>>}
 * @constructor
 */
export async function Userlogin(loginInfo) {
    var response = await axios.get(server+"/user/login",{
        params:{
            nuName:loginInfo.username,
            nPassword:loginInfo.password
        }
    });
    return response;
}

/**
 * 用户查询
 * @param userInfo
 * @returns {Promise<AxiosResponse<T>>}
 */
export async function  searchUser(userInfo) {
    var response = await axios.get(server+"/user/searchUser",{
        params:{
            nId:userInfo.id,
            nuName:userInfo.username,
            nPhone:userInfo.phone,
            nSex:userInfo.sex,
            nDept:userInfo.dept,
            createBy:userInfo.createBy
        },
        headers: { 'Authorization': token }
    });
    return response;
}
