CREATE DATABASE mydb4;
USE mydb4;

SHOW CREATE TABLE Movie;

CREATE TABLE `Movie` (
     `ID` int(11) NOT NULL AUTO_INCREMENT,
     `title` varchar(255) NOT NULL,
     `time` varchar(255) DEFAULT '0',
     `releaseDate` date DEFAULT '1900-01-01',
     PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3

