-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2023 at 04:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id` int(11) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id`, `profile_picture`, `name`, `description`) VALUES
(1, 'https://yt3.ggpht.com/urNLBJGryDamao5r0jmlTg84mIBOoaeJd6XR67j4nuRd0iRvv5g-MUgaowsWKCs8V_t4KwST=s88-c-k-c0x00ffffff-no-rj', 'NBA', 'The NBA is the premier professional basketball league in the United States and Canada. The league is truly global, with games and programming in 215 countries and territories in 47 languages. The NBA consists of 30 teams. The NBA offers real time access to live regular season NBA games with a subscription to NBA LEAGUE PASS, available globally for TV, broadband, and mobile.  Real-time Stats, Scores, Highlights and more are available to fans on web and mobile with the NBA App. \n\nFor news, stories, highlights and more, go to our official website at https://app.link.nba.com/e/NBA_site\n');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `id` int(11) NOT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`id`, `video_link`, `title`, `description`, `thumbnail`) VALUES
(1, 'https://www.youtube.com/watch?v=1TEB-I4NMGc', 'Stephen Curry Talks: Chris Paul, Jordan Poole&#39;s Future, Summer Golf &amp; More!', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/1TEB-I4NMGc/default.jpg'),
(2, 'https://www.youtube.com/watch?v=a5KlSysRe_E', 'PELICANS vs WARRIORS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/a5KlSysRe_E/default.jpg'),
(3, 'https://www.youtube.com/watch?v=W76n9CJLN2c', 'HAWKS vs NUGGETS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/W76n9CJLN2c/default.jpg'),
(4, 'https://www.youtube.com/watch?v=5fgEBgG0koo', 'Stephen Curry &amp; Chris Paul link up at The #NBA2KSummerLeague! 👀🔥| #Shorts', '', 'https://i.ytimg.com/vi/5fgEBgG0koo/default.jpg'),
(5, 'https://www.youtube.com/watch?v=dQEUD9f4uDs', 'Victor Wembanyama Walks Off After His Impressive Performance! 👏🔥| #Shorts', '', 'https://i.ytimg.com/vi/dQEUD9f4uDs/default.jpg'),
(6, 'https://www.youtube.com/watch?v=iEVJq-z8ye8', 'Michael Devoe GOES OFF For 29 Points In Trail Blazers W!', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/iEVJq-z8ye8/default.jpg'),
(7, 'https://www.youtube.com/watch?v=U6fdQ_Pluh0', '#1 Overall Pick Victor Wembanyama Records MONSTER 27-PT DOUBLE-DOUBLE! | 27 PTS, 12 REBS &amp; 3 BLK', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/U6fdQ_Pluh0/default.jpg'),
(8, 'https://www.youtube.com/watch?v=vVXlwGkwO8I', 'SPURS vs TRAIL BLAZERS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/vVXlwGkwO8I/default.jpg'),
(9, 'https://www.youtube.com/watch?v=Dm_vd182C3s', 'CELTICS vs WIZARDS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Dm_vd182C3s/default.jpg'),
(10, 'https://www.youtube.com/watch?v=ZhV8b9ok-jo', 'Victor Wembanyama Finishes Through The Contact For The And-1! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/ZhV8b9ok-jo/default.jpg'),
(11, 'https://www.youtube.com/watch?v=OjrcF6-9mxw', 'JD Davison Takes Flight For The AMAZING Poster! 😳😤| #Shorts', '', 'https://i.ytimg.com/vi/OjrcF6-9mxw/default.jpg'),
(12, 'https://www.youtube.com/watch?v=r7X_ld_rhV4', 'Which WEMBY JAM Was Better? 🤔😤| #Shorts', '', 'https://i.ytimg.com/vi/r7X_ld_rhV4/default.jpg'),
(13, 'https://www.youtube.com/watch?v=PyrroqE_NSo', 'Victor Wembanyama is ready to go for his 2nd game of Summer League action! 😤| #Shorts', '', 'https://i.ytimg.com/vi/PyrroqE_NSo/default.jpg'),
(14, 'https://www.youtube.com/watch?v=k629acfwEdA', 'Cam Whitmore with the EMPHATIC SLAM! 😤| #Shorts', '', 'https://i.ytimg.com/vi/k629acfwEdA/default.jpg'),
(15, 'https://www.youtube.com/watch?v=lOAaQ6mIP1s', 'Tari Eason (26 PTS) &amp; Cam Whitmore (21 PTS) SHINE In Rockets Summer League W!', 'Tari Eason (26 points, 9 rebounds) and Cam Whitmore (21 points, 3 3pt. FG) combined for 47 points in the Houston Rockets ...', 'https://i.ytimg.com/vi/lOAaQ6mIP1s/default.jpg'),
(16, 'https://www.youtube.com/watch?v=IMM5jL_aosI', 'PISTONS vs ROCKETS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/IMM5jL_aosI/default.jpg'),
(17, 'https://www.youtube.com/watch?v=VYFTmJk77Tk', 'Tunnel Fits: Unveiling the Fashion Statements of NBA Players.', 'Live from NBA Con July 7-9 in Las Vegas. Paolo Banchero, Waraire Boswell, Calyann Barnett, & Ronnie 2K unravel the style ...', 'https://i.ytimg.com/vi/VYFTmJk77Tk/default.jpg'),
(18, 'https://www.youtube.com/watch?v=r4clUHL9rIE', 'Jabari Smith Jr. Has Been ON FIRE 🔥 Back-to-Back 30+ PT Games!', 'Led by Jabari Smith Jr.\'s 38 points, 7 rebounds and 6 assists, the Rockets defeat the Pistons, 113-101. Tari Eason (26 points, ...', 'https://i.ytimg.com/vi/r4clUHL9rIE/default.jpg'),
(19, 'https://www.youtube.com/watch?v=U9cpXNvdFwg', 'KNICKS vs NETS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/U9cpXNvdFwg/default.jpg'),
(20, 'https://www.youtube.com/watch?v=NE0FfQy2RUY', 'MASSIVE Jabari Smith Jr. Slam off the Tari Eason Find! 👀 | #Shorts', '', 'https://i.ytimg.com/vi/NE0FfQy2RUY/default.jpg'),
(21, 'https://www.youtube.com/watch?v=7EGmzTNcvKs', 'Ray Allen checks in from NBA Con! 👏 | #Shorte', '', 'https://i.ytimg.com/vi/7EGmzTNcvKs/default.jpg'),
(22, 'https://www.youtube.com/watch?v=xjtIi82no_g', 'LAKERS vs HORNETS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/xjtIi82no_g/default.jpg'),
(23, 'https://www.youtube.com/watch?v=iAYDif-S79w', 'RAPTORS vs CAVALIERS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/iAYDif-S79w/default.jpg'),
(24, 'https://www.youtube.com/watch?v=-L0jRoUTxUo', 'Who has the most hops in the Nance Family? 🤔 Larry Nance Jr. weighs in! 🤣 | #Shorts', '', 'https://i.ytimg.com/vi/-L0jRoUTxUo/default.jpg'),
(25, 'https://www.youtube.com/watch?v=kFoqrJbwayg', '“I still am a rookie” - Jerry West talks meeting Kareem for the first time! 🗣 | #Shorts', '', 'https://i.ytimg.com/vi/kFoqrJbwayg/default.jpg'),
(26, 'https://www.youtube.com/watch?v=AB9yJMtCnkE', 'Living Legends: A Conversation with Kareem Abdul-Jabbar &amp; Jerry West', 'Live from NBA Con July 7-9 in Las Vegas. Two of the game\'s icons Kareem Abdul-Jabbar & Jerry West delve into their incredible ...', 'https://i.ytimg.com/vi/AB9yJMtCnkE/default.jpg'),
(27, 'https://www.youtube.com/watch?v=Ig2X9W3aQAk', 'Coming soon to Las Vegas... 👀 NBA In-Season Tournament x @SphereVegas  | #Shorts', '', 'https://i.ytimg.com/vi/Ig2X9W3aQAk/default.jpg'),
(28, 'https://www.youtube.com/watch?v=FXGji75QOrA', 'These views of @SphereVegas  🤩 | #Shorts', '', 'https://i.ytimg.com/vi/FXGji75QOrA/default.jpg'),
(29, 'https://www.youtube.com/watch?v=2wgMySg1O9M', 'Ray Allen, Jesser &amp; Kris London celebrate the NBA In-Season Tournament at @SphereVegas 👏 | #Shorts', '', 'https://i.ytimg.com/vi/2wgMySg1O9M/default.jpg'),
(30, 'https://www.youtube.com/watch?v=u7JIo8ABeTs', '16th Overall Pick Keyonte George GOES OFF | 33 PTS, 10 AST, 6 3PM', 'Led by Keyonte George\'s 33 points and 10 assists, the Utah Jazz defeat the LA Clippers, 105-99. Ochai Agbaji added 21 points, ...', 'https://i.ytimg.com/vi/u7JIo8ABeTs/default.jpg'),
(31, 'https://www.youtube.com/watch?v=vEcMufZWia8', 'CLIPPERS vs JAZZ | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/vEcMufZWia8/default.jpg'),
(32, 'https://www.youtube.com/watch?v=VKX835xm1_E', 'BUCKS vs SUNS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/VKX835xm1_E/default.jpg'),
(33, 'https://www.youtube.com/watch?v=pYYbkzLW2MM', 'PACERS vs WIZARDS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/pYYbkzLW2MM/default.jpg'),
(34, 'https://www.youtube.com/watch?v=02wfJ8Yk2Dw', 'Tacko Fall Block ➡️ MarJon Beauchamp SELF ALLEY-OOP! 👀 | #Shorts', '', 'https://i.ytimg.com/vi/02wfJ8Yk2Dw/default.jpg'),
(35, 'https://www.youtube.com/watch?v=PYZG7jYQ4v8', '#7 Overall Pick Bilal Coulibaly GOT UP for the Block! 🔥 | #Shorts', '', 'https://i.ytimg.com/vi/PYZG7jYQ4v8/default.jpg'),
(36, 'https://www.youtube.com/watch?v=sH3oxgpYEng', 'Doris Burke congratulates Kyle Kuzma on his new deal while interviewing Jordan Poole 😂 | #Shorts', '', 'https://i.ytimg.com/vi/sH3oxgpYEng/default.jpg'),
(37, 'https://www.youtube.com/watch?v=AHvhFjIT-GE', 'BULLS vs GRIZZLIES | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/AHvhFjIT-GE/default.jpg'),
(38, 'https://www.youtube.com/watch?v=S-N5OgDblJI', 'Richard Jefferson explains the inaugural NBA In-Season Tournament! 🍿 | #Shorts', '', 'https://i.ytimg.com/vi/S-N5OgDblJI/default.jpg'),
(39, 'https://www.youtube.com/watch?v=odjiCLVWDy0', 'The NBA Cup is Revealed for the First Time EVER! 🏆 | #Shorts', '', 'https://i.ytimg.com/vi/odjiCLVWDy0/default.jpg'),
(40, 'https://www.youtube.com/watch?v=0XibbdITqWg', '#6 Overall Pick Anthony Black Shines In His Summer League Debut!', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/0XibbdITqWg/default.jpg'),
(41, 'https://www.youtube.com/watch?v=0MuEA5AreTI', '2023 In-Season Tournament East &amp; West Groups Reveal!', 'Starting Nov. 3, all 30 teams will compete for the NBA Cup with 8 teams advancing into the knockout rounds! The tournament ...', 'https://i.ytimg.com/vi/0MuEA5AreTI/default.jpg'),
(42, 'https://www.youtube.com/watch?v=85yb-mxD_14', 'Wemby &amp; Kareem Share a moment at NBA Con! 🔥| #Shorts', '', 'https://i.ytimg.com/vi/85yb-mxD_14/default.jpg'),
(43, 'https://www.youtube.com/watch?v=fT1Vk286308', '2023 NBA In-Season Tournament Explained!', 'Starting Nov. 3, all 30 teams will compete for the NBA Cup with 8 teams advancing into the knockout rounds! The tournament ...', 'https://i.ytimg.com/vi/fT1Vk286308/default.jpg'),
(44, 'https://www.youtube.com/watch?v=7QSVF5KRMZk', 'PISTONS vs MAGIC | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/7QSVF5KRMZk/default.jpg'),
(45, 'https://www.youtube.com/watch?v=5syXxfY4Ec0', 'Nike Peach Jam:  New York Renaissance vs. Vegas Elite | FULL GAME', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/5syXxfY4Ec0/default.jpg'),
(46, 'https://www.youtube.com/watch?v=4KrDKhbtpLI', 'Then &amp; Now: The Evolution of Basketball with Scoot Henderson and Carmelo Anthony', 'Live from NBA Con July 7-9 in Las Vegas. A conversation between two 3rd overall draft picks – Carmelo Anthony & Scoot ...', 'https://i.ytimg.com/vi/4KrDKhbtpLI/default.jpg'),
(47, 'https://www.youtube.com/watch?v=xGbCuulkZ38', 'KNICKS vs 76ERS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/xGbCuulkZ38/default.jpg'),
(48, 'https://www.youtube.com/watch?v=esp0JbRQ4eE', '2 Chainz &amp; His Son Pulled Up to NBA Con! 🏀 | #Shorts', '', 'https://i.ytimg.com/vi/esp0JbRQ4eE/default.jpg'),
(49, 'https://www.youtube.com/watch?v=9L3JYhCQcIo', 'Cameron &amp; Cayden Boozer Combine For 31 PTS &amp; 17 AST vs Russell Westbrook&#39;s Team WHYNOT!', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/9L3JYhCQcIo/default.jpg'),
(50, 'https://www.youtube.com/watch?v=Lx05H5lfLno', 'NIGHTRYDAS ELITE vs WHYNOT | NIKE EYBL PEACH JAM | FULL GAME | July 8th, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Lx05H5lfLno/default.jpg'),
(51, 'https://www.youtube.com/watch?v=C1Po3G9vaSc', '#10 Overall Pick Cason Wallace Is On Fire From 3 In His Summer League Debut! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/C1Po3G9vaSc/default.jpg'),
(52, 'https://www.youtube.com/watch?v=nbEepkPDGYo', 'Georgia Stars vs Team Ramey | NIKE EYBL PEACH JAM | FULL GAME | July 8th, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/nbEepkPDGYo/default.jpg'),
(53, 'https://www.youtube.com/watch?v=dVItR5pttAw', 'Nike Peach Jam: Why Not vs. Nightrydas | FULL GAME', 'Watch live and remember, after the game concludes go over to the NBA App to watch the rest of today\'s Peach Jam action!', 'https://i.ytimg.com/vi/dVItR5pttAw/default.jpg'),
(54, 'https://www.youtube.com/watch?v=7Rxo0Dop_sU', 'MAVERICKS vs THUNDER | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/7Rxo0Dop_sU/default.jpg'),
(55, 'https://www.youtube.com/watch?v=wpie4gHodf0', 'Orlando Robinson GOES OFF For 36 Points In Heat W!', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/wpie4gHodf0/default.jpg'),
(56, 'https://www.youtube.com/watch?v=l-JtEVksAUw', 'Celtics Rookie Jordan Walsh Drops 18 PTS In Summer League Debut!', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/l-JtEVksAUw/default.jpg'),
(57, 'https://www.youtube.com/watch?v=C51exQOADjc', 'HEAT vs CELTICS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/C51exQOADjc/default.jpg'),
(58, 'https://www.youtube.com/watch?v=4CQn0AO-iLA', 'Play Make Her w/ Karl-Anthony Towns, Malika Andrews, &amp; Jessica Holtz.', 'Live from NBA Con July 7-9 in Las Vegas. Insights into athlete-agent relationships, diversity in sports, and the future from ...', 'https://i.ytimg.com/vi/4CQn0AO-iLA/default.jpg'),
(59, 'https://www.youtube.com/watch?v=Zg6VsLtoZsg', 'Chet Holmgren with the CHASE-DOWN Block! 😳| #Shorts', '', 'https://i.ytimg.com/vi/Zg6VsLtoZsg/default.jpg'),
(60, 'https://www.youtube.com/watch?v=hndPwffUV-I', '10th Overall Pick Cason Wallace Shines In First Half Of Summer League Action!', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/hndPwffUV-I/default.jpg'),
(61, 'https://www.youtube.com/watch?v=BLseKs84l0Y', 'WARRIORS vs LAKERS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/BLseKs84l0Y/default.jpg'),
(62, 'https://www.youtube.com/watch?v=dzrVjz0TMVs', 'KINGS vs HAWKS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/dzrVjz0TMVs/default.jpg'),
(63, 'https://www.youtube.com/watch?v=QvlCDwUt8uc', 'Max Christie Reaches WAY BACK for the Tomahawk Slam! 😤 | #Shorts', '', 'https://i.ytimg.com/vi/QvlCDwUt8uc/default.jpg'),
(64, 'https://www.youtube.com/watch?v=X-W7qMavO-g', 'SPURS vs HORNETS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/X-W7qMavO-g/default.jpg'),
(65, 'https://www.youtube.com/watch?v=uIphLx4zvT0', 'Julian Champagnie Attacks the Rim for the RIDICULOUS Poster! 💪 | #Shorts', '', 'https://i.ytimg.com/vi/uIphLx4zvT0/default.jpg'),
(66, 'https://www.youtube.com/watch?v=x7l6J0zv_ts', '#1 Overall Pick Victor Wembanyama Makes His Summer League Debut!', 'The San Antonio Spurs defeated the Charlotte Hornets, 76-68. Victor Wembanyama totaled 9 points, 8 rebounds, 5 blocks, and 3 ...', 'https://i.ytimg.com/vi/x7l6J0zv_ts/default.jpg'),
(67, 'https://www.youtube.com/watch?v=vPEbHWbL_YE', 'Alley-Oop POSTER By Kai Jones! 🤯 | #Shorts', '', 'https://i.ytimg.com/vi/vPEbHWbL_YE/default.jpg'),
(68, 'https://www.youtube.com/watch?v=Te7_2IaSpvk', 'Brandon Miller with the HUGE SLAM off the Steal! 🔥 | #Shorts', '', 'https://i.ytimg.com/vi/Te7_2IaSpvk/default.jpg'),
(69, 'https://www.youtube.com/watch?v=ltwW0KcMn2o', 'CAVALIERS vs NETS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ltwW0KcMn2o/default.jpg'),
(70, 'https://www.youtube.com/watch?v=uLGqLwXIxxI', 'Cavaliers Rookie Emoni Bates Puts Up 16 PTS, 6 AST, 2 STL In Summer League Debut!', 'The Cleveland Cavaliers defeated the Brooklyn Nets, 101-97. Sharife Cooper led all scorers with 27 points as Emoni Bates (16 ...', 'https://i.ytimg.com/vi/uLGqLwXIxxI/default.jpg'),
(71, 'https://www.youtube.com/watch?v=Tle-bA7truY', 'Kareem, J. Cole, Trae Young &amp; More Stars Out In Summer League! ⭐️ | #Shorts', '', 'https://i.ytimg.com/vi/Tle-bA7truY/default.jpg'),
(72, 'https://www.youtube.com/watch?v=Sjgyl6Fp7SY', '#1 Overall Pick Victor Wembanyama’s First Summer League Bucket! 👀 | #Shorts', '', 'https://i.ytimg.com/vi/Sjgyl6Fp7SY/default.jpg'),
(73, 'https://www.youtube.com/watch?v=VQ-CPpUpaiU', 'Victor Wembanyama’s Handle &amp; Vision On Display! 🔥 | #Shorts', '', 'https://i.ytimg.com/vi/VQ-CPpUpaiU/default.jpg'),
(74, 'https://www.youtube.com/watch?v=9_-11LhgrLs', '#1 Overall Pick Victor Wembanyama&#39;s First Summer League Bucket!', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/9_-11LhgrLs/default.jpg'),
(75, 'https://www.youtube.com/watch?v=8yic-zfVy6w', 'ROCKETS vs TRAIL BLAZERS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/8yic-zfVy6w/default.jpg'),
(76, 'https://www.youtube.com/watch?v=GTAGERY6LTY', '#20 Overall Pick Cam Whitmore &amp; #4 Amen Thompson Shine In Their Summer League Debuts!', 'Jabari Smith made a game-winning 3PT from the top of the arc to win the game for the Houston Rockets, as they defeat the ...', 'https://i.ytimg.com/vi/GTAGERY6LTY/default.jpg'),
(77, 'https://www.youtube.com/watch?v=AMSbxk8C7xg', 'Jabari Smith Jr. Hits INSANE GAME-WINNER With 0.6 On The Clock!', 'Jabari Smith made a game-winning 3PT from the top of the arc to win the game for the Houston Rockets, as they defeat the ...', 'https://i.ytimg.com/vi/AMSbxk8C7xg/default.jpg'),
(78, 'https://www.youtube.com/watch?v=dvVdiIKeERc', '#3 Overall Pick Scoot Henderson Shines In His Summer League Debut!', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/dvVdiIKeERc/default.jpg'),
(79, 'https://www.youtube.com/watch?v=aNrws21QlrU', 'Raptors Rookies Gradey Dick &amp; Markquis Nowell Make Their Summer League Debuts!', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/aNrws21QlrU/default.jpg'),
(80, 'https://www.youtube.com/watch?v=ZoPv9gLq3A8', 'BULLS vs RAPTORS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ZoPv9gLq3A8/default.jpg'),
(81, 'https://www.youtube.com/watch?v=RRaz7gX_qc4', 'Brad Beal Elite v NY Ren&#39;s | NIKE EYBL PEACH JAM | FULL GAME | July 7th, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/RRaz7gX_qc4/default.jpg'),
(82, 'https://www.youtube.com/watch?v=cQhKxNlLfKU', 'TOUGH Reverse Finish By #3 Overall Pick Scoot Henderson 🔥 | #Shorts', '', 'https://i.ytimg.com/vi/cQhKxNlLfKU/default.jpg'),
(83, 'https://www.youtube.com/watch?v=Kl0CbiRGwm0', '#3 Overall Pick Scoot Henderson &amp; #4 Amen Thompson Trade Buckets Early In Their Summer League Debuts', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Kl0CbiRGwm0/default.jpg'),
(84, 'https://www.youtube.com/watch?v=yKM4pd27G_M', '#4 Overall Pick Amen Thompson’s Left-Handed Finish for His 1st Summer League Points 🚀 | #Shorts', '', 'https://i.ytimg.com/vi/yKM4pd27G_M/default.jpg'),
(85, 'https://www.youtube.com/watch?v=mYFqzFeRu6g', '#3 Overall Pick Scoot Henderson Creates Space for His 1st Summer League Bucket 👀 | #Shorts', '', 'https://i.ytimg.com/vi/mYFqzFeRu6g/default.jpg'),
(86, 'https://www.youtube.com/watch?v=cGwZ37YarQs', 'NUGGETS vs BUCKS | NBA SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/cGwZ37YarQs/default.jpg'),
(87, 'https://www.youtube.com/watch?v=3JRP1Dunfl4', '14th Overall Pick Jordan Hawkins Shines In Summer League Debut | 16 PTS, 5 AST, 2 STL', 'The Minnesota Timberwolves defeated the New Orleans Pelicans, 102-88. Brandon Williams led Minnesota with 24 points, ...', 'https://i.ytimg.com/vi/3JRP1Dunfl4/default.jpg'),
(88, 'https://www.youtube.com/watch?v=OlJf4A9MW1Q', 'Mike Conley Receives the Joe Dumars Trophy for winning 2022-2023 NBA Sportsmanship Award | #Shorts', '', 'https://i.ytimg.com/vi/OlJf4A9MW1Q/default.jpg'),
(89, 'https://www.youtube.com/watch?v=Ti0ezJ8t0ZY', 'Game Changers: NBA Players Making a Difference On and Off the Court with Mike Conley', 'Live from NBA Con in Las Vegas 7/6-7/9, a chat with Mike Conley about how your favorite stars are creating meaningful, positive ...', 'https://i.ytimg.com/vi/Ti0ezJ8t0ZY/default.jpg'),
(90, 'https://www.youtube.com/watch?v=oXpwHpIIBDA', '“Developing at the right pace” - Carmelo Anthony On Giving Advice To His Son 🗣 | #Shorts', '', 'https://i.ytimg.com/vi/oXpwHpIIBDA/default.jpg'),
(91, 'https://www.youtube.com/watch?v=IT5Pl2PPkRI', 'NBA Champion Peyton Watson THROWS IT DOWN ‼️ | #Shorts', '', 'https://i.ytimg.com/vi/IT5Pl2PPkRI/default.jpg'),
(92, 'https://www.youtube.com/watch?v=v5q5ldEK-xo', 'LeBron James &amp; Carmelo Anthony in the building for Nike EYBL Peach Jam! 🤝#EYBL2023| #Shorts', '', 'https://i.ytimg.com/vi/v5q5ldEK-xo/default.jpg'),
(93, 'https://www.youtube.com/watch?v=1BjvBghzaJE', 'Maine United vs PSA Cardinals | NIKE EYBL PEACH JAM | FULL GAME | July 7th, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/1BjvBghzaJE/default.jpg'),
(94, 'https://www.youtube.com/watch?v=AgYoVMNFkXw', 'INSANE OT ENDING LeBron’s Strive for Greatness vs NH Lightning| NIKE EYBL PEACH JAM', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/AgYoVMNFkXw/default.jpg'),
(95, 'https://www.youtube.com/watch?v=MLDbTJN3gC4', 'Nike Peach Jam: Strive for Greatness vs NH Lightning | FULL GAME', 'Watch live as Strive for Greatness faces off against NH Lightning during Day 3 of Nike Peach Jam. After the game concludes go ...', 'https://i.ytimg.com/vi/MLDbTJN3gC4/default.jpg'),
(96, 'https://www.youtube.com/watch?v=o3G9OqqPB98', 'Coach James is pumped after his SFG squad ties the game! #EYBL2023 😤🔥| #Shorts', '', 'https://i.ytimg.com/vi/o3G9OqqPB98/default.jpg'),
(97, 'https://www.youtube.com/watch?v=FGYez-TfOKM', 'Coach James prepares his SFG squad at Nike EYBL Peach Jam! #EYBL2023 🫡| #Shorts', '', 'https://i.ytimg.com/vi/FGYez-TfOKM/default.jpg'),
(98, 'https://www.youtube.com/watch?v=33k_NVVi0ss', 'Do YOU have your tickets to NBA Con yet? 👀 🎟️  Purchase now at nbacon.com! 🔥🙌| #Shorts', '', 'https://i.ytimg.com/vi/33k_NVVi0ss/default.jpg'),
(99, 'https://www.youtube.com/watch?v=wfrNiRL_pD8', 'Vegas Elite vs Paul George Elite | NIKE EYBL PEACH JAM | FULL GAME | July 6th, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/wfrNiRL_pD8/default.jpg'),
(100, 'https://www.youtube.com/watch?v=wh6SKB13pUg', 'GRIZZLIES vs JAZZ | SALT LAKE CITY SUMMER LEAGUE | FULL GAME HIGHLIGHTS', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/wh6SKB13pUg/default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
