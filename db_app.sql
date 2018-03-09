-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2018 at 06:35 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` smallint(5) UNSIGNED NOT NULL,
  `movies_title` varchar(100) NOT NULL,
  `movies_thumbs` varchar(200) NOT NULL,
  `movies_video` varchar(200) NOT NULL,
  `movies_desc` varchar(1000) NOT NULL,
  `movies_genre` varchar(30) NOT NULL,
  `movies_year` varchar(20) NOT NULL,
  `movies_rating` varchar(20) NOT NULL,
  `movies_classification` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_title`, `movies_thumbs`, `movies_video`, `movies_desc`, `movies_genre`, `movies_year`, `movies_rating`, `movies_classification`) VALUES
(1, 'Beauty and the Beast', 'beauty-beast.jpg', 'beauty-beast.mp4', 'An adaptation of the fairy tale about a monstrous-looking prince and a young woman who fall in love.', 'Drama', '2017', '73', 'Kids'),
(2, 'Dark knight', 'batman.jpg', 'batman.mp4', 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, the Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'Action', '2008', '82', 'Adult'),
(3, 'Wanted', 'wanted.jpg', 'wanted.mp4', 'A frustrated office worker learns that he is the son of a professional assassin and that he shares his father\'s superhuman killing abilities.', 'Action', '2008', '67', 'Adult'),
(4, 'The avengers', 'avengers.jpg', 'avengers.mp4', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', 'Action', '2012', '81', 'Adult'),
(5, 'Amelie', 'amelie.jpg', 'amelie.mp4', 'Amélie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.', 'Drama', '2001', '83', 'Adult'),
(6, 'Inside out', 'inside-out.jpg', 'inside-out.mp4', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.', 'Animation', '2015', '82', 'Kids'),
(7, 'Up!', 'up.jpg', 'up.mp4', 'Seventy-eight year old Carl Fredricksen travels to Paradise Falls in his home equipped with balloons, inadvertently taking a young stowaway.', 'Animation', '2009', '83', 'Kids'),
(8, 'Frozen', 'frozen.jpg', 'frozen.mp4', 'When the newly-crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister Anna teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.', 'Animation', '2013', '75', 'Kids'),
(9, 'Mulan', 'mulan.jpg', 'mulan.mp4', 'To save her father from death in the army, a young maiden secretly goes in his place and becomes one of China\'s greatest heroines in the process.', 'Animation', '1998', '76', 'Kids'),
(10, 'Toy Story', 'toy-story.jpg', 'toy-story.mp4', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.', 'Animation', '2003', '81', 'Kids'),
(11, 'Gilmore Girls', 'gilmore-girls.jpg', 'gilmore-girls.mp4', 'A dramedy centering around the relationship between a thirtysomething single mother and her teen daughter living in Stars Hollow, Connecticut.', 'TV Show', '2000-2007', '81', 'Adult'),
(12, 'One Tree Hill', 'one-tree-hill.jpg', 'one-tree-hill.mp4', 'Half-brothers Lucas and Nathan Scott trade between kinship and rivalry both on the basketball court and in the hearts of their friends in the small, but not so quiet town of Tree Hill, North Carolina.', 'TV Show', '2003-2012', '77', 'Adult'),
(13, 'Outlander', 'outlander.jpg', 'outlander.mp4', 'An English combat nurse from 1945 is mysteriously swept back in time to 1743.', 'TV Show', '2014-2018', '85', 'Adult'),
(14, 'Finding Nemo', 'finding-nemo.jpg', 'finding-nemo.mp4', 'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.', 'Animation', '2003', '81', 'Kids');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

CREATE TABLE `tbl_music` (
  `music_id` smallint(5) UNSIGNED NOT NULL,
  `music_band` varchar(50) NOT NULL,
  `music_title` varchar(100) NOT NULL,
  `music_thumbs` varchar(200) NOT NULL,
  `music_genre` varchar(20) NOT NULL,
  `music_year` varchar(10) NOT NULL,
  `music_classification` varchar(50) NOT NULL,
  `music_audio` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_band`, `music_title`, `music_thumbs`, `music_genre`, `music_year`, `music_classification`, `music_audio`) VALUES
(1, 'Foo Fighters', 'These Days', 'foo-fighters.jpg', 'Rock', '2011', 'Adults', 'foo-fighters.mp3'),
(2, 'AC/DC', 'Hells Bells', 'acdc.jpg', 'Rock', '1980', 'Adults', 'acdc.mp3'),
(3, 'Florence and the Machine ', 'Cosmic Love', 'florence.jpg', 'Indie Rock', '2009', 'Adults', 'florence.mp3'),
(4, 'The Killers', 'Mr. Brightside', 'the-killers.jpg', 'Indie Rock', '2004', 'Adults', 'the-killers.mp3'),
(5, 'American Authors', 'Best Day of my Life', 'american-authors.jpg', 'Indie Rock', '2014', 'Adults', 'american-authors.mp3'),
(6, 'Pink', 'Who Knew', 'pink.jpg', 'Pop', '2006', 'Adults', 'pink.mp3'),
(7, 'Beauty and the beast', 'Beauty and the Beast Soundtrack', 'beauty-beast-music.jpg', 'Disney', '1994', 'Kids', 'beauty-beast-music.mp3'),
(8, 'Aladdin', 'Aladdin Soundtrack', 'aladdin.jpg', 'Disney', '1992', 'Kids', 'aladdin.mp3'),
(9, 'The Little Mermaid', 'The Little Mermaid Soundtrack', 'little-mermaid.jpg', 'Disney', '1989', 'Kids', 'little-mermaid.mp3'),
(10, 'Hercules', 'Hercules Soundtrack', 'hercules.jpg', 'Disney', '1997', 'Kids', 'hercules.mp3'),
(11, 'Moana', 'Moana Soundtrack', 'moana.jpg', 'Disney', '2016', 'Kids', 'moana.mp3'),
(12, 'Frozen', 'Frozen Soundtrack', 'frozen-music.jpg', 'Disney', '2013', 'Kids', 'frozen.mp3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_music`
--
ALTER TABLE `tbl_music`
  ADD PRIMARY KEY (`music_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_music`
--
ALTER TABLE `tbl_music`
  MODIFY `music_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
