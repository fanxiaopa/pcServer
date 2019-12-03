const express=require('express');
var router=express.Router();
var pool=require('../pool.js')

router.get("/getImg",(req,res)=>{
    pool.query(`select * from courselImg`,(err,result)=>{
        if(err) throw err
        if(result.length==0){
            res.send({code:-1,msg:"查询失败"})
        }else{
            res.send(result)
        }
    })
})
router.get("/otherImg",(req,res)=>{
    pool.query(`select * from otherimg`,(err,result)=>{
        if(err) throw err
        if(result.length==0){
            res.send({code:-1,msg:"查询失败"})
        }else{
            res.send(result)
        }
    })
})
module.exports=router