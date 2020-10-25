-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 26, 2018 at 11:26 AM
-- Server version: 5.6.36-82.1-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patr1203_csci_332`
--
CREATE DATABASE IF NOT EXISTS `patr1203_csci_332` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `patr1203_csci_332`;

DELIMITER $$
--
-- Functions
--
DROP FUNCTION IF EXISTS `count_retired`$$
CREATE DEFINER=`patr1203`@`localhost` FUNCTION `count_retired` (`iPlayer` VARCHAR(255)) RETURNS INT(11) BEGIN
  return (select count(*) from retired);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `AHL`
--

DROP TABLE IF EXISTS `AHL`;
CREATE TABLE `AHL` (
  `city` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `NHL_Affiliate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AHL`
--

INSERT INTO `AHL` (`city`, `name`, `NHL_Affiliate`) VALUES
('Milwaukee ', 'Admirals', 'Predators'),
('Rochester', 'Americans', 'Sabres'),
('Hershey ', 'Bears', 'Capitals'),
('Providence', 'Bruins', 'Bruins'),
('Charlotte', 'Checkers', 'Hurricanes'),
('Utica', 'Comets', 'Canucks'),
('Bakersfield ', 'Condors', 'Oilers'),
('Syracuse', 'Crunch', 'Lightning'),
('Binghampton', 'Devils', 'Devils'),
('Grand Rapids', 'Griffins', 'Red Wings'),
('San Diego ', 'Gulls', 'Ducks'),
('Stockton', 'Heat', 'Flames'),
('Rockford', 'Icehogs', 'Blackhawks'),
('Toronto', 'Marlies', 'Maple Leafs'),
('Manitoba ', 'Mouse', 'Jets'),
('Wilkes-Barrie', 'Penguins', 'Penguins'),
('Lehigh Valley', 'Phantoms', 'Flyers'),
('Ontario', 'Reign ', 'Kings'),
('Tucson', 'Roadrunners', 'Coyotes'),
('Laval ', 'Rocket', 'Canadiens'),
('Belleville', 'Senators', 'Senators'),
('Bridgeport', 'Sound Tigers', 'Islanders'),
('Texas (Cedar Park)', 'Stars', 'Stars'),
('here', 'there', 'Canucks'),
('Springfield ', 'Thunderbirds', 'Panthers'),
('Iowa (De Moines)', 'Wild', 'Wild'),
('Hartford ', 'Wolf Pack', 'Rangers'),
('Chicago', 'Wolves', 'Blue Jackets');

-- --------------------------------------------------------

--
-- Table structure for table `ECHL`
--

DROP TABLE IF EXISTS `ECHL`;
CREATE TABLE `ECHL` (
  `city` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `affiliate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ECHL`
--

INSERT INTO `ECHL` (`city`, `name`, `affiliate`) VALUES
('Cincinatti', 'Cyclones', 'Sabres'),
('Florida (Estero)', 'Everblades', 'Hurricanes'),
('Indy', 'Fuel', 'Blackhawks'),
('Atlanta', 'Gladiators', 'Bruins'),
('Utah', 'Grizzlies', 'Ducks'),
('Maine (Portland)', 'Mariner', 'Rangers'),
('Kansas City ', 'Mavericks', 'Flames'),
('Manchester', 'Monarchs', 'Kings'),
('Wheeling', 'Nailers', 'Penguins'),
('Worcester', 'Railers', 'Islanders'),
('Reading', 'Royals', 'Flyers'),
('Rapid City', 'Rush', 'Wild'),
('Orlando ', 'Solar Bears', 'Maple Leafs'),
('Idaho', 'Steelheads', 'Stars'),
('South Carolina (Charleston)', 'Stingrays', 'Capitals'),
('Adirondack', 'Thunder', 'Devils'),
('Kalamazoo', 'Wings', 'Canucks');

-- --------------------------------------------------------

--
-- Table structure for table `NHL`
--

DROP TABLE IF EXISTS `NHL`;
CREATE TABLE `NHL` (
  `city` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mascot` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `NHL`
--

INSERT INTO `NHL` (`city`, `name`, `mascot`) VALUES
('Colorado (Denver)', 'Avalanche', 'Bernie The St. Bernard'),
('Chicago', 'Blackhawks', 'Tommy Hawk '),
('Columbus', 'Blue Jackets', 'Stinger the Yellowjacket'),
('St. Louis', 'Blues', 'Louie the Polar bear'),
('Boston', 'Bruins', 'Blades'),
('Montreal', 'Canadiens', 'Youppi!'),
('Vancouver', 'Canucks', 'Fin the Whale'),
('Washington (D.C)', 'Capitals', 'Slapshot the Bald Eagle'),
('Arizona (Glendale)', 'Coyotes', 'Howler the Coyote'),
('New Jersey (Newark)', 'Devils', 'The Devil'),
('Anaheim', 'Ducks', 'Wild Wing'),
('Calgary', 'Flames', 'Harvey the Hound'),
('Philadelphia', 'Flyers', 'Flyer'),
('Vegas', 'Golden Knights', 'Chance the Gila Monster'),
('Carolina (Raleigh)', 'Hurricanes', 'Stormy the Pig'),
('New York', 'Islanders', 'Sparky The Dragon'),
('Winnipeg', 'Jets', 'Mick. E. Moose'),
('Los Angelos', 'Kings', 'Bailey'),
('Tampa Bay', 'Lightning', 'Thunderbug, Lightningbug'),
('Toronto', 'Maple Leafs', 'Carlton the Bear'),
('Edmonton', 'Oilers', 'Hunter'),
('Florida (Sunrise)', 'Panthers', 'Stanley C. Panther and Viktor E. Rat'),
('Pittsburgh', 'Penguins', 'Penguin'),
('Nashville', 'Predators', 'Gnash'),
('New York', 'Rangers', 'Ranger'),
('Detroit', 'Red Wings', 'Al the Octopus'),
('Buffalo', 'Sabres', 'Sabretooth'),
('Ottawa', 'Senators', 'Spartacat the Lion'),
('San Jose', 'Sharks', 'Sharkie'),
('Dallas', 'Stars', 'Victor E. Green'),
('Minnesota (St Paul)', 'Wild', 'Nordy the Fox');

-- --------------------------------------------------------

--
-- Table structure for table `Red_Wings_2018`
--

DROP TABLE IF EXISTS `Red_Wings_2018`;
CREATE TABLE `Red_Wings_2018` (
  `Player` varchar(18) DEFAULT NULL,
  `Age` varchar(2) DEFAULT NULL,
  `Pos` varchar(2) DEFAULT NULL,
  `GP` int(2) DEFAULT NULL,
  `G` int(3) DEFAULT NULL,
  `A` int(3) DEFAULT NULL,
  `PTS` int(3) DEFAULT NULL,
  `plusMinus` int(4) DEFAULT NULL,
  `PIM` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Red_Wings_2018`
--

INSERT INTO `Red_Wings_2018` (`Player`, `Age`, `Pos`, `GP`, `G`, `A`, `PTS`, `plusMinus`, `PIM`) VALUES
('Gustav Nyquist', '28', 'RW', 82, 21, 19, 40, -2, 20),
('Justin Abdelkader', '30', 'LW', 75, 13, 22, 35, -11, 78),
('Andreas Athanasiou', '23', 'LW', 71, 16, 17, 33, -15, 16),
('Frans Nielsen', '33', 'C', 79, 16, 17, 33, 1, 14),
('Mike Green', '32', 'D', 66, 8, 25, 33, -14, 38),
('Darren Helm', '31', 'LW', 75, 13, 18, 31, 3, 39),
('Tomas Tatar', '27', 'LW', 62, 16, 12, 28, -8, 24),
('Niklas Kronwall', '37', 'D', 79, 4, 23, 27, -14, 36),
('Martin Frk', '24', 'RW', 68, 11, 14, 25, -14, 14),
('Tyler Bertuzzi', '22', 'LW', 48, 7, 17, 24, -7, 39),
('Luke Glendening', '28', 'RW', 69, 11, 8, 19, -14, 17),
('Trevor Daley', '34', 'D', 77, 9, 7, 16, -5, 36),
('Nick Jensen', '27', 'D', 81, 0, 15, 15, -8, 27),
('Jonathan Ericsson', '33', 'D', 81, 3, 10, 13, -7, 47),
('Danny DeKeyser', '27', 'D', 65, 6, 6, 12, 2, 28),
('Xavier Ouellet', '24', 'D', 45, 0, 7, 7, -3, 6),
('David Booth', '33', 'LW', 28, 4, 1, 5, -5, 10),
('Evgeny Svechnikov', '21', 'RW', 14, 2, 2, 4, -2, 8),
('Luke Witkowski', '27', 'RW', 31, 1, 3, 4, -1, 68),
('Joe Hicketts', '21', 'D', 5, 0, 3, 3, 5, 2),
('Jimmy Howard', '33', 'G', 60, 0, 1, 1, 0, 10),
('Jared Coreau', '26', 'G', 7, 0, 0, 0, 0, 0),
('Brian Lashoff', '27', 'D', 1, 0, 0, 0, 0, 0),
('Petr Mrazek', '25', 'G', 22, 0, 0, 0, 0, 0),
('Riley Sheahan', '26', 'C', 8, 0, 0, 0, 0, 4),
('Dominic Turgeon', '21', 'C', 5, 0, 0, 0, -2, 2),
('Scott Wilson', '25', 'LW', 17, 0, 0, 0, -1, 0),
('Team Total', '', '', 82, 212, 363, 575, -131, 710);

--
-- Triggers `Red_Wings_2018`
--
DROP TRIGGER IF EXISTS `into_retirement`;
DELIMITER $$
CREATE TRIGGER `into_retirement` AFTER DELETE ON `Red_Wings_2018` FOR EACH ROW BEGIN
 insert into retired (Player,Age,POS,GP,G,A,PTS,plusMinus,PIM)
 values(old.Player,old.Age,old.POS,old.GP,old.G,old.A,old.PTS,old.plusMinus,old.PIM);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `retired`
--

DROP TABLE IF EXISTS `retired`;
CREATE TABLE `retired` (
  `Player` varchar(255) NOT NULL,
  `Age` int(255) NOT NULL,
  `Pos` varchar(255) NOT NULL,
  `GP` int(255) NOT NULL,
  `G` int(255) NOT NULL,
  `A` int(255) NOT NULL,
  `PTS` int(255) NOT NULL,
  `plusMinus` int(255) NOT NULL,
  `PIM` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `retired`
--

INSERT INTO `retired` (`Player`, `Age`, `Pos`, `GP`, `G`, `A`, `PTS`, `plusMinus`, `PIM`) VALUES
('Dylan Larkin', 21, 'C', 82, 16, 47, 63, -9, 61),
('Henrik Zetterberg', 37, 'LW', 82, 11, 45, 56, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `Standings`
--

DROP TABLE IF EXISTS `Standings`;
CREATE TABLE `Standings` (
  `RK` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `GP` int(255) NOT NULL,
  `W` int(255) NOT NULL,
  `L` int(255) NOT NULL,
  `PTS` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Standings`
--

INSERT INTO `Standings` (`RK`, `Name`, `GP`, `W`, `L`, `PTS`) VALUES
(8, 'Anaheim Ducks', 82, 44, 25, 101),
(29, 'Arizona Coyotes', 82, 29, 41, 70),
(4, 'Boston Bruins*', 82, 50, 20, 112),
(31, 'Buffalo Sabres', 82, 25, 45, 62),
(20, 'Calgary Flames', 82, 37, 35, 84),
(21, 'Carolina Hurricanes', 82, 36, 35, 83),
(25, 'Chicago Blackhawks', 82, 33, 39, 76),
(17, 'Colorado Avalanche*', 82, 43, 30, 95),
(14, 'Columbus Blue Jackets*', 82, 45, 30, 97),
(19, 'Dallas Stars', 82, 42, 32, 92),
(27, 'Detroit Red Wings', 82, 30, 39, 73),
(23, 'Edmonton Oilers', 82, 36, 40, 78),
(16, 'Florida Panthers', 82, 44, 30, 96),
(13, 'Los Angeles Kings*', 82, 45, 29, 98),
(9, 'Minnesota Wild*', 82, 45, 26, 101),
(28, 'Montreal Canadiens', 82, 29, 40, 71),
(1, 'Nashville Predators*', 82, 53, 18, 117),
(15, 'New Jersey Devils*', 82, 44, 29, 97),
(22, 'New York Islanders', 82, 35, 37, 80),
(24, 'New York Rangers', 82, 34, 39, 77),
(30, 'Ottawa Senators', 82, 28, 43, 67),
(12, 'Philadelphia Flyers*', 82, 42, 26, 98),
(10, 'Pittsburgh Penguins*', 82, 47, 29, 100),
(11, 'San Jose Sharks*', 82, 45, 27, 100),
(18, 'St. Louis Blues', 82, 44, 32, 94),
(3, 'Tampa Bay Lightning*', 82, 54, 23, 113),
(7, 'Toronto Maple Leafs*', 82, 49, 26, 105),
(26, 'Vancouver Canucks', 82, 31, 40, 73),
(5, 'Vegas Golden Knights*', 82, 51, 24, 109),
(6, 'Washington Capitals*', 82, 49, 26, 105),
(2, 'Winnipeg Jets*', 82, 52, 20, 114);

-- --------------------------------------------------------

--
-- Table structure for table `Stanley_Cup_Winners`
--

DROP TABLE IF EXISTS `Stanley_Cup_Winners`;
CREATE TABLE `Stanley_Cup_Winners` (
  `Season` varchar(10) NOT NULL DEFAULT '',
  `Lg` varchar(3) DEFAULT NULL,
  `Team` varchar(20) DEFAULT NULL,
  `AvAge` decimal(3,0) DEFAULT NULL,
  `GP` int(2) DEFAULT NULL,
  `W` int(2) DEFAULT NULL,
  `L` int(2) DEFAULT NULL,
  `T` varchar(2) DEFAULT NULL,
  `PTS` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Stanley_Cup_Winners`
--

INSERT INTO `Stanley_Cup_Winners` (`Season`, `Lg`, `Team`, `AvAge`, `GP`, `W`, `L`, `T`, `PTS`) VALUES
('1917-18', 'NHL', 'Toronto Arenas', '0', 22, 13, 9, '0', 26),
('1919-20', 'NHL', 'Ottawa Senators', '0', 24, 19, 5, '0', 38),
('1920-21', 'NHL', 'Ottawa Senators', '0', 24, 14, 10, '0', 28),
('1921-22', 'NHL', 'Toronto St. Patricks', '0', 24, 13, 10, '1', 27),
('1922-23', 'NHL', 'Ottawa Senators', '0', 24, 14, 9, '1', 29),
('1923-24', 'NHL', 'Montreal Canadiens', '0', 24, 13, 11, '0', 26),
('1925-26', 'NHL', 'Montreal Maroons', '0', 36, 20, 11, '5', 45),
('1926-27', 'NHL', 'Ottawa Senators', '0', 44, 30, 10, '4', 64),
('1927-28', 'NHL', 'New York Rangers', '0', 44, 19, 16, '9', 47),
('1928-29', 'NHL', 'Boston Bruins', '0', 44, 26, 13, '5', 57),
('1929-30', 'NHL', 'Montreal Canadiens', '0', 44, 21, 14, '9', 51),
('1930-31', 'NHL', 'Montreal Canadiens', '0', 44, 26, 10, '8', 60),
('1931-32', 'NHL', 'Toronto Maple Leafs', '0', 48, 23, 18, '7', 53),
('1932-33', 'NHL', 'New York Rangers', '0', 48, 23, 17, '8', 54),
('1933-34', 'NHL', 'Chicago Black Hawks', '0', 48, 20, 17, '11', 51),
('1934-35', 'NHL', 'Montreal Maroons', '0', 48, 24, 19, '5', 53),
('1935-36', 'NHL', 'Detroit Red Wings', '0', 48, 24, 16, '8', 56),
('1936-37', 'NHL', 'Detroit Red Wings', '0', 48, 25, 14, '9', 59),
('1937-38', 'NHL', 'Chicago Black Hawks', '0', 48, 14, 25, '9', 37),
('1938-39', 'NHL', 'Boston Bruins', '0', 48, 36, 10, '2', 74),
('1939-40', 'NHL', 'New York Rangers', '0', 48, 27, 11, '10', 64),
('1940-41', 'NHL', 'Boston Bruins', '0', 48, 27, 8, '13', 67),
('1941-42', 'NHL', 'Toronto Maple Leafs', '0', 48, 27, 18, '3', 57),
('1942-43', 'NHL', 'Detroit Red Wings', '0', 50, 25, 14, '11', 61),
('1943-44', 'NHL', 'Montreal Canadiens', '0', 50, 38, 5, '7', 83),
('1944-45', 'NHL', 'Toronto Maple Leafs', '0', 50, 24, 22, '4', 52),
('1945-46', 'NHL', 'Montreal Canadiens', '0', 50, 28, 17, '5', 61),
('1946-47', 'NHL', 'Toronto Maple Leafs', '0', 60, 31, 19, '10', 72),
('1947-48', 'NHL', 'Toronto Maple Leafs', '0', 60, 32, 15, '13', 77),
('1948-49', 'NHL', 'Toronto Maple Leafs', '0', 60, 22, 25, '13', 57),
('1949-50', 'NHL', 'Detroit Red Wings', '0', 70, 37, 19, '14', 88),
('1950-51', 'NHL', 'Toronto Maple Leafs', '0', 70, 41, 16, '13', 95),
('1951-52', 'NHL', 'Detroit Red Wings', '0', 70, 44, 14, '12', 100),
('1952-53', 'NHL', 'Montreal Canadiens', '0', 70, 28, 23, '19', 75),
('1953-54', 'NHL', 'Detroit Red Wings', '0', 70, 37, 19, '14', 88),
('1954-55', 'NHL', 'Detroit Red Wings', '0', 70, 42, 17, '11', 95),
('1955-56', 'NHL', 'Montreal Canadiens', '0', 70, 45, 15, '10', 100),
('1956-57', 'NHL', 'Montreal Canadiens', '0', 70, 35, 23, '12', 82),
('1957-58', 'NHL', 'Montreal Canadiens', '0', 70, 43, 17, '10', 96),
('1958-59', 'NHL', 'Montreal Canadiens', '0', 70, 39, 18, '13', 91),
('1959-60', 'NHL', 'Montreal Canadiens', '0', 70, 40, 18, '12', 92),
('1960-61', 'NHL', 'Chicago Black Hawks', '0', 70, 29, 24, '17', 75),
('1961-62', 'NHL', 'Toronto Maple Leafs', '0', 70, 37, 22, '11', 85),
('1962-63', 'NHL', 'Toronto Maple Leafs', '0', 70, 35, 23, '12', 82),
('1963-64', 'NHL', 'Toronto Maple Leafs', '0', 70, 33, 25, '12', 78),
('1964-65', 'NHL', 'Montreal Canadiens', '0', 70, 36, 23, '11', 83),
('1965-66', 'NHL', 'Montreal Canadiens', '0', 70, 41, 21, '8', 90),
('1966-67', 'NHL', 'Toronto Maple Leafs', '0', 70, 32, 27, '11', 75),
('1967-68', 'NHL', 'Montreal Canadiens', '0', 74, 42, 22, '10', 94),
('1968-69', 'NHL', 'Montreal Canadiens', '0', 76, 46, 19, '11', 103),
('1969-70', 'NHL', 'Boston Bruins', '0', 76, 40, 17, '19', 99),
('1970-71', 'NHL', 'Montreal Canadiens', '0', 78, 42, 23, '13', 97),
('1971-72', 'NHL', 'Boston Bruins', '0', 78, 54, 13, '11', 119),
('1972-73', 'NHL', 'Montreal Canadiens', '0', 78, 52, 10, '16', 120),
('1973-74', 'NHL', 'Philadelphia Flyers', '0', 78, 50, 16, '12', 112),
('1974-75', 'NHL', 'Philadelphia Flyers', '0', 80, 51, 18, '11', 113),
('1975-76', 'NHL', 'Montreal Canadiens', '0', 80, 58, 11, '11', 127),
('1976-77', 'NHL', 'Montreal Canadiens', '0', 80, 60, 8, '12', 132),
('1977-78', 'NHL', 'Montreal Canadiens', '0', 80, 59, 10, '11', 129),
('1978-79', 'NHL', 'Montreal Canadiens', '0', 80, 52, 17, '11', 115),
('1979-80', 'NHL', 'New York Islanders', '0', 80, 39, 28, '13', 91),
('1980-81', 'NHL', 'New York Islanders', '0', 80, 48, 18, '14', 110),
('1981-82', 'NHL', 'New York Islanders', '0', 80, 54, 16, '10', 118),
('1982-83', 'NHL', 'New York Islanders', '0', 80, 42, 26, '12', 96),
('1983-84', 'NHL', 'Edmonton Oilers', '0', 80, 57, 18, '5', 119),
('1984-85', 'NHL', 'Edmonton Oilers', '0', 80, 49, 20, '11', 109),
('1985-86', 'NHL', 'Montreal Canadiens', '0', 80, 40, 33, '7', 87),
('1986-87', 'NHL', 'Edmonton Oilers', '0', 80, 50, 24, '6', 106),
('1987-88', 'NHL', 'Edmonton Oilers', '0', 80, 44, 25, '11', 99),
('1988-89', 'NHL', 'Calgary Flames', '0', 80, 54, 17, '9', 117),
('1989-90', 'NHL', 'Edmonton Oilers', '0', 80, 38, 28, '14', 90),
('1990-91', 'NHL', 'Pittsburgh Penguins', '0', 80, 41, 33, '6', 88),
('1991-92', 'NHL', 'Pittsburgh Penguins', '0', 80, 39, 32, '9', 87),
('1992-93', 'NHL', 'Montreal Canadiens', '0', 84, 48, 30, '6', 102),
('1993-94', 'NHL', 'New York Rangers', '0', 84, 52, 24, '8', 112),
('1994-95', 'NHL', 'New Jersey Devils', '0', 48, 22, 18, '8', 52),
('1995-96', 'NHL', 'Colorado Avalanche', '0', 82, 47, 25, '10', 104),
('1996-97', 'NHL', 'Detroit Red Wings', '0', 82, 38, 26, '18', 94),
('1997-98', 'NHL', 'Detroit Red Wings', '0', 82, 44, 23, '15', 103),
('1998-99', 'NHL', 'Dallas Stars', '29', 82, 51, 19, '12', 114),
('1999-00', 'NHL', 'New Jersey Devils', '27', 82, 45, 24, '8', 103),
('2000-01', 'NHL', 'Colorado Avalanche', '28', 82, 52, 16, '10', 118),
('2001-02', 'NHL', 'Detroit Red Wings', '31', 82, 51, 17, '10', 116),
('2002-03', 'NHL', 'New Jersey Devils', '29', 82, 46, 20, '10', 108),
('2003-04', 'NHL', 'Tampa Bay Lightning', '28', 82, 46, 22, '8', 106),
('2005-06', 'NHL', 'Carolina Hurricanes', '29', 82, 52, 22, '', 112),
('2006-07', 'NHL', 'Anaheim Ducks', '28', 82, 48, 20, '', 110),
('2007-08', 'NHL', 'Detroit Red Wings', '32', 82, 54, 21, '', 115),
('2008-09', 'NHL', 'Pittsburgh Penguins', '26', 82, 45, 28, '', 99),
('2009-10', 'NHL', 'Chicago Blackhawks', '26', 82, 52, 22, '', 112),
('2010-11', 'NHL', 'Boston Bruins', '28', 82, 46, 25, '', 103),
('2011-12', 'NHL', 'Los Angeles Kings', '26', 82, 40, 27, '', 95),
('2012-13', 'NHL', 'Chicago Blackhawks', '26', 48, 36, 7, '', 77),
('2013-14', 'NHL', 'Los Angeles Kings', '27', 82, 46, 28, '', 100),
('2014-15', 'NHL', 'Chicago Blackhawks', '29', 82, 48, 28, '', 102),
('2015-16', 'NHL', 'Pittsburgh Penguins', '29', 82, 48, 26, '', 104),
('2016-17', 'NHL', 'Pittsburgh Penguins', '28', 82, 50, 21, '', 111);

--
-- Triggers `Stanley_Cup_Winners`
--
DROP TRIGGER IF EXISTS `New_Cup_Champion`;
DELIMITER $$
CREATE TRIGGER `New_Cup_Champion` AFTER INSERT ON `Stanley_Cup_Winners` FOR EACH ROW BEGIN
 DELETE FROM Trophies 
 WHERE Trophy = 'Stanley Cup (Playoff Champion)';
 insert into Trophies (Trophy,Most_Recently_Won_By,Most_All_Time_Wins,Number_Of_Wins)
 values('Stanley Cup (Playoff Champion)',new.Team,'Montreal Canadiens',24);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Trophies`
--

DROP TABLE IF EXISTS `Trophies`;
CREATE TABLE `Trophies` (
  `Trophy` varchar(255) NOT NULL,
  `Most_Recently_Won_By` varchar(255) NOT NULL,
  `Most_All_Time_Wins` varchar(255) NOT NULL,
  `Number_Of_Wins` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Trophies`
--

INSERT INTO `Trophies` (`Trophy`, `Most_Recently_Won_By`, `Most_All_Time_Wins`, `Number_Of_Wins`) VALUES
('Art Ross (Most Points)', 'Connor McDavid', 'Wayne Gretzky', 10),
('Calder (Rookie OTY)', 'Auston Matthews', 'N/A', 1),
('Hart Memorial (League MVP)', 'Connor McDavid', 'Wayne Gertzky', 9),
('Jack Adams (Coach OTY)', 'John Tortorella', 'Pat Burns', 4),
('Lady Byng (Nice Guy)', 'Johnny Gaudreau', 'Frank Boucher', 7),
('Norris (Best Defenseman)', 'Brent Burns', 'Bobby Orr', 8),
('Rocket Richard (Most Goals)', 'Alex Ovechkin', 'Alex Ovechkin', 7),
('Selke (Top Defensive Forward)', 'Patrice Bergeron', 'Patrice Bergeron', 4),
('Stanley Cup (Playoff Champion)', 'Detroit Red Wings', 'Montreal Canadiens', 24),
('Vezina (Best Goalie)', 'Sergei Bobrovsky ', 'Jacques Plante', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AHL`
--
ALTER TABLE `AHL`
  ADD PRIMARY KEY (`name`),
  ADD KEY `AHL_ibfk_1` (`NHL_Affiliate`);

--
-- Indexes for table `ECHL`
--
ALTER TABLE `ECHL`
  ADD PRIMARY KEY (`name`),
  ADD KEY `ECHL_ibfk_1` (`affiliate`);

--
-- Indexes for table `NHL`
--
ALTER TABLE `NHL`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `retired`
--
ALTER TABLE `retired`
  ADD PRIMARY KEY (`Player`);

--
-- Indexes for table `Standings`
--
ALTER TABLE `Standings`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `Stanley_Cup_Winners`
--
ALTER TABLE `Stanley_Cup_Winners`
  ADD PRIMARY KEY (`Season`);

--
-- Indexes for table `Trophies`
--
ALTER TABLE `Trophies`
  ADD PRIMARY KEY (`Trophy`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AHL`
--
ALTER TABLE `AHL`
  ADD CONSTRAINT `AHL_ibfk_1` FOREIGN KEY (`NHL_Affiliate`) REFERENCES `NHL` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ECHL`
--
ALTER TABLE `ECHL`
  ADD CONSTRAINT `ECHL_ibfk_1` FOREIGN KEY (`affiliate`) REFERENCES `AHL` (`NHL_Affiliate`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
