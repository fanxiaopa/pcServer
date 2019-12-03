const express=require('express');
var router=express.Router();
var pool=require('../pool.js')

//登录
router.post("/login",(req,res)=>{
    var obj=req.body
    // console.log(obj)
    var uphone=obj.uphone;
    var upwd=obj.upwd;
    pool.query(`select uname from user where uphone=? and upwd=md5(?)`,[uphone,upwd],(err,result)=>{
        if(err) throw err;
        if(result.length==0){
            res.send({code:-1,msg:"用户名或密码有误"})
          }else{
            res.send({code:1,msg:"用户名或密码正确",outcome:result})
          }
    })
})
//注册
router.post("/register",(req,res)=>{
    var uname=req.body.uname;
    var upwd=req.body.upwd;
    var uphone=req.body.uphone
    pool.query(`insert into user values(null,?,md5(?),?)`,[uname,upwd,uphone],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send("注册成功")
        }
    })
})
//修改密码
router.post("/forget",(req,res)=>{
    var obj=req.body
    pool.query(`update user set upwd=md5(${obj.upwd}) where uphone=?`,[obj.uphone],(err,result)=>{
        if(err) throw err
        if(result.affectedRows>0){
            res.send({code:1,msg:'update suc'})
         }else{
          res.send({code:-1,msg:'update error'})
         }
    })
})


module.exports=router