-- Table structure for table `agency`

CREATE TABLE `agency` (
  `aid` int(11) NOT NULL,
  `aname` varchar(100) NOT NULL,
  `agencyField` varchar(40) NOT NULL,
  `aphone` int(10) NOT NULL,
  `address` varchar(1500) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Table structure for table `citizen`

CREATE TABLE `citizen` (
  `cid` int(11) NOT NULL,
  `cname` varchar(40) DEFAULT NULL,
  `dp` longblob,
  `cphone` bigint(11) DEFAULT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Table structure for table `complain`

CREATE TABLE `jobvacancy` (
  `coid` int(11) NOT NULL,
  `job` varchar(250) NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `satisfactory` enum('Yes','No') DEFAULT NULL,
  `startDate` date NOT NULL,
  `endDate` date DEFAULT NULL,
  `description` varchar(1500) NOT NULL,
  `cid` int(11) NOT NULL,
  `referral` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Table structure for table `list`

CREATE TABLE `list` (
  `coid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `listitem` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- Table structure for table `signup`

CREATE TABLE `signup` (
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` enum('Citizen','Agency','Worker') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `wid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `wphone` int(10) NOT NULL,
  `wname` varchar(100) NOT NULL,
  `status` enum('Available','Not available') NOT NULL,
  `professsion` varchar(250) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



