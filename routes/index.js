var express = require('express');
var router = express.Router();
var config = require('../config');

//do some checking here to see  the user profile
// ternary statement => MD ternary

var toRender = (config.kidsmode) ? 'kids' : 'main ';

/* GET home page. */
// router.get('/', function(req, res, next) {
//   res.render(toRender, {
//     title: 'HOME Page!!',
//     message: 'Heloo!!',
//     mainpage: true,
//     kidsmode : config.kidsmode
//   });
// });

// router.get('/', (req, res) => {
//   console.log('hit the main route');
//   res.render('main');
// });

router.get('/', (req, res) => {
  console.log('hit the home route');
  res.render('home');
});

router.get('/adults', (req, res) => {
  console.log('hit the adults route');
  res.render('adults');
});

router.get('/kids', (req, res) => {
  console.log('hit the kids route');
  res.render('kids', {
    kids : true
  })
});

module.exports = router;
