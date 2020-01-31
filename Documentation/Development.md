# Developer's Documentation


In order to obtain the same developer's environment as it was created in, you will need several programs and tools and run some scrips. This document will describe which applications need to be installed and guid you through the setup process so that you too can work on this project!

## Have your favorite simple text editor installed

There are many text editors out there with different features and functionalities. One text edior is not prefered over the other so I suggest that you use an editor that you are most familiar with that is atleast in part designed for web programming (HTML, CSS, JS, PHP).
But if don't have one then I suggest using [Sublime Text](https://www.sublimetext.com/3).

## XAMPP for local server testing

Download and install [xampp](https://www.apachefriends.org/download.html) for your operating system. Extract the files and open the readme.txt and follow the instructions for installation


## FTP client for remote server testing

Download and install [WinSCP](https://winscp.net/eng/download.php)

## Installing the Application

Ensure that you have Git installed on your machine, if not, navigate to https://git-scm.com/downloads and install the version designed for your system. Also ensure that git is added to your system path so that it can be run from a command prompt/terminal.

Once git is installed, open a command prompt/terminal session and navigate to the htdocs folder within your xampp installation (This can be done using the "cd" command, usage: cd {directory_name}. In the htdocs directory type the following series of commands (do not include the arrows): git init -> git remote add origin https://github.com/mdnessel/VisitorCollectionToolSourceCode.git -> git pull origin master

*DO NOT USE "git clone" FOR THIS STEP* The above steps ensure proper file structure for the web application and git clone will break this!

Once these steps are finished the application is installed and can be configured within the config.ini file in the root of the htdocs directory. This configuration file needs to be changed if you are using EventBrite and if your MySQL installation has been altered from the default settings.

## MySQL Workbench

Download and install [MySQL workbench](https://dev.mysql.com/downloads/workbench/). Connect to database using username root and no password unless changed you setup a password during installation. Ensure that the MySQL server is running through your XAMPP installation by opening the XAMPP control panel found in your XAMPP installation directory and selecting the start option next to MySQL. Download these few short scripts:

[createDBTables.sql](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/createDBTables.sql)

[sampleData.sql](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/sampleData.sql)

Open and run script called createDBTables.sql to create database and base tables. Open and run sampleData.sql for sample data if desired.

## Launching the application

Run xampp-control.exe in C:\xampp. Once running, click the start button for Apache and click the start button for the MySQL server. 

![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/images/documentation/xampp_start.jpg)

The server is now running and can be accessed through localhost.

To launch the webapp simply input localhost to the URL bar in your preferred internet browser if the application is running on the same machine as the server.

For username/password access email mdnessel@bsu.edu for the proper credentials.
