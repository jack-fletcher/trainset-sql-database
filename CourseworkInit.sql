-- Init tables
-- Naming conventions:
-- Foreign Key: FK_ForeignKeyTable_PrimaryKeyTable
-- Primary Key: PK_PrimaryKeyTable
-- Constraint: CHECK Name_CHK
ALTER SESSION SET NLS_DATE_FORMAT = "DD-MM-YYYY";

CREATE TABLE Course(Course_ID NUMBER(*,0),
    Course_Name VARCHAR(200) NOT NULL UNIQUE,
    Course_Duration NUMBER(*,0) NOT NULL,
    Course_Cost NUMBER(*,2) NOT NULL,
    CONSTRAINT PK_Course PRIMARY KEY(Course_ID),
    CONSTRAINT Course_Duration_CHK CHECK (Course_Duration> 0 AND Course_Duration <= 5),
    CONSTRAINT Course_Cost_CHK CHECK (Course_Cost>= 300.00 AND Course_Cost <= 2000.00)
);

CREATE TABLE Offering(Offering_ID NUMBER(*,0),
    Course_ID NUMBER(*,0) NOT NULL,
    StartDate DATE NOT NULL,
    Offering_Location VARCHAR2(200 CHAR) NOT NULL,
    Instructor VARCHAR2(80 CHAR) NOT NULL,
    
    CONSTRAINT PK_Offering PRIMARY KEY(Offering_ID),
    CONSTRAINT FK_Offering_Course FOREIGN KEY(Course_ID) REFERENCES Course(Course_ID)
);

CREATE TABLE Student(Student_ID NUMBER(*,0),
    First_Name VARCHAR2(56 CHAR) NOT NULL,
    Last_Name VARCHAR2(56 CHAR) NOT NULL,
    DateOfBirth DATE NOT NULL,
    -- Derived from iso standard https://www.iso.org/standard/36266.html
    -- 0 = Not known,
    -- 1 = Male,
    -- 2 = Female,
    -- 3 = N/A
    Gender NUMBER(*,0) NOT NULL,
    Credit_Card_Number VARCHAR2(19 CHAR) NOT NULL,
    Company_Name VARCHAR2(36 CHAR),

    CONSTRAINT PK_Student PRIMARY KEY(Student_ID),
    CONSTRAINT Gender_CHK CHECK (Gender >= 0 AND Gender <= 3),
    -- Checks cc number is correct format -> #### #### #### #### */
    CONSTRAINT Credit_Card_Number_CHK CHECK (REGEXP_LIKE(Credit_Card_Number, '\d{4}\s\d{4}\s\d{4}\s\d{4}'))
);

CREATE TABLE Examination(Student_ID NUMBER(*,0) NOT NULL,
    Offering_ID NUMBER(*,0) NOT NULL,
    Exam_Result NUMBER(*,2),
    
    CONSTRAINT FK_Examination_Student FOREIGN KEY(Student_ID) REFERENCES Student(Student_ID),
    CONSTRAINT FK_Examination_Offering FOREIGN KEY(Offering_ID) REFERENCES Offering(Offering_ID)
);


CREATE TABLE Attendees(Student_ID NUMBER(*,0),
    Offering_ID NUMBER(*,0),
    Student_Evaluation NUMBER(1,0),
    
    CONSTRAINT FK_Attendees_Offering FOREIGN KEY(Offering_ID) REFERENCES Offering(Offering_ID),
    CONSTRAINT FK_Attendees_Student FOREIGN KEY(Student_ID) REFERENCES Student(Student_ID),
    CONSTRAINT Student_Evaluation_CHK CHECK (Student_Evaluation >=0 AND Student_Evaluation <=5)
);
