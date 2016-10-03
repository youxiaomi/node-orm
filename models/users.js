/**
 * Created by 17985 on 2016/8/28.
 */
module.exports = function (orm, db) {
    var users = db.define('users', {
            name     : { type: 'text' },
            age      : { type: 'text' },
            // createdAt : { type: 'date' }
        })
};