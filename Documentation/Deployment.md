# Deployment Documentation

## Setting up the server

Visitor Collection Tools runs on an Apache server. If you already have an Apache server running go to Install and Updates

If you do not have a server or want to start a new one, then you will need to use XAMPP or an equivalent WAMP/LAMP web stack. Download and install [xampp](https://www.apachefriends.org/index.html) onto the server device. It is suggested to use default installation settings, but the main required components are Apache, PHP, PHPMyAdmin, and MySQL. C:/xampp/htdocs is there server root folder where you put all of the files for web pages and any files that support those web pages.

## Install and Updates

For application deployment, navigate to [Visitor Collection Tool](https://github.com/mdnessel/VisitorCollectionToolSourceCode) select "Clone or download" and then select "Download Zip".

![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/images/documentation/download_zip.jpg)

extract the zip file into C:\xampp\htdocs. If you are updating to a newer version, then overwrite all of the previous files. Make sure when extracting that the root folder called "VistorCollectionSourceCode" is not in the htdocs directory. It should simply be the contents of that folder in the htdocs directory.

Before launching the application, be sure to setup the configuration file in the root of htdocs called config.ini. This step is only necessary for changing the EventBrite API key, and for changing the default MySQL configuration if necessary.

## Starting the server

Run xampp-control.exe in C:\xampp. Once running, click the start button for Apache and click the start button for the MySQL server. 

![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/images/documentation/xampp_start.jpg)

The server is now running and can be accessed through localhost.

To launch the web app, type "localhost" into the URL bar in your preferred internet browser if the application is running on the same machine as the server. If the server is running on a different machine, navigate to the URL/IP Address that the XAMPP server is running on.

For username/password access email mdnessel@bsu.edu for the proper credentials.

## MySQL

Access the [PHPMyAdmin Dashboard](localhost/phpmyadmin)

When accessed, if prompted for login at any time simply use admin as the username and leave the password blank.

Select the tab that says "SQL" and copy/paste the contents of [createDBTables.sql](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/createDBTables.sql) into the text space.

![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/images/documentation/phpmyadmin_sql1.jpg)

Then, click on the go button to create the DB for the project.

![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/images/documentation/phpmyadmin_sql2.jpg)

## Stopping the server

Go to the xampp control panel and click stop for Apache and MySQL. The server is no longer running

![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/images/documentation/xampp_stop.jpg)
