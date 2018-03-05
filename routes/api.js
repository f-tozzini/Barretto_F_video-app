var express = require('express');
var connect = require('../utils/sqlConnect');
var bodyParser = require('body-parser');
var router = express.Router();

router.use(bodyParser.urlencoded({extended : false}));
router.use(bodyParser.json());

router.get('/:id', (req, res) => {
  console.log(req.params.id);

  connect.query(`SELECT * FROM tbl_movies WHERE movies_title="${req.params.id}"`, (err, result) => {
    if (err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.json({carData: result});
    }
  });
});
