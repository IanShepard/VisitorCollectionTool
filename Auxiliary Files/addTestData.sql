INSERT INTO event(Eventid,Name,Date) VALUES(999, "Test Event", "2030-04-01");

INSERT INTO attendee(`Id`, `Fname`,`Lname`, `Phone`, `Email`) VALUES(10000, "Bob", "Jones", "555-5555", "bjones@gmail.com");
INSERT INTO attendee(`Id`, `Fname`,`Lname`, `Phone`, `Email`) VALUES(10002, "John", "Smith", "555-5555", "jsmith@gmail.com");
INSERT INTO attendee(`Id`, `Fname`,`Lname`, `Phone`, `Email`) VALUES(10003, "Bob", "Jones", "555-5555", "bjones2@gmail.com");

INSERT INTO attendance(`Attendeeid`, `Eventid`, `Registered`) VALUES(10000, 999, TRUE);
INSERT INTO attendance(`Attendeeid`, `Eventid`, `Registered`) VALUES(10001, 999, TRUE);
INSERT INTO attendance(`Attendeeid`, `Eventid`, `Registered`) VALUES(10002, 999, TRUE);
INSERT INTO attendance(`Attendeeid`, `Eventid`, `Registered`) VALUES(10003, 999, TRUE);
