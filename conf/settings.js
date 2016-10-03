/**
 * Created by 17985 on 2016/8/26.
 */
var path       = require('path');

var settings = {
    path       : path.normalize(path.join(__dirname, '..')),
    port       : process.env.NODE_PORT || 3000,
    database   : {
        protocol : "mysql", // or "mysql"
        query    : { pool: true },
        host     : "205.209.183.206",
        database : "myapp_test",
        user     : "squid",
        password : "123123"
        // password : "123123"
    }
};

module.exports = settings;