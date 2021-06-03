<template>
    <div id="notFoundComponent">
        <div id ="content">
            <span>404</span>
            <div class="text">
                找不到页面啊，大兄弟
            </div>
        </div>
    </div>
</template>

<style scoped>
#notFoundComponent{
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    background: url("../assets/404_1.jpg");
    background-size: cover;
    width: 100%;
    height: 100vh;
}
    #content>span{
        font-size: 350px;
        font-weight: 700;
    }
.text{
    font-weight: 500;
    font-size: 25px;
}
</style>
