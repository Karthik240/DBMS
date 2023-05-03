/*  1. Find the details of all students */
SELECT * from students

/*2. Find the department names of instructors*/
SELECT DEPT_NAME FROM INSTRUCTOR

/* 3. Find the names of all the instructors from Biology department  */
select name from instructor where dept_name like 'Biology'

/*4. Find the names of all instructors in the Computer Science department who 
have salaries greater than $70,000 */
select name from instructor where dept_name like 'Comp. Sci.' and salary > 70000

/*5. Find the names of courses in Computer science department which have 3 
credits*/
select title from course where dept_name like 'Comp. Sci.' and credits=3

/*6. Find the names of the instructors, their present salaries and the resulting 
salaries if they were given a 10% raise*/
select name,salary,(salary*1.1) "new Sal" from instructor

/*7. Find the names of instructors with salary amounts between $90,000 and 
$100,000*/
select name from instructor where salary between 90000 and 100000

/*8. Find all instructors whose salary is unknown*/
select name from instructor where salary=null

/*9. Find the names of all departments whose building name includes the substring 
‘Watson’*/
select dept_name from department where building like 'Watson'

/*10. Find departments whose names contain the string “sci” as a substring, 
regardless of the case*/
select dept_name from department where LOWER(dept_name) like '%sci%'

/*11. List the names of all instructors in the Physics department in alphabetic order.*/
select name from instructor where dept_name like 'Physics' order by name

/*12. List the entire instructor relation in descending order of salary. If several 
instructors have the same salary, order them in ascending order by name*/
select * from instructor order by salary desc,name


















