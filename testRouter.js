/**
 * Created by 17985 on 2016/8/28.
 */

module.exports = function (app) {
    console.log('rr')
    console.log(2)
    app.get('/',function (req,res) {
        res.send('123')
    })
};