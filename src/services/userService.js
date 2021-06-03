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
                nuName:loginInfo.username,
                nPassword:loginInfo.password
        });
    return response;
}

/**
 * 用户查询
 * @param userInfo
 * @returns {Promise<AxiosResponse<T>>}
 */
export async function  searchUser(userInfo,pageNum) {
    if(pageNum!=''&&pageNum!=null){
        let response = await axios.get(server+"/user/searchUser",{
            params:{
                nId:userInfo.id,
                nuName:userInfo.username,
                nPhone:userInfo.phone,
                ntype:userInfo.ntype,
                nSex:userInfo.sex,
                nDept:userInfo.dept,
                createBy:userInfo.createBy,
                pageNum:pageNum,
                username:localStorage.getItem("name")
            },
            headers: { 'Authorization': token }
        });
        return response;
    }else{
        let response = await axios.get(server+"/user/searchUser",{
            params:{
                nId:userInfo.id,
                nuName:userInfo.username,
                nPhone:userInfo.phone,
                nSex:userInfo.sex,
                nDept:userInfo.dept,
                createBy:userInfo.createBy,
                username:localStorage.getItem("name")
            },
            headers: { 'Authorization': token }
        });
        return response;
    }


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
            nId:userInfo.nid,
            nuName:userInfo.username,
            nPassword:userInfo.password,
            nPhone:userInfo.phone,
            nSex:userInfo.sex,
            ntype:userInfo.ntype,
            nDept:userInfo.dept,
            createBy:userInfo.createBy,
            username:localStorage.getItem("name")
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
            state:userInfo.state,
            avatar:userInfo.avatar,
            username:localStorage.getItem("name")
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
export async function deleteUser(id) {
    let response = await axios.get(server + "/user/delete", {
        params: {
            nId: id,
            username:localStorage.getItem("name")
        },
        headers: {'Authorization': token}
    });
    return response;
}

/**
 * 数据概要
 * @returns {Promise<AxiosResponse<T>>}
 */
export async function dataOverview() {
    let response = await axios.get(server + "/user/dataOverview", {
        headers: {'Authorization': token}
    });
    return response;
}

export  async function getUser(username) {
    let response = await axios.get(server+"/user/getUser",{
        params:{
            username:username
        },
        headers: {'Authorization': token}
    });
    return response;
}

export async  function getAuthority(rname) {
    let response = await axios.get(server+"/user/getAuthority",{
        params:{
            rname:rname
        },
        headers: {'Authorization': token}
    });
    return response;
}

export async function updateRole(uId,rId) {
    let response = await axios.get(server+"/user/updateRole",{
        params:{
            uId:uId,
            rId:rId,
            username:localStorage.getItem("name")
        },
        headers: {'Authorization': token}
    });
    return response;
}

export async function updateAuthority(rname,authorityIds) {
    let response = await axios.get(server+"/user/updateAuthority",{
        params:{
            rname:rname,
            authorityIds:authorityIds,
            username:localStorage.getItem("name")
        },
        headers: {'Authorization': token}
    });
    return response;
}



export async function getRole(rname) {
    let response = await axios.get(server+"/user/getRole",{
        params:{
            rname:rname,
        },
        headers: {'Authorization': token}
    });
    return response;
}


/**
 * 数据
 */
export async function getPercentage() {
    let response = await axios.get(server+"/user/getPercentage",{
        headers: {'Authorization': token}
    });
    return response;
}
