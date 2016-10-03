/**
 * Created by 17985 on 2016/8/28.
 */
module.exports = function (db) {
    return {
        index:function (req,res) {
            console.log(db)
            db.models.users.get(5,function (err,data) {
                if(err){
                    throw  err
                }
                res.render('./home/index',{name:data.name,age:data.age})
            })
        },
        list:function (req,res) {
            // res.send(JSON.stringify(db))
            res.send('re')
        }
    }
}