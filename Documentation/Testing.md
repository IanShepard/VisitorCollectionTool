# Unit Testing with PHPUnit
- This project uses PHPUnit for unit testing.
- To run these tests, the user must first follow the [development documentation](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Documentation/Development.md) for the project.
- Before running the tests it will be necessary for the user to run the SQL script named [addTestData.sql](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/addTestData.sql) in the PHPMyAdmin interface.
- If user follows the Development.md documentation correctly, PHPUnit should be installed with XAMPP.

# Running the tests 
- To run the unit tests:
  - Windows users must set the phpunit executable to their system path environment variable.
  - To do so, the user must add the folder called php directly under their xampp installation to their system path.
  - When this is completed simply open a command prompt/shell and navigate to the tests directory under [Xampp Installation]/htdocs/tests.
  - Under tests, simply type phpunit [name of unit tests file] where the file given is any of the test scripts in the directory.
  ![](https://github.com/IanShepard/VisitorCollectionTool/blob/master/Auxiliary%20Files/images/documentation/PHPUnit.jpg)
  - An example would be: phpunit checkRegistrationTest.php
  - The command prompt will then give the results of the tests.
