# Deployment Documentation

## Setting up the server

Visitor Collection Tools runs on an Apache server. If you already have an Apache server running goto Install and Updates

If you do not have a server or want to start a new one, then you will need to use XAMPP. Download and install [XAMPP](https://www.apachefriends.org/index.html) onto the server device. It is suggested to use default installation settings. htdocs is a folder which can run the code and make it available on the network. 

## Install and Updates

Goto [Visitor Collection Tool](https://github.com/mdnessel/VisitorCollectionToolSourceCode) and download zip.
![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/download_zip.jpg)
extract the zip file. Copy all of the extracted files into ..\xampp\htdocs. If you are updating to a newer version, then overwrite all of the previous files.

## Starting the server

Run xampp-control.exe in ..\xampp. Once running, click the start button for Apache. The server is now running and can be accessed through localhost.

## Stoping the server

Go to the XAMPP control panel and click stop for Apache. The server is no longer running and is not accessible.
