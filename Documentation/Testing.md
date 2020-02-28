# Unit Testing with PHPUnit
- This project uses PHPUnit for unit testing.
- To run these tests, the user must first follow the [development documentation](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Documentation/Development.md) for the project.
- Access the [PHPMyAdmin Dashboard](http://localhost/phpmyadmin)

- When accessed, if prompted for login at any time simply use admin as the username and leave the password blank.

- Select the tab that says "SQL" and copy/paste the contents of [addTestData.sql](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/addTestData.sql) into the text space.

![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/images/documentation/phpmyadmin_sql1.jpg)

- Then, click on the go button to create the test data for the project.

![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/images/documentation/phpmyadmin_sql2.jpg)
- If user follows the Development.md documentation correctly, PHPUnit should be installed with XAMPP.

# Running the tests 
- To run the unit tests:
  - Windows users must set the phpunit executable to their system path environment variable.
  - To do so, the user must add the folder called php directly under their xampp installation to their system path.
  - When this is completed simply open a command prompt/shell and navigate to the tests directory under [Xampp Installation]/htdocs/tests.
  - Under tests, simply type phpunit [name of file], where the file given is any of the test scripts in the directory.
  - Or, if all tests are to be run at once, under the tests directory simply type phpunit .
  
  ![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/images/documentation/PHPUnit.jpg)
  
  - An example would be: phpunit checkRegistrationTest.php
  - The command prompt will then give the results of the tests.
