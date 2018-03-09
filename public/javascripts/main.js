(() => {

//Fetch All Movies
function getMovieData(){
  let url = "api/getAll";

  fetch(url)
  .then((resp) => resp.json())
  .then((data) => {
    console.log(data);
    console.log(data.moviesData);
    let box = document.querySelector('.box');
    data.moviesData.forEach((movie) => {
      let item = `
      <div class="movie-box">
        <a href="../videos/${movie.movies_video}"><img src="../images/${movie.movies_thumbs}" alt="${movie.movies_title}"></a><h2>${movie.movies_title}</h2>
          <h3 class="genre">${movie.movies_genre}</h3>
            <h3><i class="fas fa-star"></i></i>${movie.movies_rating} <span class="year">${movie.movies_year}</span></h3>
          <p>${movie.movies_desc}</p>
            <a href="#"><i class="fab fa-facebook-square social"></i></a>
            <a href="#"><i class="fab fa-twitter-square social"></i></a>
            <a href="../videos/${movie.movies_video}" class="play"><i class="fas fa-play-circle"></i>PLAY</a>
      </div>
      `;
      box.innerHTML += item;
    });
  })
  .catch(function(error) {
    console.log(error);
  });
}
getMovieData.call();


//Fetch Adults Music
function getMusicData(){
  let url = "api/getMusic";

  fetch(url)
  .then((resp) => resp.json())
  .then((data) => {
    console.log(data);
    console.log(data.musicData);
    let box = document.querySelector('.audio-box');
    data.musicData.forEach((music) => {
      let item = `
        <div class="music-box">
          <img src="../images/${music.music_thumbs}" alt="${music.music_title}">
              <audio controls>
                <source src="../music/${music.music_audio}" type="audio/mpeg">
              </audio>

          <h2>${music.music_band}</h2>
          <h3 class="title">${music.music_title}</h2>
          <h3>${music.music_genre}</h3>
          <h3 class="year">${music.music_year}</h3>
      </div>
      `;
      box.innerHTML += item;
    });
  })
  .catch(function(error) {
    console.log(error);
  });
}
getMusicData.call();

//Fetch Kids Movies
function getKidsMovieData(){
  let url = "api/getKidsMovie";

  fetch(url)
  .then((resp) => resp.json())
  .then((data) => {
    console.log(data);
    console.log(data.kidsMoviesData);
    let box = document.querySelector('.kids-box');
    data.kidsMoviesData.forEach((movie) => {
      let item = `
      <div class="movie-box">
        <a href="../videos/${movie.movies_video}"><img src="../images/${movie.movies_thumbs}" alt="${movie.movies_title}"></a><h2>${movie.movies_title}</h2>
          <h3 class="genre">${movie.movies_genre}</h3>
            <h3><i class="fas fa-star"></i></i>${movie.movies_rating} <span class="year">${movie.movies_year}</span></h3>
          <p>${movie.movies_desc}</p>
            <a href="#"><i class="fab fa-facebook-square social"></i></a>
            <a href="#"><i class="fab fa-twitter-square social"></i></a>
            <a href="../videos/${movie.movies_video}" class="play"><i class="fas fa-play-circle"></i>PLAY</a>
      </div>
      `;
      box.innerHTML += item;
    });
  })
  .catch(function(error) {
    console.log(error);
  });
}
getKidsMovieData.call();


//Fetch Adults Music
function getKidsMusicData(){
  let url = "api/getKidsMusic";

  fetch(url)
  .then((resp) => resp.json())
  .then((data) => {
    console.log(data);
    console.log(data.kidsMusicData);
    let box = document.querySelector('.kids-audio-box');
    data.kidsMusicData.forEach((music) => {
      let item = `
        <div class="music-box">
          <img src="../images/${music.music_thumbs}" alt="${music.music_title}">
              <audio controls>
                <source src="../music/${music.music_audio}" type="audio/mpeg">
              </audio>

          <h2>${music.music_band}</h2>
          <h3 class="title">${music.music_title}</h2>
          <h3>${music.music_genre}</h3>
          <h3 class="year">${music.music_year}</h3>
      </div>
      `;
      box.innerHTML += item;
    });
  })
  .catch(function(error) {
    console.log(error);
  });
}
getKidsMusicData.call();

})();
