/**
 * Created by 17985 on 2016/8/27.
 */

var Promise=require('promise');
var controllers = require('../controllers/')()

module.exports = function (app) {
   return new Promise(function (res,rej) {
       controllers.then(function (controllers) {
           // console.log(controllers)
           (function (controllers){
               console.log(controllers)
               app.get('/h',function (req,res) {
                   res.send('123')
               });
               // app.get('/u',function (req,res) {
               //     console.log(controllers.home)
               //     res.send(JSON.stringify(controllers))
               // });
               app.get('/home/list',controllers.home.list);
               // app.get('/home',controllers.home.index);
               app.get('/user',controllers.users.create)
               // app.get('/',controllers.home.index)
               // app.post('/users',controllers.users.create)

           })(controllers);
           res();
       })
       console.log('root')
   })

};
