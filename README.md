# trainset-sql-database
 
## A GitHub Repo to hold all work performed for my Database Administration and Security module.

The data contained within this repo is dummy data that was created for use within this assignment. This assignment used a connection to a university database using Oracle SQL Developer and the solutions involved reflect that.

The module spec is listed below. 

## Requirements

* You are required to build a small database to support the needs of a training company called Trainset.  As part of this you will also focus on some elements of security & data protection.  To do this you will need to create tables and SQL code to support the following scenario: 

	-	Trainset run professional short training courses (including ITIL, Project Management, etc.)
	-	These courses have a title, a duration of 1,2,3,4 or 5 days, and a cost that varies between £300 and £2000 inclusive.
	-	The courses are run repeatedly at various locations.
	-	The start date of each course offering, its location and its instructor are recorded.
	-	Students attend the courses and Trainset needs to record the student name, gender, credit card number and company name.
	-	Credit card numbers should be entered as text with the format 'nnnn nnnn nnnn nnnn' where 'n' is a number between 0 and 9.
	-	Each time a student attends a course they will give an evaluation of the course (the evaluation is a whole number from 0 to 5).
	-	Students will attempt an examination for each course they attend. Trainset needs to record the examination result of each student in each examination.
	-	It is not a requirement that every course run has attendees registered, and it is also not required that every student has to have attended a course.

## Questions

* Question 1

	* Trainset have produced a first draft model of the scenario described in Section 2.1 as shown in Fig. 1:

	![Figure 1](Fig1.png?raw=true "Draft Model")

	* You should assume this model is a reasonable, but incomplete, draft.  Use it as a basis to develop a final, improved entity model.  Then using your improved and complete entity model, construct a set of tables with suitably-defined columns to support the scenario.

* Question 2

	* Populate the tables you created from Question 1 with appropriate test data, taking into account the following:
		* There may be some courses that have yet to run.
		* There may be some students who have yet to a take a course. 
		* All course offerings are uniquely identified by a single key column called offering_id 
		* Attendance records are uniquely identified by a combination of foreign keys (not by a single-column surrogate key).
	* In order to keep the amount of test data to a minimum, assume that the company is unlikely to run more than six course titles and that the number of students about whom they have details is less than 11.
	* Before continuing, review the query specifications in Questions 4 and 6. You will need to have data values that are relevant to these queries.  However, the design of your tables and test data should not be compromised merely to support these queries.

* Question 3

	* Create appropriate primary and foreign key constraints on the tables.  
	* Ensure you provide the SQL used to create these constraints, together with a brief justification for your choices (max. 150 words).

* Question 4
	* Develop a set of SQL queries against your test tables as follows, showing all output that they produce.  Note that you will need to populate your test tables with the appropriate data for each answer.

		*	Find details of all courses running in London. 
		*	Find the course that runs the greatest number of times. 
		*	Find the total number of attendees for each course. 
		*	Show details of the student names and the titles of the courses that they have attended. 
		*	List the title and cost of each course. 
		*	Add a column to your answer to 4(e) that compares the cost of the course to the average cost i.e. shows the difference between the course cost and the average cost of all courses.  

* Question 5
	* Develop a view on a join of only two tables that shows course details together with the details of the offerings of those courses within the last 12 months. 

	* Do not include courses for which there are no offerings.

	* Test the view from 5(a) for its ability to support DML activity.  The testing should involve DELETEs, INSERTs and a limited number of UPDATE statements affecting different columns.  You should then examine any error messages and briefly explain why they arise.  The tests should involve:

		*	Separate UPDATEs on each individual column within the view;
		*	INSERTs of new rows into the view;
		*	DELETEs of rows from the view.

	* Comment on the outcomes in terms of how easily the view can be updated (circa. 150-200 words).

	* (You may then wish to ROLLBACK any changes you have made to the data in order to obtain a consistent set of test data for Question 6).

	* Demonstrate and test the following using your primary Oracle account and your ‘_2’ secondary Oracle account.  Show your SQL statements and the output of your tests in each case.
	* Enable read only access to the view for the secondary account and show evidence of your grant by querying the Oracle data dictionary for privileges granted by you. 
	* Change the privilege for the secondary account to permit updates to the view.  Test the privilege using your ‘_2’ account and while logged in as ‘_2’ use the data dictionary to show the privileges that the ‘_2’ account now has.  
	* Prohibit the secondary account from accessing the view.   

* Question 6
	* It has been found necessary to redact data from the birth date and credit card number columns held in the student table. 
 
	* Show how this can be done by using the supplied Oracle package dbms_redact to redact:

	* The day and month from the birth date column;

	* The first 12 characters in credit/debit card numbers so that they are replaced by suitable dummy characters.

* Question 7

	* With the increasing risks of cyber-attacks, database hacks, and data leaks, knowing how to fully secure and protect a production database is crucial.  

	* Choose one of the areas below and discuss it in terms of historical and recent developments, and historical and current research in database security:

	* Authentication and authorization;  
	* Auditing access;  
	* Data encryption;  
	* Users’ permissions and database roles.  

	* Illustrate your findings with practical examples from specific database environments such as Oracle 11g/12c.

	* Maximum word count: 1,000 words, with 10% variation (plus or minus).
