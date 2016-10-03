/**
 * Created by 17985 on 2016/8/26.
 */

module.exports = function (orm, db) {
    var Message = db.define('message', {
            title     : { type: 'text', required: true },
            body      : { type: 'text' },
        })
};