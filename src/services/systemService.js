import axios from "axios";
import {server} from "./config/config";
export async function menuInfo(roleId) {
    let response = await axios.get(server+"/system/menus",{
        params:{
            roleId:roleId
        }
    });
    return response.data;
}
