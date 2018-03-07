
var express = require('express');
var router = express.Router();
var connect = require('../utils/sqlConnect');
var bodyParser = require('body-parser');

router.get('/getAll', (req, res) => {
  let getAll = `SELECT * FROM tbl_movies`;
  connect.query(getAll, (err, result) => {
    if(err) {
      throw err;
      console.log(err);
    }
    else {
      // console.log(result);
      //return result as json
      res.json({
        moviesData : result
      });
    }
  });
});

module.exports = router;
