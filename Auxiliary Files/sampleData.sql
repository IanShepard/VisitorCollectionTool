INSERT INTO event(`Eventid`, `Name`, `Date`) VALUES(200, "Sample Event", "2021-02-01");

INSERT INTO attendee(`Fname`, `Lname`, `Phone`, `Email`, `Gender`) VALUES("Jane", "Doe", "555-5555", "jdoe@bsu.edu", "Female");
INSERT INTO attendee(`Fname`, `Lname`, `Phone`, `Email`, `Gender`) VALUES("John", "Smith", "555-5556", "jsmith@bsu.edu", "Male");
INSERT INTO attendee(`Fname`, `Lname`, `Phone`, `Email`, `Gender`) VALUES("Mike", "Wazowski", "555-5557", "mwazowski@gmail.com", "Male");
INSERT INTO attendee(`Fname`, `Lname`, `Phone`, `Email`, `Gender`) VALUES("James", "Sullivan", "555-5558", "jsullivan@yahoo.com", "Male");
INSERT INTO attendee(`Fname`, `Lname`, `Phone`, `Email`, `Gender`) VALUES("Bob", "Jones", "555-5559", "bjones@outlook.com", "Male");

INSERT INTO attendance(`Attendeeid`, `Eventid`, `Registered`) VALUES(1, 200, TRUE);
INSERT INTO attendance(`Attendeeid`, `Eventid`, `Registered`) VALUES(2, 200, TRUE);
INSERT INTO attendance(`Attendeeid`, `Eventid`, `Registered`) VALUES(3, 200, TRUE);
INSERT INTO attendance(`Attendeeid`, `Eventid`, `Registered`) VALUES(4, 200, TRUE);
INSERT INTO attendance(`Attendeeid`, `Eventid`, `Registered`) VALUES(5, 200, TRUE);
