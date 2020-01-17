# Deployment Documentation

## Setting up the server

Visitor Collection Tools runs on an Apache server. If you already have an Apache server running goto Install and Updates

If you do not have a server or want to start a new one, then you will need to use XAMPP. Download and install [xampp](https://www.apachefriends.org/index.html) onto the server device. It is suggested to use default installation settings. C:/xampp/htdocs is there server root folder where you put all of the files for web pages and any files that support those web pages.

## Install and Updates

For Version Control of the project, open a command prompt with Git installed, and navigate to the htdocs folder under your xampp installation. When here type the command git init, to create a local git reference. Then type git remote add origin https://github.com/mdnessel/VisitorCollectionToolSourceCode.git. After this is completed, type git pull origin master to add the project to the directory.

If version control is not needed for local development, go to [Visitor Collection Tool](https://github.com/mdnessel/VisitorCollectionToolSourceCode) and download zip.

![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/images/documentation/download_zip.jpg)

extract the zip file into C:\xampp\htdocs. If you are updating to a newer version, then overwrite all of the previous files.

## Starting the server

Run xampp-control.exe in C:\xampp. Once running, click the start button for Apache and click the start button for the MySQL server. 

![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/images/documentation/xampp_start.jpg)

The server is now running and can be accessed through localhost.

## Stopping the server

Go to the xampp control panel and click stop for Apache and MySQL. The server is no longer running

![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/images/documentation/xampp_stop.jpg)
