/**
 * Created by 17985 on 2016/8/14.
 */
module.exports={
    connection :function () {
        var mysql=require('mysql')
        return mysql.createConnection({
            host     : 'localhost',
            user     : 'root',
            password : 'root',
            database : 'myapp_test'
        })
    },
    insert:function (table,data,cb) {
        var key=[],val=[]
        for(var m in data){
            key.push(m)
            val.push(data[m])
        }
        key=key.join()
        val="'"+val.join("','")+"'"
        var sql="INSERT INTO "+table+" ("+key+") VALUES ("+val+")"
        var con= this.connection()
        con.query( sql, function (error, results, fields) {
            // error will be an Error if one occurred during the query
            // results will contain the results of the query
            // fields will contain information about the returned results fields (if any)
            if (error) {
                console.error('error connecting: ' + error.stack);
                return;
            }
            con.end()
            cb(results,fields)
        })
    },
    fetchOne:function (table,where,val,cb) {
        var sql="SELECT * FROM "+table+" WHERE "+where+"='"+val+"'"
        var con=this.connection()
        con.query( sql, function (error, results, fields) {
            if (error) {
                console.error('error connecting: ' + error.stack);
                return;
            }
            con.end()
            cb(results,fields)
            return results[0]
        })
    },
    fetchAll:function (table,cb) {
        var sql="SELECT * FROM "+table
        var con= this.connection()
       con.query( sql, function (error, results, fields) {
            if (error) {
                console.error('error connecting: ' + error.stack);
                return;
            }
            con.end()
            cb(results,fields)
        })
    },
    delete:function (table,where,val,cb) {
        var sql="DELETE FROM "+table+" WHERE "+where+"='"+val+"'";
        var con= this.connection()
        con.query( sql, function (error, results, fields) {
            if (error) {
                console.error('error connecting: ' + error.stack);
                return;
            }
            con.end()
            cb(results,fields)
        })
    },
    update:function (table,where,val,cb) {
        var sql="DELETE FROM "+table+" WHERE "+where+"='"+val+"'";
        var con= this.connection()
        con.query( sql, function (error, results, fields) {
            if (error) {
                console.error('error connecting: ' + error.stack);
                return;
            }
            con.end()
            cb(results,fields)
        })
    },
    update:function (table,data,where,val,cb) {
        

        var sql="update "+table+" set "+str+" WHERE "+where+"='"+val+"'" ;
        var con= this.connection()
        con.query( sql, function (error, results, fields) {
            if (error) {
                console.error('error connecting: ' + error.stack);
                return;
            }
            con.end()
            cb(results,fields)
        })
    },
    
    
    
}
    
    
    
    var sql="INSERT INTO test (num,text) VALUES ('234','adsf')"
    // connection.query( sql, function (error, results, fields) {
    //     // error will be an Error if one occurred during the query
    //     // results will contain the results of the query
    //     // fields will contain information about the returned results fields (if any)
    //     if (error) {
    //         console.error('error connecting: ' + error.stack);
    //         return;
    //     }
    // })
    
    var text={"num":"321","text":"俺的沙发"}
    
    // fetchOne('test','num','321')
    
    // fetchAll('test')

