const express=require('express');
var router=express.Router();
var pool=require('../pool.js')

router.get("/articles",(req,res)=>{
    var aid=req.query.aid
    // console.log(a1)
    pool.query(`select * from articles where aid=?`,[aid],(err,result)=>{
        if(err) throw err;
        res.send(result)
        console.log(result)
    })
    
})

module.exports=router