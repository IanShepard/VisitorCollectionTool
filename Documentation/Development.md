# Develpoer's Documentation


In order to obtain the same developer's environment as it was created in, you will need several programs and tools and run some scrips. This document will describe which applications need to be installed and guid you through the setup process so that you too can work on this project!

## Have your favorite simple text editor installed

There are many text editors out there with different features and functionalities. One text edior is not prefered over the other so I suggest that you use an editor that you are most familiar with that is atleast in part designed for web programming (HTML, CSS, JS, PHP).
But if don't have one then I suggest using [Sublime Text](https://www.sublimetext.com/3).

## XAMPP for local server testing

Download and install [xampp](https://www.apachefriends.org/download.html) for your operating system. Extract the files and open the readme.txt and follow the instructions for installation


## FTP client for remoter server testing

Download and install [WinSCP](https://winscp.net/eng/download.php)

## MySQL Workbench

Download and install [MySQL workbench](https://dev.mysql.com/downloads/workbench/). Connect to database using username root and no password unless changed you setup a password during installation. Download these few short scripts:

[createDBTables.sql](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/createDBTables.sql)

[sampleData.sql](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/sampleData.sql)

Open and run script called createDBTables.sql to create database and base tables. Open and run sampleData.sql for sample data if desired.
