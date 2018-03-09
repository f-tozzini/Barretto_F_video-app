
var express = require('express');
var router = express.Router();
var connect = require('../utils/sqlConnect');
var bodyParser = require('body-parser');


//Adults movie select
router.get('/getAll', (req, res) => {
  let getAll = `SELECT * FROM tbl_movies ORDER BY movies_genre `;
  connect.query(getAll, (err, result) => {
    if(err) {
      throw err;
      console.log(err);
    }
    else {
      res.json({
        moviesData : result
      });
    }
  });
});

//Kids movie select
router.get('/getKidsMovie', (req, res) => {
  let getKidsMovie = `SELECT * FROM tbl_movies WHERE movies_classification = 'Kids'`;
  connect.query(getKidsMovie, (err, result) => {
    if(err) {
      throw err;
      console.log(err);
    }
    else {
      // console.log(result);
      // return result as json
      res.json({
        kidsMoviesData : result
      });
    }
  });
});

//Adults music select
router.get('/getMusic', (req, res) => {
  let getMusic = `SELECT * FROM tbl_music WHERE music_classification = 'Adults'`;
  connect.query(getMusic, (err, result) => {
    if(err) {
      throw err;
      console.log(err);
    }
    else {
      res.json({
        musicData : result
      });
    }
  });
});

//Adults music select
router.get('/getKidsMusic', (req, res) => {
  let getKidsMusic = `SELECT * FROM tbl_music WHERE music_classification = 'Kids'`;
  connect.query(getKidsMusic, (err, result) => {
    if(err) {
      throw err;
      console.log(err);
    }
    else {
      // console.log(result);
      // return result as json
      res.json({
        kidsMusicData : result
      });
    }
  });
});

module.exports = router;
