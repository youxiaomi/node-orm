/**
 * Created by 17985 on 2016/8/26.
 */
var orm      = require('orm');
var settings = require('../conf/settings');
var fs = require("fs");
var promise=require('promise');

var connection = null;
module.exports = function (cb) {
    // if (connection) return cb(null, connection);
    return new promise(function (res,rej) {
        orm.connect(settings.database, function (err, db) {
            // if (err) return cb(err);
            connection = db;
            // db.settings.set('instance.returnAllErrors', true);
            if (err) {
                console.log(db)
                // return console.error(err);
            }

            fs.readdirSync("./models").forEach( function (file){
                if(file!=='index.js'){
                    require('./'+file)(orm, db);
                    console.log(file)
                }
            });
            res(db)
        });
    })
};

