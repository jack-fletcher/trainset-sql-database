--clear screen
----Q4.
----a.	Find details of all courses running in London //Done
--        SELECT * FROM OFFERING WHERE OFFERING_LOCATION = 'London';
----b.	Find the course that runs the greatest number of times. //Done
--        SELECT * FROM(SELECT COURSE.COURSE_NAME, OFFERING.COURSE_ID, COUNT(OFFERING.COURSE_ID) as "Course_Offerings" FROM OFFERING
--        INNER JOIN COURSE ON OFFERING.COURSE_ID = COURSE.COURSE_ID
--        GROUP BY OFFERING.COURSE_ID, COURSE.COURSE_NAME
--        ORDER BY "Course_Offerings" DESC)
--        WHERE ROWNUM <= 1;
----c.	Find the total number of attendees for each course. //Done
--        --Find the number of times OFFERING_ID comes up in attendees
--        --that's the total number of attendees for each offering
--        --correlate that to course type
--        SELECT COURSE.COURSE_NAME, COUNT(ATTENDEES.OFFERING_ID) AS Attendees FROM ATTENDEES
--            INNER JOIN STUDENT ON ATTENDEES.STUDENT_ID = STUDENT.STUDENT_ID
--            INNER JOIN OFFERING ON ATTENDEES.OFFERING_ID = OFFERING.OFFERING_ID 
--            INNER JOIN COURSE ON OFFERING.COURSE_ID = COURSE.COURSE_ID 
--            GROUP BY COURSE.COURSE_NAME;
----d.	Show details of the student names and the titles of the courses that they have attended. //Done
--        SELECT CONCAT(CONCAT(STUDENT.FIRST_NAME,' '),STUDENT.LAST_NAME) as "Student Name", COURSE.COURSE_NAME as "Course Name"
--            FROM ATTENDEES
--            INNER JOIN STUDENT ON ATTENDEES.STUDENT_ID = STUDENT.STUDENT_ID
--            INNER JOIN OFFERING ON ATTENDEES.OFFERING_ID = OFFERING.OFFERING_ID
--            INNER JOIN COURSE ON OFFERING.COURSE_ID = COURSE.COURSE_ID;
----e.	List the title and cost of each course. //Done
--        SELECT COURSE_NAME,COURSE_COST FROM COURSE; 
        
--f.	Add a column to your answer to 4(e) that compares the cost of the course to the average cost 
--      i.e. shows the difference between the course cost and the average cost of all courses.  
        
        COLUMN COURSE new_value Average
        SELECT AVG(COURSE_COST) FROM COURSE;
        
        SELECT COURSE_NAME,COURSE_COST,'&Average' FROM COURSE;