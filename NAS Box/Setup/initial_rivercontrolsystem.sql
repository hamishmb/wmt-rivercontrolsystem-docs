-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 18, 2020 at 07:05 PM
-- Server version: 5.1.56
-- PHP Version: 5.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rivercontrolsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `EventLog`
--

CREATE TABLE IF NOT EXISTS `EventLog` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Site ID` varchar(99) NOT NULL,
  `Severity` varchar(99) NOT NULL,
  `Event` varchar(99) NOT NULL,
  `Device Time` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `G3Control`
--

CREATE TABLE IF NOT EXISTS `G3Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `G3Readings`
--

CREATE TABLE IF NOT EXISTS `G3Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `G4Control`
--

CREATE TABLE IF NOT EXISTS `G4Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `G4Readings`
--

CREATE TABLE IF NOT EXISTS `G4Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `G5Control`
--

CREATE TABLE IF NOT EXISTS `G5Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `G5Readings`
--

CREATE TABLE IF NOT EXISTS `G5Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `G6Control`
--

CREATE TABLE IF NOT EXISTS `G6Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `G6Readings`
--

CREATE TABLE IF NOT EXISTS `G6Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `NASControl`
--

CREATE TABLE IF NOT EXISTS `NASControl` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SUMPControl`
--

CREATE TABLE IF NOT EXISTS `SUMPControl` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SUMPReadings`
--

CREATE TABLE IF NOT EXISTS `SUMPReadings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SystemStatus`
--

CREATE TABLE IF NOT EXISTS `SystemStatus` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `System ID` varchar(99) NOT NULL,
  `Pi Status` varchar(99) NOT NULL,
  `Software Status` varchar(99) NOT NULL,
  `Current Action` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SystemTick`
--

CREATE TABLE IF NOT EXISTS `SystemTick` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Tick` int(99) NOT NULL,
  `System Time` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE1Control`
--

CREATE TABLE IF NOT EXISTS `VALVE1Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE1Readings`
--

CREATE TABLE IF NOT EXISTS `VALVE1Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE2Control`
--

CREATE TABLE IF NOT EXISTS `VALVE2Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE2Readings`
--

CREATE TABLE IF NOT EXISTS `VALVE2Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE3Control`
--

CREATE TABLE IF NOT EXISTS `VALVE3Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE3Readings`
--

CREATE TABLE IF NOT EXISTS `VALVE3Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE4Control`
--

CREATE TABLE IF NOT EXISTS `VALVE4Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE4Readings`
--

CREATE TABLE IF NOT EXISTS `VALVE4Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE5Control`
--

CREATE TABLE IF NOT EXISTS `VALVE5Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE5Readings`
--

CREATE TABLE IF NOT EXISTS `VALVE5Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE6Control`
--

CREATE TABLE IF NOT EXISTS `VALVE6Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE6Readings`
--

CREATE TABLE IF NOT EXISTS `VALVE6Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE7Control`
--

CREATE TABLE IF NOT EXISTS `VALVE7Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE7Readings`
--

CREATE TABLE IF NOT EXISTS `VALVE7Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE8Control`
--

CREATE TABLE IF NOT EXISTS `VALVE8Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE8Readings`
--

CREATE TABLE IF NOT EXISTS `VALVE8Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE9Control`
--

CREATE TABLE IF NOT EXISTS `VALVE9Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE9Readings`
--

CREATE TABLE IF NOT EXISTS `VALVE9Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE10Control`
--

CREATE TABLE IF NOT EXISTS `VALVE10Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE10Readings`
--

CREATE TABLE IF NOT EXISTS `VALVE10Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE11Control`
--

CREATE TABLE IF NOT EXISTS `VALVE11Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE11Readings`
--

CREATE TABLE IF NOT EXISTS `VALVE11Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE12Control`
--

CREATE TABLE IF NOT EXISTS `VALVE12Control` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Device ID` varchar(99) NOT NULL,
  `Device Status` varchar(99) NOT NULL,
  `Request` varchar(99) NOT NULL,
  `Locked By` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VALVE12Readings`
--

CREATE TABLE IF NOT EXISTS `VALVE12Readings` (
  `ID` int(99) NOT NULL AUTO_INCREMENT,
  `Probe ID` varchar(99) NOT NULL,
  `Tick` int(99) NOT NULL,
  `Measure Time` datetime NOT NULL,
  `Value` varchar(99) NOT NULL,
  `Status` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
