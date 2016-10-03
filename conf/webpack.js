/**
 * Created by 17985 on 2016/8/14.
 */
var webpack=require('webpack')
var path=require('path')


module.exports={
    devtool:'eval-source-map',
    entry:'./public/javascripts/test.js',
    output:{
        filename:'test.js',
        path: path.resolve( '../public/static'),
        // publicPath: '/static/'
    },
    module: {
        loaders: [
            { test: /\.css$/, loader: "style-loader!css-loader" }
        ]
    }


}