CREATE DATABASE `icdb`;

USE `icdb`;

CREATE TABLE `event`(
`Eventid` int(6) NOT NULL AUTO_INCREMENT, 
`Name` VARCHAR(50) NOT NULL, 
`Date` date NOT NULL, 
PRIMARY KEY(`Eventid`)) 
ENGINE = InnoDB;

CREATE TABLE `attendee`(
`Id` int(6) NOT NULL AUTO_INCREMENT, 
`Fname` VARCHAR(30) NOT NULL, 
`Lname` VARCHAR(30) NOT NULL, 
`Phone` VARCHAR(30), 
`Email` VARCHAR(50) NOT NULL, 
`Eventid` int(6) NOT NULL, 
`Attended` BOOLEAN NOT NULL, 
PRIMARY KEY(`Id`), 
FOREIGN KEY(`Eventid`) REFERENCES event(`Eventid`)) 
ENGINE = InnoDB;
