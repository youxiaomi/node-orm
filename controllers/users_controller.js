// var express = require('express');
// var router = express.Router();

/* GET users listing. */
// var models=require('../models/')
//
module.exports = function (db) {
  
  return {
    list:function (req,res) {
      // console.log(db.models.users)
      db.models.users.create({
        name: "Hello world", age: "Testing testing 1 2 3"
      },function (err,aa) {
        if(err)throw err
      })
      // res.send('uuuuuu')
    },
    create:function (req,res) {
      console.log(db.moduls)
      db.models.users.create(req.body, function (err, message) {
        if(err) {
          res.send('err')
        }
        return res.send(req.body);
      })
    },
    index:function (req,res) {
      render('./home')
    }
  }




}
