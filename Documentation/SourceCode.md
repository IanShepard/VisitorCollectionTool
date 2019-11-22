## checkEmail.php
Line 10: Match email received from AJAX request with DB info
Line 15: If email not matched, push line to be written to new temp csv unchanged
Line 21: Open temp csv file for modified lines
Line 29: Overwrite old csv and set proper permissions

##checkin.css
Styling for checkin.php

## checkin.js
Line 10: If server returns correctly, callback function sets window back to checkin
Line 15: AJAX call to checkEmail php script

## checkin.php
Line 32: Fetch names that match name entered by user
Line 34: Only creates table if there is content to write to it
Line 40: Table creation markup
Line 42: Tie user email to the UI button to send to AJAX function

## checkRegistration.php
Line 2: Check if user is already registered for event by email

## checkRegistrationTest.php
Unit tests for checkRegistration.php
Run with phpunit command

## event.csv
example csv file for development purposes

## findName.php
Line 4: Split full name into first and last name
Line 12: Match all that have the same last name
Line 20: Match all that have the same first name from the previous list
Line 23: Return list that has names that match first and last name provided

## findNameTest.php
Unit tests for findName.php
Run with phpunit command

## index.php
Web page index that redirects to checkin.php

## manager.php
Manager dashboard that allows downloading the event csv file

## readCSV.php
Line 5: Put each row of the csv into an array

## readCSVTest.php
Units tests for readCSV.php
Run with phpunit command

## register.css
Styling for register.php

## register.php
Line 39: If user is not already registered, their info is added to the csv

## tests.csv
CSV file used for unit testing purposes
