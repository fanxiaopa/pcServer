const mysql=require('mysql');
var pool=mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'admin',
    database:'wedding',
    connectionLimit:20
})

module.exports=pool;
//wedding数据库中的数据
//user表: 范小爬 fan?52031! 13036592025 ; cheney 1437606887 13036592026