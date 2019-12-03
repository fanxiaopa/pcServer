//导入核心模块
const express=require("express")
const cors = require("cors");
const session = require("express-session"); 
const bodyParser=require('body-parser')
//导入自定义文件
var router=require("./routes/login.js")
var getImg=require("./routes/getImg.js")
var articles=require("./routes/articles.js")

var app=express();
//配置跨域模块
app.use(cors({
    //允许程序列表
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true//每次请求需要验证
}))
//配置session模块
app.use(session({
    secret:"128位字符串",//安全字符串
    resave:true,//请求时更新数据
    saveUninitialized:true//保存初始数据
}))
//开辟静态资源
app.use(express.static("./public"));
//post请求
app.use(bodyParser.urlencoded({extended:false}))
//挂载路由
app.use(router);
app.use(getImg);
app.use(articles);


//监听
app.listen(4000,()=>{
    console.log("loading...")
})