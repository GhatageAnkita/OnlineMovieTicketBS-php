-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 03:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movietheatredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(12, 'BKID6369842', 4, 4, 17, 3, 1, 380, '2021-04-15', '2021-04-15', 1),
(13, 'BKID2313964', 6, 5, 21, 6, 4, 2400, '2021-04-16', '2021-04-15', 1),
(14, 'BKID1766021', 6, 5, 22, 6, 2, 1200, '2021-04-16', '2021-04-16', 1),
(15, 'BKID2219724', 6, 6, 39, 5, 149, 44700, '2023-06-17', '2023-06-17', 1),
(16, 'BKID6425013', 6, 7, 39, 5, 10, 3000, '2023-06-19', '2023-06-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(1, 0, 'Shahin', 'Shahin1', 0),
(2, 3, 'theatre', 'password', 1),
(3, 4, 'theatre2', 'password', 1),
(12, 2, 'harryden@gmail.com', 'password', 2),
(15, 14, 'USR295127', 'PWD195747', 1),
(17, 4, 'bruno@gmail.com', 'password', 2),
(18, 6, 'THR760801', 'PWD649976', 1),
(19, 5, 'james@gmail.com', 'password', 2),
(20, 7, 'THR191157', 'PWD845782', 1),
(21, 8, 'THR231104', 'PWD252594', 1),
(22, 9, 'THR291613', 'PWD124032', 1),
(23, 10, 'THR420578', 'PWD320611', 1),
(24, 6, 'abdulj988@gmail.com', 'abdul12', 2),
(25, 7, 'saniya12@gmail.com', 'saniya25', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `movie_id` int(100) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(255) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(100) NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(18, 6, 'Jug jugg Jeeyo', 'Hindi', 'Jugjugg Jeeyo (transl.?Live a long life) is a 2022 Indian Hindi-language family comedy-drama film directed by Raj Mehta and produced by Dharma Productions and Viacom18 Studios', '2022-06-21', 'images/jug jug jiyo.jpeg', 'https://youtu.be/eBmx7FTgLlE', 0),
(19, 6, 'ATTACK', 'Hindi', 'Attack Movie OTT Release date: According to the studio, Attack, a film featuring John Abraham, Jacqueline Fernandez, and Rakul Preet Singh, is set to be released on April 1, 2022.', '2022-04-01', 'images/Attack.jpeg', 'https://www.bing.com/videos/search?q=Attack+movie+trailer&&view=detail&mid=10A64BB74E141030241410A64BB74E1410302414&&FORM=VRDGAR&ru=%2Fvideos%2Fsearch%3Fq%3DAttack%2Bmovie%2Btrailer%26qs%3Dn%26form%3D', 0),
(20, 6, 'Pathan', 'Hindi', 'Pathaan is a 2023 Indian Hindi-language action thriller film directed by Siddharth Anand and written by Shridhar Raghavan and Abbas Tyrewala, from a story by Anand. The fourth installment in the YRF Spy Universe, it stars Shah Rukh Khan in the titular role with Deepika Padukone, John Abraham.', '2023-06-25', 'images/pathan.jpeg', 'https://youtu.be/Ymu9wVN7pWs', 0),
(21, 6, 'Badhai do', 'Hindi', 'Badhaai Do (transl.?Give Congratulations) is a 2022 Indian Hindi-language social comedy-drama film directed by Harshavardhan Kulkarni', '2022-02-11', 'images/badhaai-do-poster-2.jpeg', 'https://youtu.be/hjxoPh4DM_A', 0),
(22, 6, 'Raees', 'Hindi', 'Raees (transl. Rich) is a 2017 Indian Hindi-language action film directed by Rahul Dholakia and produced by Red Chillies Entertainment and Excel Entertainment. It stars Shah Rukh Khan, Nawazuddin Siddiqui and Mahira Khan.', '2017-06-25', 'images/Raees.jpeg', 'https://youtu.be/J7_1MU3gDk0', 0),
(23, 6, 'Bhool Bhullaiya-2', 'Hindi', 'Bhool Bhulaiyaa 2 was released on 20 May 2022. [1] The film was originally scheduled to be released in theaters on July 31, 2020, but was delayed due to the COVID-19 pandemic.', '2022-05-20', 'images/Bhool.jpeg', 'https://youtu.be/P2KRKxAb2ek', 0),
(24, 6, 'Raksha Bandhan', 'Hindi', 'Raksha Bandhan (transl.?The bond of protection) is a 2022 Indian Hindi-language family comedy-drama film directed by Aanand L. Rai and written by Himanshu Sharma and Kanika Dhillon. ', '2022-08-11', 'images/Raksha-Bandhan.jpg', 'https://youtu.be/fsTnKtENWNQ', 0),
(25, 6, 'Half Girlfriend', 'Hindi', 'Half Girlfriend is an Indian Hindi-language romantic drama film based on the novel of the same name written by Chetan Bhagat.', '2017-05-19', 'images/half girlfriend.jpeg', 'https://youtu.be/726iPnyCgeI', 0),
(26, 6, 'Bachchhan Paandey', 'Hindi', 'Bachchhan Paandey is a 2022 Indian Hindi-language action comedy film directed by Farhad Samji. Produced by Sajid Nadiadwala, the film stars Akshay Kumar, Kriti Sanon, Arshad Warsi and Jacqueline Fernandez', '2022-05-18', 'images/bachan.jpeg', 'https://youtu.be/VwZWFlvrCAU', 0),
(27, 6, 'Selfie', 'Hindi', 'A selfie is a self-portrait photograph, typically taken with a digital camera or smartphone, which may be held in the hand or supported by a selfie stick. Selfies are often shared on social media, via social networking services such as Facebook, Twitter, Snapchat, and Instagram', '2023-02-24', 'images/selfie.jpeg', 'https://youtu.be/Ec2yJUY5KtQ', 0),
(28, 6, 'Sooryavanshi', 'Hindi', 'Sooryavanshi is a 2021 Indian action film written and directed by Rohit Shetty and produced by Reliance Entertainment, Rohit Shetty Picturez, Dharma Productions and Cape of Good Films.', '2021-11-05', 'images/sur.jpeg', 'https://youtu.be/pSHA7v7WZHQ', 0),
(29, 6, 'Laal Singh Chaddha', 'Hindi', 'Laal Singh Chaddha is a 2022 Indian Hindi-language comedy drama film directed by Advait Chandan and written by Atul Kulkarni', '2022-08-11', 'images/laal.jpeg', 'https://youtu.be/R6savS7m0Fg', 0),
(30, 6, 'Kabir SIngh', 'Hindi', 'Kabir Singh is a 2019 Indian Hindi-language romantic drama film written and directed by Sandeep Reddy Vanga and jointly produced by Bhushan Kumar and Krishan Kumar under T-Series Films and Murad Khetani and Ashwin Varde under Cine1 Studios', '2020-06-21', 'images/kabir .jpeg', 'https://youtu.be/RiANSSgCuJk', 0),
(32, 6, 'Maidaan', 'Hindi', 'Maidaan (transl.?Field) is an upcoming Indian Hindi-language biographical sports drama film directed by Amit Sharma and produced by Boney Kapoor, Akash Chawla, Arunava Joy Sengupta and Zee Studios. Based on the golden era of Indian football (1952–1962', '2023-06-23', 'images/Maidaan.jpeg', 'https://youtu.be/eKxfWaO_46A', 0),
(33, 6, 'Tu Jhoothi Main Makkaar', 'Hindi', 'Mar 8, 2023 · Tu Jhoothi Main Makkaar: Directed by Luv Ranjan. With Shraddha Kapoor, Ranbir Kapoor, Nushrratt Bharuccha, Kartik Aaryan. ', '2023-03-08', 'images/tu jhotr.jpeg', 'https://www.facebook.com/watch/?v=3382029132016204', 0),
(34, 6, 'Shubh Mangal Zyada Saavdhan', 'Hindi', 'The Tripathi family is busy gearing up for an unusual wedding, when something more unusual hits them smack on their smiling, ‘Indian Shaadi’ ready faces.', '2020-02-21', 'images/shubh.jpeg', 'https://youtu.be/zvueAbQL8ZI', 0),
(35, 6, 'WAR-1', 'Hindi', 'War was released in theatres worldwide on 2 October 2019, coinciding to Gandhi Jayanti, with dubbed versions in Tamil and Telugu.', '2019-09-02', 'images/war 1.jpeg', 'https://youtu.be/-RuSqMYcQK0', 0),
(36, 6, 'Brahmastra Part-I', 'Hindi', 'This is the story of Shiva who sets out in search of love and self-discovery. During his journey, he has to face many evil forces that threaten our existence.', '2022-09-09', 'images/bharam.jpeg', 'https://youtu.be/g7dTjZuwlAM', 0),
(37, 6, 'Bloody Daddy', 'Hindi', 'A messed up, tenacious man faces off against cops and crime lords to save the one relationship that matters to him.', '2023-06-09', 'images/Bloody_Daddy.jpeg', 'https://youtu.be/A2MknhOYwdk', 0),
(38, 6, 'bloody Daddy', 'Hindi', 'Shahid Kapoor, Sanjay Kapoor, Diana Penty, Ronit Roy, Rajeev Khandelwal, Ankur Bhatia, Vivan Bhathena, Zeishan Quadri, Mukesh Bhhatt, Vikram Mehra, Sartaaj Kakka', '2023-06-09', 'images/Bloody_Daddy.jpeg', 'https://youtu.be/A2MknhOYwdk', 0),
(39, 6, 'Adipurush', 'Hindi', 'Adipurush: Directed by Om Raut. With Kriti Sanon, Saif Ali Khan, Prabhas, Devdutta Nage. Adaptation of Indian mythology that depicts the triumph of good over evil', '2023-06-16', 'images/poster.jpeg', 'https://youtu.be/jF5rJAXUY4A', 0),
(40, 6, 'Zara Hatke Zara Bachke', 'Hindi', 'A couple (Sara Ali Khan, Vicky Kaushal) dreaming of a home of their own away from their family makes use of a Government of India scheme to make it happen.', '2023-06-21', 'images/zara.jpeg', 'https://youtu.be/TNuFo9GBXAc', 0),
(41, 6, 'Aazam', 'Hindi', 'Jimmy Sheirgill, Abhimanyu Singh, Indraneil Sengupta, Vivek Ghamande, Raza Murad, Sayaji Shinde, Ali Khan, Anang Desai, Mushtaq Khan, Sanjeev Tyagi, Alok Pande', '2023-05-26', 'images/aazam.jpeg', 'https://youtu.be/ApOjRqnDR3g', 0),
(42, 6, 'jogira sara ra ra ', 'Hindi', 'Jogi the match maker and Dimple who seeks help to him to get rid of her marriage, both face the consequences as it is eventually decided that Jogi will marry her to save fac', '2023-05-26', 'images/poster2.jpeg', 'https://youtu.be/D2L6t0wuEtE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES
(11, 'Tiger 3', 'Hindi', '2023-11-10', 'It is the most expensive Yash Raj Films project, budgeted at an estimated amount of ?300 crore (US$38 million) Tiger 3 was intially planned to release on 21 April 2023, but was postponed. It is now sc', 'news_images/tiger 3.jpeg'),
(12, 'LEO', 'Hindi', '2023-10-19', 'Leo (also marketed as Leo: Bloody Sweet) is an upcoming Indian Tamil-language action film directed by Lokesh Kanagaraj, who co-wrote the script with Rathna Kumar and Deeraj Vaidy. It is produced by Se', 'news_images/LEO.jpeg'),
(13, 'Jawan', 'Hindi', '2023-09-07', 'Jawan[3] (transl.?Soldier) is an upcoming Indian Hindi-language action thriller film written and directed by Atlee (in his Hindi directorial debut). It stars Shah Rukh Khan in a dual role with Vijay S', 'news_images/jawan.jpeg'),
(14, 'Dunki', 'Hindi', '2023-12-22', 'Dunki: Directed by Rajkumar Hirani. With Shah Rukh Khan, Taapsee Pannu, Boman Irani, Vicky Kaushal. The rampant use of an illegal …  Director: Rajkumar Hirani', 'news_images/dunki.jpeg'),
(15, 'GADDAR2', 'Hindi', '2023-08-11', 'Gadar: Ek Prem Katha (transl.?Rebellion: A Love Story) is a 2001 Indian Hindi-language romantic period action drama film directed by Anil Sharma and set during the Partition of India in 1947', 'news_images/Gaddar.jpeg'),
(16, 'OMG-2', 'Hindi', '2023-08-11', 'MG 2 2023 Comedy Drama Add a plot in your language Director Amit Rai Writers Rajveer Ahuja Chandra Prakash Dwivedi Amit Rai Stars Akshay ', 'news_images/omg.jpeg'),
(18, 'Maidaan', 'Hindi', '2023-06-23', 'Maidaan (transl.?Field) is an upcoming Indian Hindi-language biographical sports drama film directed by Amit Sharma and produced by Boney Kapoor, Akash Chawla, Arunava Joy Sengupta and Zee Studios. Ba', 'news_images/Maidaan.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(4, 'Bruno', 'bruno@gmail.com', '7451112450', 30, 'gender'),
(5, 'James', 'james@gmail.com', '7124445696', 25, 'gender'),
(6, 'ABDUL J', 'abdulj988@gmail.com', '9545666888', 19, 'gender'),
(7, 'saniya', 'saniya12@gmail.com', '9823456699', 19, 'gender');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_screens`
--

CREATE TABLE `tbl_screens` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_screens`
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 3, 'Screen 1', 100, 350),
(2, 3, 'Screen 2', 150, 310),
(3, 4, 'Screen 1', 200, 380),
(4, 14, 'Screen1', 34, 250),
(5, 6, 'Demo Screen', 150, 300),
(6, 6, 'IMX Screen', 200, 600),
(7, 7, 'IMX Screen', 200, 250),
(8, 8, 'Demo screen', 100, 300),
(9, 9, 'IMX Screen', 200, 100),
(10, 10, 'IMX Screen', 300, 150);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(19, 15, 6, 11, '2021-04-15', 0, 1),
(20, 20, 6, 13, '2021-04-15', 0, 1),
(21, 19, 6, 12, '2021-03-31', 1, 1),
(22, 18, 6, 17, '2021-04-16', 1, 1),
(23, 15, 6, 18, '2023-06-22', 1, 1),
(24, 16, 6, 18, '2023-06-22', 1, 1),
(25, 17, 6, 18, '2023-06-22', 1, 0),
(26, 21, 6, 18, '2023-06-22', 1, 0),
(27, 18, 6, 19, '2022-05-11', 1, 1),
(28, 19, 6, 19, '2022-05-11', 1, 0),
(29, 20, 6, 19, '2022-05-11', 1, 1),
(30, 18, 6, 19, '2022-04-01', 1, 0),
(31, 19, 6, 19, '2022-04-01', 1, 0),
(32, 20, 6, 19, '2022-04-01', 1, 0),
(33, 18, 6, 20, '2023-02-26', 1, 0),
(34, 19, 6, 20, '2023-02-26', 1, 0),
(35, 20, 6, 20, '2023-02-26', 1, 0),
(36, 15, 6, 28, '2022-02-25', 1, 0),
(37, 16, 6, 28, '2022-02-25', 1, 1),
(38, 17, 6, 28, '2022-02-25', 1, 0),
(39, 21, 6, 28, '2022-02-25', 1, 1),
(40, 18, 6, 23, '2022-09-12', 1, 0),
(41, 19, 6, 23, '2022-09-12', 1, 0),
(42, 20, 6, 23, '2022-09-12', 1, 0),
(43, 15, 6, 24, '2022-05-03', 1, 0),
(44, 16, 6, 24, '2022-05-03', 1, 0),
(45, 17, 6, 24, '2022-05-03', 1, 0),
(46, 21, 6, 24, '2022-05-03', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

CREATE TABLE `tbl_show_time` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(1, 1, 'Noon', '10:00:00'),
(2, 1, 'Matinee', '14:00:00'),
(3, 1, 'First', '18:00:00'),
(4, 1, 'Second', '21:00:00'),
(5, 2, 'Noon', '10:00:00'),
(6, 2, 'Matinee', '14:00:00'),
(7, 2, 'First', '18:00:00'),
(8, 2, 'Second', '21:00:00'),
(9, 3, 'Noon', '10:00:00'),
(10, 3, 'Matinee', '14:00:00'),
(11, 3, 'First', '18:00:00'),
(12, 3, 'Second', '21:00:00'),
(14, 4, 'Noon', '12:03:00'),
(15, 5, 'First', '00:08:00'),
(16, 5, 'Second', '15:10:00'),
(17, 5, 'Others', '18:10:00'),
(18, 6, 'Noon', '00:02:00'),
(19, 6, 'First', '06:35:00'),
(20, 6, 'Second', '09:18:00'),
(21, 5, 'Matinee', '20:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatre`
--

CREATE TABLE `tbl_theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theatre`
--

INSERT INTO `tbl_theatre` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(3, 'AMC Theatre', '11500 Ash St', 'Leawd', 'DM', 691523),
(4, 'Cinemark', '3900 Dallas Parkway Suite 500 Plano', '12 Street, Ep', 'UD', 691523),
(5, 'Midtown Cinemas', 'Aue', 'Charles Street, EUS', 'DMM', 691523),
(6, 'Riverview Theater', '3800 42nd Ave S', 'Minneapolis, MN 55406', 'Minnesot', 224450),
(7, 'Mangal Talkis ', 'Laxmi Market Miraj', 'Miraj', 'maharashtra', 416410),
(8, 'Arun Cinema', 'Vijaynagar Sangli', 'sangli', 'maharashtra', 416410),
(9, 'Mangal Talkis', 'Laxmi Market Miraj', 'Miraj', 'maharashtra', 416410),
(10, 'SFC Talkis', 'SFC MALL Sangli', 'sangli', 'Maharashtra', 416410);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
