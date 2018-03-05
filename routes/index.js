var express = require('express');
var router = express.Router();
var config = require('../config');

//do some checking here to see  the user profile
// ternary statement => MD ternary

var toRender = (config.kidsmode) ? 'kids' : 'main ';

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render(toRender, {
    title: 'HOME Page!!',
    message: 'Heloooo!!',
    mainpage: true,
    kidsmode : config.kidsmode
  });
});

module.exports = router;
