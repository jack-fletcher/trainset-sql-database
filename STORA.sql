/* Init tables */

CREATE TABLE Course(Course_ID NUMBER(*,0),
Name VARCHAR(20),
Duration NUMBER(*,0),
/* */
Cost NUMBER(*,2),

CONSTRAINT pk_Course_ID PRIMARY KEY(Course_ID),
CONSTRAINT CHK_Duration CHECK (Duration> 0 AND Duration < 4),
CONSTRAINT CHK_Cost CHECK (Cost>= 300.00 AND Cost <= 2000.00)
);

CREATE TABLE Offering(Offering_ID NUMBER(*,0),
StartDate DATE,
Location VARCHAR2(200 CHAR),
Instructor VARCHAR2(20 CHAR),

CONSTRAINT pk_Offering_ID PRIMARY KEY(Offering_ID)
);

CREATE TABLE Attendees(Student_ID NUMBER(*,0),
Offering_ID NUMBER(*,0),
Evaluation NUMBER(1,0),

CONSTRAINT fk_Student_ID FOREIGN KEY(Student_ID),
CONSTRAINT fk_Offering_ID FOREIGN KEY(Offering_ID),
CONSTRAINT ck_Evaluation CHECK (Evaluation>=0 AND Evaluation <=5)
);

