/**
 * Created by 17985 on 2016/8/26.
 */
var orm      = require('orm');
var settings = require('../conf/settings');
var fs = require("fs");
var promise=require('promise');

var connection = null;
console.log('mode')
module.exports = function () {
    // if (connection) return cb(null, connection);
    return new promise(function (res,rej) {
        if(connection){
            res(connection)
        }else{
            orm.connect(settings.localhost.database, function (err, db) {
                // if (err) return cb(err);
                connection = db;
                // db.settings.set('instance.returnAllErrors', true);
                if (err) {
                    // console.log(db)
                    return console.error(err);
                }

                fs.readdirSync("./models").forEach( function (file){
                    if(file!=='index.js'){
                        require('./'+file)(orm, db);
                    }
                });
                res(db)
            });
        }



    })
};

