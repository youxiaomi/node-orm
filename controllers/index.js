var express = require('express');
var router = express.Router();
// var connect=require('../mysql/connect')
var Promise=require('promise')
var fs = require("fs");
/* GET home page. */

var controllers={}


module.exports=function () {

    return new Promise(function (res,rej) {
        // require('../models/')().then(function(db){

        var files=fs.readdirSync('./controllers');
        (function (files) {
            var i=1
            files.forEach(function (file) {
                if(file!=='index.js'){
                // if(file=='home_controller.js'){
                    var name=file.match(/\w+(?=_)/)
                    // controllers[name]=require("./"+file)()
                    require("./"+file)().then(function (con) {
                        i++
                        controllers[name]=con
                        if(files.length==i){
                            res(controllers)
                        }
                    })
                    // console.log(1)
                }
            });

        })(files);
        // })
    })
}



// module.exports=function () {
//         return db=require('../models/')(function (err,db) {
//
//             (function (files) {
//                 if(err){
//                     return console.error(err)
//                 }
//                 files.forEach(function (file) {
//                     // if(file!=='index.js'){
//                     //     var name=file.match(/\w+(?=_)/)
//                     //     controllers[name]=require("./"+file)
//                     // }
//                     if(file=='users_controller.js'||file=='home_controller.js'){
//                         var name=file.match(/\w+(?=_)/)
//                         controllers[name]=require("./"+file)(db)
//                     }
//
//                 });
//             })(fs.readdirSync('./controllers'))
//             return controllers
//         })
// }

