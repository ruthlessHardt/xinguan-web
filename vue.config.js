module.exports = {
    devServer: {
        proxy: {
            //中国疫情网数据
            "/api": {
                target: "https://www.ncovchina.com/data",
                changeOrigin: true,
                pathRewrite: {
                    "^/api": ""
                }
            },
            //百度翻译api
            "/aki": {
                target: "http://api.fanyi.baidu.com/api/trans/vip",
                changeOrigin: true,
                pathRewrite: {
                    "^/aki": ""
                }
            }
        },
        host: "0.0.0.0",
        port: 8083,
        clientLogLevel: "info"
    }
};
