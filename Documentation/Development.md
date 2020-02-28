# Developer's Documentation


In order to obtain the same developer's environment as it was created in, you will need several programs and tools and run some scrips. This document will describe which applications need to be installed and guide you through the setup process so that you, too, can work on this project!

## PHPStorm

Download and install [PHPStrom](https://www.jetbrains.com/phpstorm/download/#section=windows) for your operating system. Tested version is 2019.3.3. You will need to set up a JetBrains account with a license.

Next, setup the environment variables. For Windows operating systems, open the start menu and search for "Environment Variables". A window will display like below. Click Environment Variables.

[](developers_documentation_1)

In this window you should have 2 paths set. The first has Variable Name "PHPStrorm" and the Variable Value is the bin (binary) folder under the installation folder of PHPStrom. It should be similar to this: "C:\Program Files\JetBrains\PhpStorm 2019.3.2\bin". If it is already set, then you may goto the next step. If you do not have it, then you need to click new and set the apropriate entries.

[](devolopers_documentation_2)

The second is Variable Name "Path" and Value "%PhpStrom%". It is very likely that this variable already exist and has many values so you may need to double click the "Path" to see the full list of values as shown below. If it exists, then you may go to the next step. If you still don't see the Value listed then in the Edit environment variables window, click New and put "%PhpStrom%" in the new entry.

[](developers_documentation_3)

PHPStorm is now installed on your machine.

## XAMPP for local server testing

Download and install [xampp](https://www.apachefriends.org/download.html) for your operating system. You can use the readme in the downloaded folder to complete the installation, but the QUICK INSTALLATION has been copied here for your convenience. If you would like more information on XAMPP please refer to the full readme text

* QUICK INSTALLATION:

[NOTE: Unpack the package to your USB stick or a partition of your choice.
There it must be on the highest level like E:\ or W:\. It will
build E:\xampp or W:\xampp or something like this. Please do not use the "setup_xampp.bat" for an USB stick installation!]

Step 1: Unpack the package into a directory of your choice. Please start the
"setup_xampp.bat" and beginning the installation. Note: XAMPP makes no entries in the windows registry and no settings for the system variables.

Step 2: If installation ends successfully, start the Apache 2 with
"apache_start".bat", MySQL with "mysql_start".bat". Stop the MySQL Server with "mysql_stop.bat". For shutdown the Apache HTTPD, only close the Apache Command (CMD). Or use the fine XAMPP Control Panel with double-click on "xampp-control.exe"!

Step 3: Start your browser and type http://127.0.0.1 or http://localhost in the location bar. You should see our pre-made
start page with certain examples and test screens.

Step 4: PHP (with mod_php, as *.php), Perl by default with *.cgi, SSI with *.shtml are all located in => C:\xampp\htdocs\.
Examples:
- C:\xampp\htdocs\test.php => http://localhost/test.php
- C:\xampp\htdocs\myhome\test.php => http://localhost/myhome/test.php

Step 5: XAMPP UNINSTALL? Simply remove the "xampp" Directory.
But before please shutdown the apache and mysql.

## Cloning the GitHub repository

Step 1: Open PHPStorm. In the welcome window, click "Get from Version Control"

![](devolopers_documentation_4)

Step 2: In the version control dropdown, select Git

Step 3: in the URL filed use the GitHub source code repository "https://github.com/mdnessel/VisitorCollectionToolSourceCode.git"

In the Directory field, use "C:\xampp\htdocs\VisitorCollectionTool"

![](devolopers_documentation_5)

Open the project

## Connecting the database

Step 1) At this point make sure that you are running the MySQL server in XAMPP

Step 2) Open the project in PHPStorm, follow [this guide](https://www.jetbrains.com/help/phpstorm/connecting-to-a-database.html#connect-to-mysql-database) to connect your MySQL database in PHPStorm.

Step 3) Creating the database. Open a new console from the database sidebar. You can get there my going to View -> Tool Windows -> Database. Right click schemas and select New -> Console

![](devolopers_documentation_6)

Copy [this](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/createDBTables.sql) SQL query and paste it into the console and execute it by clicking the green arrow at the top left of the text editor area or by selecting all of the text and pressing ALT+ENTER. After the query is finnished, you will be able to see the newly created database named icdb (which stands for Innovation Connector DataBase) and tables under icdb in the database sidebar.

Step 4) Adding test data. Copy [this](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/sampleData.sql) SQL qurry and paste this into the console (delete the previous query from the console first). Execute the query. By double clicking on a table name in the database sidebar, you should be able to see some entries in each of the tables.

![](devolopers_documentation_7 Other account)

## Launching the application

Run xampp-control.exe in C:\xampp. Once running, click the start button for Apache and click the start button for the MySQL server. 

![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/images/documentation/xampp_start.jpg)

The server is now running and can be accessed through localhost.

To launch the webapp simply input localhost to the URL bar in your preferred internet browser.

For username and password for the application access email mdnessel@bsu.edu for the proper credentials.
