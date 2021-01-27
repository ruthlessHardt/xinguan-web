import axios from 'axios'
//api配置参数
//直接查询参数sign
//查询城市参数sign
//全国疫情数据
//国内城市疫情(需要加城市)
//全球疫情数据
import {AppID, serverAddr1, Sign_city} from "./config/config";

//直接获得全国疫情数据api
export async function getEpidemicInfo() {

}

//获取城市疫情数据api
export async function getCityEpidemicInfo(city) {
    var response = await axios.get(serverAddr1,{
        params:{
            appid:AppID,
            sign:Sign_city,
            city_name:city
        }
    });
    return response;
}
