/**
 * Created by 17985 on 2016/8/27.
 */
var models = require('../models/')();
models.then(function (db) {
    db.drop(function (err) {
        if (err) throw err;

        db.sync(function (err) {
            if (err) throw err;
                console.log("Done!");
                db.close()

            // db.models.message.create({
            //     title: "Hello world", body: "Testing testing 1 2 3"
            // }, function (err, message) {
            //     if (err) throw err;
            //
            //     console.log("Done!");
            // });
        });
    });
})



// var models = require('../models/');
// models(function (err, db) {
//     if (err) throw err;
//     db.drop(function (err) {
//         if (err) throw err;
//
//         db.sync(function (err) {
//             if (err) throw err;
//                 console.log("Done!");
//                 db.close()
//
//             // db.models.message.create({
//             //     title: "Hello world", body: "Testing testing 1 2 3"
//             // }, function (err, message) {
//             //     if (err) throw err;
//             //
//             //     console.log("Done!");
//             // });
//         });
//     });
// });
