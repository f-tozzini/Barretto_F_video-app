// var express = require('express');
// var connect = require('../utils/sqlConnect');
// var bodyParser = require('body-parser');
// var router = express.Router();
//
// // router.use(bodyParser.urlencoded({extended : false}));
// // router.use(bodyParser.json());
//
// router.get('/:id', (req, res) => {
//   console.log(req.params.id);
//
//   connect.query(`SELECT * FROM tbl_movies WHERE movies_title="${req.params.id}"`, (err, result) => {
//     if (err) {
//       throw err; console.log(err);
//     } else {
//       console.log(result);
//
//       res.json({getData: result});
//     }
//   });
// });
//
var express = require('express');
var router = express.Router();
var connect = require('../utils/sqlConnect');
var bodyParser = require('body-parser');


router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

module.exports = router;
