import axios from "axios";
import {server} from "./config/config";
import VueCookies from "vue-cookies";
let token =  VueCookies.get("authorization");

/**
 * 获取菜单
 * @param roleId
 * @returns {Promise<T>}
 */
export async function menuInfo(userId) {
    let response = await axios.get(server+"/system/menus",{
        params:{
            userId:userId
        }
    });
    return response.data;
}

/**
 * 获取日志列表
 * @param logInfo
 * @returns {Promise<AxiosResponse<T>>}
 */
export async function getLog(logInfo) {
    let response = await axios.get(server+"/system/log",{
        params:{
            code:logInfo.code,
            event:logInfo.code,
            operator:logInfo.operator,
        },
        headers: { 'Authorization': token }
    });
    return response;
}

/**
 * 获取数据概要
 * @returns {Promise<AxiosResponse<T>>}
 */
export async function getNums() {
    let response = await axios.get(server+"/system/getNums",{
        headers: { 'Authorization': token }
    });
    return response;
}

/**
 * 一周日志数据
 * @returns {Promise<AxiosResponse<T>>}
 * @constructor
 */
export async function weekDayNum() {
    let response = await axios.get(server+"/system/WeekDayNum",{
        headers: { 'Authorization': token }
    });
    return response;
}


