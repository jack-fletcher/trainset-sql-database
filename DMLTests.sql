----- UPDATES -------
    --Can't modify Course Duration
    --SQL Error: ORA-01779: cannot modify a column which maps to a non key-preserved table
    UPDATE CourseOfferingsLastYear
        SET COURSE_DURATION = 4
            WHERE COURSE_ID = 3;
            
    --Can't modify Course Duration
    --SQL Error: ORA-01779: cannot modify a column which maps to a non key-preserved table
    UPDATE CourseOfferingsLastYear
        SET COURSE_DURATION = 4
            WHERE COURSE_COST = 300;
            
    --Can't modify Course Name        
    --SQL Error: ORA-01779: cannot modify a column which maps to a non key-preserved table
    UPDATE CourseOfferingsLastYear
        SET COURSE_NAME = 'Testing'
            WHERE COURSE_ID = 3;
            
    --Can't modify Course ID        
    --SQL Error: ORA-01779: cannot modify a column which maps to a non key-preserved table
    UPDATE CourseOfferingsLastYear
        SET COURSE_ID = 15
            WHERE COURSE_NAME = 'COURSE_NAME';
            
    --Can't modify Offering ID        
    --ORA-00001: unique constraint (F021280L.PK_OFFERING) violated
    UPDATE CourseOfferingsLastYear
        SET OFFERING_ID = 15
            WHERE COURSE_COST = '700';

    --Can't modify STARTDATE        
    --SQL Error: ORA-01779: cannot modify a column which maps to a non key-preserved table
    UPDATE CourseOfferingsLastYear
        SET COURSE_COST = 1500
            WHERE COURSE_ID = 1;

    --Works successfully     
    UPDATE CourseOfferingsLastYear
        SET OFFERING_LOCATION = 'Testing'
            WHERE COURSE_ID = 1;
    --Works successfully     
    UPDATE CourseOfferingsLastYear
        SET OFFERING_LOCATION = 'Testing NO CRITERIA';

    --Works successfully   
    UPDATE CourseOfferingsLastYear
        SET INSTRUCTOR = 'Instructor test'
            WHERE COURSE_ID = 1;    
            
    --Works successfully   
    UPDATE CourseOfferingsLastYear
        SET INSTRUCTOR = 'Instructor test NO CRITERIA';   
        
----- DELETES -------                               
-- Can't delete row as child record found
-- ORA-02292: integrity constraint (F021280L.FK_ATTENDEES_OFFERING) violated - child record found
DELETE FROM COURSEOFFERINGSLASTYEAR WHERE COURSE_ID = 1;

--Can delete this successfully
--There were no child records for its course ID (There were no students for this course)
--This also deleted it from OFFERING 
DELETE FROM COURSEOFFERINGSLASTYEAR WHERE COURSE_ID = 5;

--Can delete this successfully
--There were no child records for its course ID (There were no students for this course)
--This also deleted it from OFFERING 
DELETE FROM COURSEOFFERINGSLASTYEAR WHERE COURSE_ID = 4;

--Can delete this successfully
--There were no child records for its course ID (There were no students for this course)
--This also deleted it from OFFERING 
DELETE FROM COURSEOFFERINGSLASTYEAR WHERE COURSE_ID = 3;            

----- INSERT -------      
--Cannot do this with all values
--SQL Error: ORA-01779: cannot modify a column which maps to a non key-preserved tabl
INSERT INTO COURSEOFFERINGSLASTYEAR VALUES('AWS',3,'4','700','10','01-02-21','Scranton','Michael Scott');  

--Cannot do this with just values from COURSE table
--SQL Error: ORA-01779: cannot modify a column which maps to a non key-preserved table
INSERT INTO COURSEOFFERINGSLASTYEAR(COURSE_ID,COURSE_NAME,COURSE_DURATION,COURSE_COST)VALUES(1,'Leadership','1','300.00');

--Cannot do this like this; needs to be different
--SQL Error: ORA-01776: cannot modify more than one base table through a join view
INSERT INTO COURSEOFFERINGSLASTYEAR(OFFERING_ID,COURSE_ID,STARTDATE,OFFERING_LOCATION,INSTRUCTOR)VALUES(18,'4','03-JUN-21','New York','INSTRUCTOR');

--Success, COURSE_ID is null though so this would need to be done seperately
INSERT INTO COURSEOFFERINGSLASTYEAR(OFFERING_ID,STARTDATE,OFFERING_LOCATION,INSTRUCTOR) VALUES(18,'03-JUN-21','Offering Location1','TestInstructor');
--part 2 cannot be done, although trying to make a standard inssert to OFFERING without COURSE_ID 
--SQL Error: ORA-01779: cannot modify a column which maps to a non key-preserved table
--INSERT INTO OFFERING (OFFERING_ID,STARTDATE,OFFERING_LOCATION,INSTRUCTOR) VALUES(25,'01-JUL-2021','Albuquerque','Walter White');
    UPDATE CourseOfferingsLastYear
    SET COURSE_ID = 4 WHERE OFFERING_ID = 18;



