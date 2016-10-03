// var express = require('express');
// var router = express.Router();

/* GET users listing. */
// var models=require('../models/')
//

var Promise=require('promise')



module.exports = function (){
  return new Promise(function (res,rej) {
    require('../models/')().then(function(db){
      con={
        // action
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
          res.send('user')
        },
        create:function (req,res) {
          db.models.users.create({
            name: "Hello world", age: "Testing testing 1 2 3"
          },function (err,aa) {
            if(err)throw err
          })
        },


        // action
      }
      res(con)
    })



  })
}


















// module.exports = function (db) {
//
//   return {
//     list:function (req,res) {
//       // console.log(db.models.users)
//       db.models.users.create({
//         name: "Hello world", age: "Testing testing 1 2 3"
//       },function (err,aa) {
//         if(err)throw err
//       })
//       // res.send('uuuuuu')
//     },
//     create:function (req,res) {
//       console.log(db.moduls)
//       db.models.users.create(req.body, function (err, message) {
//         if(err) {
//           res.send('err')
//         }
//         return res.send(req.body);
//       })
//     },
//     index:function (req,res) {
//       render('./home')
//     }
//   }
//
//
//
//
// }
