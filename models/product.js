/**
 * Created by you on 2016/9/24.
 */
module.exports = function (orm, db) {
    var Message = db.define('product', {
        title     : { type: 'text', required: true },
        body      : { type: 'text' },
    })
};