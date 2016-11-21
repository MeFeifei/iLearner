/**
 * Created by feifei on 16/7/12.
 */
module.exports = function(app) {
    app.get('/', function (req, res) {
        res.render('index', { title: 'OMinds' });
    });
    app.get('/upminds', function (req, res) {
        res.render('upminds', { title: 'OMinds' });
    });
};