/**
 * Created by 17985 on 2016/8/27.
 */
var Promise=require('promise')



module.exports = function () {
    return new Promise(function (res,rej) {
        require('../models/')().then(function(db){
            con={
                index:function (req,res) {
                    console.log(db)
                    db.models.users.get(5,function (err,data) {
                        if(err){
                            throw  err
                        }
                        res.render('./home/index',{name:data.name,age:data.age})
                    })
                },
                list:function (req,res) {
                    // console.log(db)
                    // res.send(JSON.stringify(db))
                    res.send('re')
                },
            }
            res(con)
        })



    })



}