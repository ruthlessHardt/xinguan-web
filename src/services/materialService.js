import axios from "axios";
import {server} from "./config/config";
import VueCookies from "vue-cookies";
let token =  VueCookies.get("authorization");

export async function recordsData() {
        let response = await  axios.get(server+"/material/recordData",{
            headers: { 'Authorization': token }
        });
        return response;
}
export async  function materialRecord(record,pageNum) {
    let response = await  axios.get(server+"/material/materialRecord",{
        params:{
            id:record.id,
            recordId:record.recordId,
            infoId:record.infoId,
            materialCategory:record.materialCategory,
            fromId:record.fromId,
            materialStatus:record.materialStatus,
            operator:record.operator,
            materialSupportor:record.materialSupportor,
            createTime:record.createTime,
            pageNum:pageNum,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}

/*获取物资类别*/
export async function materialType() {
    let response = await axios.get(server+"/material/materialType",{
        headers: { 'Authorization': token }
    });
    return response;
}

/*获取物资资料*/
export async function getInfo(materialInfoSearch,pageNum) {
    let response = await axios.get(server+"/material/getInfo",{
        params:{
            materialId:materialInfoSearch.infoId,
            pageNum:pageNum,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}


/*获取全部物资资料*/
export async function getAllInfo() {
    let response = await axios.get(server+"/material/getAllInfo",{
        headers: { 'Authorization': token }
    });
    return response;
}



/*新增入库记录*/
export  async function addRecords(record) {
    let response = await axios.get(server+"/material/addRecords",{
        params:{
            recordId:record.recordId,
            infoId:record.infoId,
            materialCategory:record.materialCategory,
            num:record.num,
            fromId:record.fromId,
            operator:record.operator,
            tel:record.tel,
            materialSupportor:record.materialSupportor,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}


/*新增物资来源*/
export async function addFroms(froms) {
    let response = await axios.get(server+"/material/addFroms",{
        params:{
            fromAreaProvince:froms.fromAreaProvince,
            fromAreaCity:froms.fromAreaCity,
            fromAreaCounty:froms.fromAreaCounty,
            fromAreaAddress:froms.fromAreaAddress,
            contacts:froms.contacts,
            tel:froms.tel,
            fromDesc:froms.fromDesc,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}

export async  function updateMaterialInfo(materialInfo) {
    let response = await axios.get(server+"/material/updateMaterialInfo",{
        params:{
            materialId:materialInfo.materialId,
            materialName:materialInfo.materialName,
            materialTypeId:materialInfo.materialTypeId,
            materialSpecifications:materialInfo.materialSpecifications,
            materialUnit:materialInfo.materialUnit,
            materialDesc:materialInfo.materialDesc,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}


/*获取物资资料列表*/
export async function getInfoTable(materialInfo,pageNum) {
    let response = await axios.get(server+"/material/getInfo",{
        params:{
            materialId:materialInfo.materialId,
            materialCode:materialInfo.materialCode,
            materialName:materialInfo.materialName,
            materialTypeId:materialInfo.materialTypeId,
            pageNum:pageNum,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}


export async  function deleteInfo(materialId) {
    let response = await axios.get(server+"/material/deleteInfo",{
        params:{
            materialId:materialId,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}

export async function addInfo(materialInfo) {
    let response = await axios.get(server+"/material/addInfo",{
        params:{
            materialCode:materialInfo.materialCode,
            materialName:materialInfo.materialName,
            materialImg:materialInfo.materialImg,
            materialTypeId:materialInfo.materialTypeId,
            materialSpecifications:materialInfo.materialSpecifications,
            materialUnit:materialInfo.materialUnit,
            materialDesc:materialInfo.materialDesc,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}

export async function getInfoNums() {
    let response = await axios.get(server+"/material/getInfoNums",{
        headers: { 'Authorization': token }
    });
    return response;
}

export async function getGrantRecords(pageNum,grantRecord) {
    let response = await axios.get(server+"/material/getGrantRecords",{
        params:{
            recordId:grantRecord.recordId,
            grantCategory:grantRecord.grantCategory,
            fromId:grantRecord.fromId,
            toId:grantRecord.toId,
            level:grantRecord.level,
            materialStatus:grantRecord.materialStatus,
            pageNum:pageNum,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}

export async function getGrantNums() {
    let response = await axios.get(server+"/material/getGrantNums",{
        headers: { 'Authorization': token }
    });
    return response;
}
export  async  function updateGrantRecord(form) {
    let response = await axios.get(server+"/material/updateGrantRecord",{
        params:{
            id:form.id,
            grantCategory:form.grantCategory,
            num:form.num,
            tel:form.tel,
            materialSupportor: form.materialSupportor,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}

export async function deleteRecord(id) {
    let response = await axios.get(server+"/material/deleteRecord",{
        params:{
            id:id,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}


export async function getFromByInfoId(infoId) {
    let response = await axios.get(server+"/material/getFromByInfoId",{
        params:{
            infoId:infoId,
        },
        headers: { 'Authorization': token }
    });
    return response;
}

export async function addGrantRecord(grantRecord) {
    let response = await axios.get(server+"/material/addGrantRecord",{
        params:{
            infoId:grantRecord.infoId,
            toId:grantRecord.toId,
            grantCategory:grantRecord.grantCategory,
            num:grantRecord.num,
            fromId:grantRecord.fromId,
            level:grantRecord.level,
            operator:grantRecord.operator,
            tel:grantRecord.tel,
            materialSupportor:grantRecord.materialSupportor,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}

//先添加去向地址记录
export async  function addToInfo(toInfo) {
    let response = await axios.get(server+"/material/addToInfo",{
        params:{
            toAreaProvince:toInfo.toAreaProvince,
            toAreaCity:toInfo.toAreaCity,
            toAreaCounty:toInfo.toAreaCounty,
            toAreaAddress:toInfo.toAreaAddress,
            organization:toInfo.organization,
            contacts:toInfo.contacts,
            tel:toInfo.tel,
            toDesc:toInfo.toDesc,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}



//打印excel的数据
export async  function materialRecord1() {
    let response = await axios.get(server+"/material/materialRecord1",{
        headers: { 'Authorization': token }
    });
    return response;
}


//打印excel的数据
export async  function getGrantRecords1() {
    let response = await axios.get(server+"/material/getGrantRecords1",{
        headers: { 'Authorization': token }
    });
    return response;
}

//打印excel的数据
export async function getInfo1() {
    let response = await axios.get(server+"/material/getInfo1",{
        headers: { 'Authorization': token }
    });
    return response;
}

//审批
export async function approveIn(xgStorageRecord) {
    let response = await axios.get(server+"/material/approveIn",{
        params:{
            recordId:xgStorageRecord.recordId,
            infoId:xgStorageRecord.infoId,
            num:xgStorageRecord.num,
            fromId:xgStorageRecord.fromId,
            materialStatus:xgStorageRecord.materialStatus,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}

//入库驳回
export async function disApproveIn(xgStorageRecord) {
    let response = await axios.get(server+"/material/disApproveIn",{
        params:{
            recordId:xgStorageRecord.recordId,
            infoId:xgStorageRecord.infoId,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}


//发放通过
export async function approveOut(XgGrantRecord) {
    let response = await axios.get(server+"/material/approveOut",{
        params:{
            recordId:XgGrantRecord.recordId,
            infoId:XgGrantRecord.infoId,
            num:XgGrantRecord.num,
            fromId:XgGrantRecord.fromId,
            materialStatus:XgGrantRecord.materialStatus,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}

//发放驳回
export async function disApproveOut(XgGrantRecord) {
    let response = await axios.get(server+"/material/disApproveOut",{
        params:{
            recordId:XgGrantRecord.recordId,
            infoId:XgGrantRecord.infoId,
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}


//库存各个数量
export async function stock() {
    let response = await axios.get(server+"/material/stock",{
        params:{
            username:localStorage.getItem("name")
        },
        headers: { 'Authorization': token }
    });
    return response;
}


//首页数据

export async function homeData() {
    let response = await axios.get(server+"/material/homeData",{
        headers: { 'Authorization': token }
    });
    return response;
}
