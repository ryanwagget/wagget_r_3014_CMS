-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2018 at 04:24 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Comedy'),
(2, 'Romance'),
(3, 'Horror'),
(4, 'Drama'),
(5, 'Action'),
(6, 'Adventure'),
(7, 'Western'),
(8, 'Documentary'),
(9, 'Science Fiction'),
(10, 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` int(11) NOT NULL,
  `movies_cover` varchar(80) NOT NULL,
  `movies_title` varchar(120) NOT NULL,
  `movies_year` varchar(10) NOT NULL,
  `movies_runtime` varchar(30) NOT NULL,
  `movies_storyline` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`) VALUES
(1, 'reasons-why.jpg', '13 Reasons Why', '2017', '60 Minutes', 'Follows teenager Clay Jensen, in his quest to uncover the story behind his classmate and crush, Hannah, and her decision to end her life.'),
(2, 'insidious.jpg', 'Insidious: The Last Key', '2018', '103 Minutes', 'Parapsychologist Dr. Elise Rainier faces her most fearsome and personal haunting yet, as she is drawn back to her ghostly childhood home, where the terror began.'),
(3, 'father-figures.jpg', 'Father Figures', '2017', '113 Minutes', 'Upon learning that their mother has been lying to them for years about their allegedly deceased father, two fraternal twin brothers hit the road in order to find him.'),
(4, 'jane.jpg', 'Jane', '2017', '90 Minutes', 'The life and work of the renowned primatology scientist, Jane Goodall, especially on her research about chimpanzees.'),
(5, 'thelma.jpg', 'Thelma', '2017', '116 Minutes', 'A confused religious girl tries to deny her feelings for a female friend who\'s in love with her. This causes her suppressed subconsciously-controlled psychokinetic powers to reemerge with devastating results.'),
(6, 'basmati-blues.jpeg', 'Basmati Blues', '2017', '106 Minutes', 'A brilliant scientist is plucked out of the company lab and sent to India to sell the genetically modified rice she created - which she doesn\'t realize will destroy the farmers she thinks she\'s helping.'),
(7, 'permanant.jpg', 'Permanant', '2017', '93 Minutes', 'Permanent is a comedy about bad hair, adolescence, and socially awkward family members. It involves life-altering permanents and poorly-made toupees. Obstacles to daily survival ensue.'),
(8, 'sweet-virginia.jpg', 'Sweet Virginia', '2017', '93 Minutes', 'A former rodeo champ befriends a young man with a propensity for violence.'),
(9, 'looking-glass.jpg', 'Looking Glass', '2018', '103 Minutes', 'A couple buy a desert motel where they find that strange, mysterious events occur.'),
(10, 'last-jedi.jpg', 'Star Wars: The Last Jedi', '2017', '152 Minutes', 'Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares for battle with the First Order.'),
(11, 'last-men.jpg', 'Last Men In Aleppo', '2017', '83 Minutes', 'Khaled, Mahmoud, and Subhi volunteered at the white helmets trying to save lives of hundreds of victims at besieged city during the Syrian civil war.'),
(12, 'movie-star.jpeg', 'The Last Movie Star', '2017', '94 Minutes', 'An aging former movie star is forced to face the reality that his glory days are behind him. On its surface, the film is a tale about faded fame. At its core, it\'s a universal story about growing old.'),
(13, 'acts-violence.jpeg', 'Acts of Violence', '2018', '86 Minutes', 'When his fiancee is kidnapped by human traffickers, Roman (Ashton Holmes) and his ex-military brothers set out to track her down and save her before it is too late.'),
(14, 'deadpool.jpg', 'Deadpool', '2016', '108 Minutes', 'A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.'),
(15, 'revenant.jpg', 'The Revenant', '2015', '156 Minutes', 'A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.'),
(16, 'grinch.jpg', 'How The Grinch Stole Christmas', '2000', '154 Minutes', 'On the outskirts of Whoville, there lives a green, revenge-seeking Grinch who plans on ruining the Christmas holiday for all of the citizens of the town.'),
(17, 'shrek1.jpg', 'Shrek', '2001', '90 Minutes', 'After his swamp is filled with magical creatures, Shrek agrees to rescue Princess Fiona for a villainous lord in order to get his land back.'),
(18, 'shrek2.jpg', 'Shrek 2', '2004', '93 Minutes', 'Princess Fiona\'s parents invite her and Shrek to dinner to celebrate her marriage. If only they knew the newlyweds were both ogres.'),
(19, 'shrek3.jpg', 'Shrek The Third', '2007', '93 Minutes', 'When his new father-in-law, King Harold falls ill, Shrek is looked at as the heir to the land of Far, Far Away. Not one to give up his beloved swamp, Shrek recruits his friends Donkey and Puss in Boots to install the rebellious Artie as the new king.'),
(20, 'battle-la.jpg', 'Battle: Los Angelas', '2011', '114 Minutes', 'A squadron of U.S. Marines becomes the last line of defense against a global invasion.'),
(21, 'life-pi.jpg', 'Life of Pi', '2012', '127 Minutes', 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery.'),
(22, 'jumanji.jpg', 'Jumanji', '2017', '120 Minutes', 'Four teenagers are sucked into a magical video game, and the only way they can escape is to work together to finish the game.'),
(23, 'get-hard.jpg', 'Get Hard', '2015', '100 Minutes', 'When millionaire James King is jailed for fraud and bound for San Quentin, he turns to Darnell Lewis to prep him to go behind bars.'),
(24, 'planet2.jpg', 'Planet Earth 2', '2016', '360 Minutes', 'David Attenborough returns in this breathtaking documentary showcasing life on Planet Earth.'),
(25, 'war-dogs.jpg', 'War Dogs', '2016', '114 Minutes', 'Loosely based on the true story of two young men, David Packouz and Efraim Diveroli, who won a three hundred million dollar contract from the Pentagon to arm America\'s allies in Afghanistan.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` int(11) NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 4),
(2, 2, 3),
(3, 3, 1),
(4, 4, 8),
(5, 5, 5),
(6, 7, 1),
(7, 8, 10),
(8, 9, 10),
(9, 10, 5),
(10, 11, 8),
(11, 12, 4),
(12, 13, 4),
(13, 14, 5),
(14, 15, 6),
(15, 16, 1),
(16, 17, 6),
(17, 18, 6),
(18, 19, 6),
(19, 20, 5),
(20, 21, 6),
(21, 22, 5),
(22, 23, 1),
(23, 24, 8),
(24, 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_pass`) VALUES
(1, 'ryan', 'ryan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
