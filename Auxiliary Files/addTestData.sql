INSERT INTO event(Eventid,Name,Date) VALUES(999, 'Test Event', '2030-04-01');
INSERT INTO event(Eventid,Name,Date, Description) VALUES(1000, 'Test Event 1', '3000-01-01', 'An example event that has a lot of attendees and will be in the future.');
INSERT INTO event(Eventid,Name,Date, Description, Ebid) VALUES(1001, 'Test Event 2', '2000-01-01', 'An example eventbrite event', 1);
INSERT INTO event(Eventid,Name,Date, Description) VALUES(1002, 'Test Event 3', '2030-01-01', 'An example event that has no attendees');

INSERT INTO attendee(`Id`, `Fname`,`Lname`, `Phone`, `Email`, `Gender`) VALUES(10000, 'Bob', 'Jones', '555-5555', 'bjones@gmail.com', 'Male');
INSERT INTO attendee(`Id`, `Fname`,`Lname`, `Phone`, `Email`, `Gender`) VALUES(10001, 'Mary', 'Jane', '555-5555', 'mjane@gmail.com', 'Female');
INSERT INTO attendee(`Id`, `Fname`,`Lname`, `Phone`, `Email`, `Gender`) VALUES(10002, 'John', 'Smith', '555-5555', 'jsmith@gmail.com', 'Male');
INSERT INTO attendee(`Id`, `Fname`,`Lname`, `Phone`, `Email`, `Gender`) VALUES(10003, 'Bob', 'Jones', '555-5555', 'bjones2@gmail.com', 'male');
INSERT INTO attendee(`Id`, `Fname`,`Lname`, `Phone`, `Email`, `Gender`) VALUES(10004, 'Jacob', 'Jacob', '555-0001', 'momemail@gmail.com', 'Male');
INSERT INTO attendee(`Id`, `Fname`,`Lname`, `Phone`, `Email`, `Gender`) VALUES(10005, 'Abe', 'Jacob', '555-0001', 'dademail@yahoo.com', 'Female');
INSERT INTO attendee(`Id`, `Fname`,`Lname`, `Phone`, `Email`, `Gender`) VALUES(10006, 'Zach', 'Martin', '(123) 555-0002', 'momemail@gmail.com', 'Male');
INSERT INTO attendee(`Id`, `Fname`,`Lname`, `Phone`, `Email`, `Ebid`, `Gender`) VALUES(10007, 'Jacob', 'Abe', '(123) 555-0002', 'jombajuice@bsu.edu', 1, 'male');


INSERT INTO attendance(`Attendeeid`, `Eventid`, `Registered`) VALUES(10000, 999, TRUE);
INSERT INTO attendance(`Attendeeid`, `Eventid`, `Registered`) VALUES(10002, 999, TRUE);
INSERT INTO attendance(`Attendeeid`, `Eventid`, `Registered`) VALUES(10003, 999, TRUE);
INSERT INTO attendance(Attendeeid, Eventid, Registered, Walkin, Attended) VALUES(10004, 1000, TRUE, FALSE, TRUE);
INSERT INTO attendance(Attendeeid, Eventid, Registered, Walkin, Attended) VALUES(10004, 1001, TRUE, FALSE, TRUE);
INSERT INTO attendance(Attendeeid, Eventid, Registered, Walkin, Attended) VALUES(10005, 1000, TRUE, FALSE, TRUE);
INSERT INTO attendance(Attendeeid, Eventid, Registered, Walkin, Attended) VALUES(10005, 1001, TRUE, TRUE, FALSE);
INSERT INTO attendance(Attendeeid, Eventid, Registered, Walkin, Attended) VALUES(10006, 1000, TRUE, TRUE, FALSE);
INSERT INTO attendance(Attendeeid, Eventid, Registered, Walkin, Attended) VALUES(10007, 1000, TRUE, TRUE, TRUE);
