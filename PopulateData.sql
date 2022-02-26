INSERT INTO COURSE VALUES(1,'Leadership','1','300.00');
INSERT INTO COURSE VALUES(2,'Project Management','2','500.00');
INSERT INTO COURSE VALUES(3,'Comptia','3','700.00');
INSERT INTO COURSE VALUES(4,'AWS','4','900.00');
INSERT INTO COURSE VALUES(5,'Programming Fundamentals','5','1200.00');
INSERT INTO COURSE VALUES(6,'Web Development','3','1500.00');

INSERT INTO OFFERING VALUES(1,1,'12-NOV-2021','Pawnee','Ron Swanson');
INSERT INTO OFFERING VALUES(2,1,'19-NOV-2021','Pawnee','April Ludgate');
INSERT INTO OFFERING VALUES(3,1,'26-NOV-2021','Pawnee','Leslie Knope');
INSERT INTO OFFERING VALUES(4,1,'02-FEB-2021','Pawnee','Ron Swanson');
INSERT INTO OFFERING VALUES(5,1,'09-FEB-2021','Pawnee','April Ludgate');
INSERT INTO OFFERING VALUES(6,1,'16-FEB-2021','Pawnee','Ben Wyatt');


INSERT INTO OFFERING VALUES(7,2,'01-MAR-2021','London','Mark Corrigan');
INSERT INTO OFFERING VALUES(8,2,'08-MAR-2021','London','Alan Johnson');
INSERT INTO OFFERING VALUES(9,2,'15-MAR-2021','London','Jeremy Usborne');

INSERT INTO OFFERING VALUES(10,3,'06-JAN-2021','Scranton','Michael Scott');
INSERT INTO OFFERING VALUES(11,3,'13-JAN-2021','Scranton','Pam Beesly');
INSERT INTO OFFERING VALUES(12,3,'19-JAN-2021','Scranton','Bob Vance');
INSERT INTO OFFERING VALUES(13,3,'26-JAN-2021','Scranton','Creed Bratton');

INSERT INTO OFFERING VALUES(14,4,'01-JUN-2021','New York','Jake Peralta');
INSERT INTO OFFERING VALUES(15,4,'08-JUN-2021','New York','Rosa Diaz');
INSERT INTO OFFERING VALUES(16,4,'15-JUN-2021','New York','Amy Santiago');
INSERT INTO OFFERING VALUES(17,4,'22-JUN-2021','New York','Gina Linetti');

INSERT INTO OFFERING VALUES(18,5,'01-JUL-2021','Albuquerque','Walter White');



    -- 0 = Not known,
    -- 1 = Male,
    -- 2 = Female,
    -- 3 = N/A
INSERT INTO STUDENT VALUES(1,'Harry','Potter','06-01-1966','1','1234 5678 9123 4567', 'Gringotts');
INSERT INTO STUDENT VALUES(2,'Hermione','Granger','05-05-1937','2','1234 5678 9123 4567', 'Ollivanders');
INSERT INTO STUDENT VALUES(3,'Ron','Weasley','01-02-1993','1','1234 5678 9123 4567', 'Ministry of Magic');
INSERT INTO STUDENT VALUES(4,'Draco','Malfoy','01-01-1997','2','1234 5678 9123 4567', 'Gringotts');
INSERT INTO STUDENT (STUDENT_ID,FIRST_NAME,LAST_NAME,DATEOFBIRTH,GENDER,CREDIT_CARD_NUMBER) VALUES(5,'Tom','Riddle','23-12-1987','0','1234 5678 9123 4567');
INSERT INTO STUDENT (STUDENT_ID,FIRST_NAME,LAST_NAME,DATEOFBIRTH,GENDER,CREDIT_CARD_NUMBER) VALUES(6,'Albus','Dumbledore','25-12-1977','1','1234 5678 9123 4567');
INSERT INTO STUDENT (STUDENT_ID,FIRST_NAME,LAST_NAME,DATEOFBIRTH,GENDER,CREDIT_CARD_NUMBER) VALUES(7,'Severus','Snape','12-12-2001','1','1234 5678 9123 4567');
INSERT INTO STUDENT (STUDENT_ID,FIRST_NAME,LAST_NAME,DATEOFBIRTH,GENDER,CREDIT_CARD_NUMBER) VALUES(8,'Minerva','McGonagall','06-06-1966','2','1234 5678 9123 4567');
INSERT INTO STUDENT (STUDENT_ID,FIRST_NAME,LAST_NAME,DATEOFBIRTH,GENDER,CREDIT_CARD_NUMBER) VALUES(9,'Luna','Lovegood','14-12-1983','2','1234 5678 9123 4567');
INSERT INTO STUDENT (STUDENT_ID,FIRST_NAME,LAST_NAME,DATEOFBIRTH,GENDER,CREDIT_CARD_NUMBER) VALUES(10,'Neville','Longbottom','25-06-1945','1','1234 5678 9123 4567');
INSERT INTO STUDENT (STUDENT_ID,FIRST_NAME,LAST_NAME,DATEOFBIRTH,GENDER,CREDIT_CARD_NUMBER) VALUES(11,'Sirius','Black','09-12-2002','1','1234 5678 9123 4567');

INSERT INTO ATTENDEES VALUES(1,1,3);
INSERT INTO ATTENDEES VALUES(2,2,5);
INSERT INTO ATTENDEES VALUES(3,2,2);

INSERT INTO ATTENDEES VALUES(4,3,3);
INSERT INTO ATTENDEES VALUES(5,4,1);
INSERT INTO ATTENDEES VALUES(6,4,5);
INSERT INTO ATTENDEES VALUES(7,4,0);

INSERT INTO ATTENDEES VALUES(8,5,5);
INSERT INTO ATTENDEES VALUES(9,6,0);
INSERT INTO ATTENDEES VALUES(10,7,1);
INSERT INTO ATTENDEES VALUES(11,8,4);

INSERT INTO EXAMINATION VALUES(1,1,79);
INSERT INTO EXAMINATION VALUES(2,2,40);
INSERT INTO EXAMINATION VALUES(3,2,65);
INSERT INTO EXAMINATION VALUES(4,3,10);
INSERT INTO EXAMINATION VALUES(5,4,90);
INSERT INTO EXAMINATION VALUES(6,4,79);
INSERT INTO EXAMINATION VALUES(7,4,40);
INSERT INTO EXAMINATION VALUES(8,5,65);
INSERT INTO EXAMINATION VALUES(9,6,10);
INSERT INTO EXAMINATION VALUES(10,7,90);
INSERT INTO EXAMINATION VALUES(11,8,90);
