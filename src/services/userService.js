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
        let response = await axios.post(server+"/user/login",{
            params:{
                nuName:loginInfo.username,
                nPassword:loginInfo.password
            },
        });

    return response;
}

/**
 * 用户查询
 * @param userInfo
 * @returns {Promise<AxiosResponse<T>>}
 */
export async function  searchUser(userInfo) {
    let response = await axios.get(server+"/user/searchUser",{
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

/**
 * 获取数量
 * @returns {Promise<AxiosResponse<T>>}
 */
export async function getNum() {
    let response = await axios.get(server+"/user/getNum",{
        headers: { 'Authorization': token }
    });
    return response;
}

/**
 * 新增用户
 * @param userInfo
 * @returns {Promise<AxiosResponse<T>>}
 */
export async function addUser(userInfo) {
    let response = await axios.get(server+"/user/add",{
        params:{
            nuName:userInfo.username,
            nPassword:userInfo.password,
            nPhone:userInfo.phone,
            nSex:userInfo.sex,
            nDept:userInfo.dept,
            createBy:userInfo.createBy,
            avatar:userInfo.avatar
        },
        headers: { 'Authorization': token }
    });
    return response;
}


/**
 * 更新用户
 * @param userInfo
 * @returns {Promise<AxiosResponse<T>>}
 */
export async function updateUser(userInfo) {
    let response = await axios.get(server+"/user/update",{
        params:{
            nId:userInfo.nid,
            nuName:userInfo.username,
            nPassword:userInfo.password,
            nPhone:userInfo.phone,
            nSex:userInfo.sex,
            nDept:userInfo.dept,
            avatar:userInfo.avatar
        },
        headers: { 'Authorization': token }
    });
    return response;
}


/**
 * 删除用户（逻辑删除）
 * @param userInfo
 * @returns {Promise<AxiosResponse<T>>}
 */
export async function deleteUser(userInfo) {
    let response = await axios.get(server + "/user/delete", {
        params: {
            nId: userInfo.nid,
        },
        headers: {'Authorization': token}
    });
    return response;
}
