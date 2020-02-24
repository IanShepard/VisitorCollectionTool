DROP DATABASE IF EXISTS `icdb`;
CREATE DATABASE `icdb`;

USE `icdb`;

CREATE TABLE `event`(
`Eventid` int(6) NOT NULL AUTO_INCREMENT, 
`Name` VARCHAR(50) NOT NULL,
`Description` TEXT,
`Date` DATE NOT NULL, 
`Ebid` BIGINT(20) UNIQUE,
PRIMARY KEY(`Eventid`)) 
ENGINE = InnoDB;

CREATE TABLE `attendee`(
`Id` int(6) NOT NULL AUTO_INCREMENT, 
`Fname` VARCHAR(30) NOT NULL, 
`Lname` VARCHAR(30) NOT NULL, 
`Phone` VARCHAR(30) NOT NULL,
`Email` VARCHAR(50) NOT NULL,
`Ebid` BIGINT(20) UNIQUE,
PRIMARY KEY(`Id`))
ENGINE = InnoDB;

CREATE TABLE `attendance`(
`Attendeeid` int(6) NOT NULL,
`Eventid` int(6) NOT NULL,
`Registered` BOOLEAN DEFAULT 0,
`Walkin` BOOLEAN DEFAULT 0,
`Attended` BOOLEAN DEFAULT 0,
PRIMARY KEY(`Attendeeid`, `Eventid`),
FOREIGN KEY(`Attendeeid`) REFERENCES attendee(`id`),
FOREIGN KEY(`Eventid`) REFERENCES event(`Eventid`))
ENGINE = InnoDB;
                                        
CREATE TABLE `user`(
`Username` VARCHAR(20) NOT NULL PRIMARY KEY, 
`Password` VARCHAR(50) NOT NULL) 
ENGINE = InnoDB;

INSERT INTO user VALUES("admin", "e4f4cc82436de1dee9dc22c7d46567bb6e4011bd");
