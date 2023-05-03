/*1. Find all possible combinations of instructors and the courses they teach*/
select i.id,i.name,c.course,c.title 
from instructor i,course c,teaches t
where i.id=t.id and t.course_id=c.course_id

/*2. Retrieve the names of all instructors, along with their department names and 
department building name*/
select d.dept_name,d.building,i.name 
from instructor i,department d
where i.dept_name=d.dept_name

/*3. Find the names of instructors who have taught at least one course.*/
select distinct i.name
from instructor i,teaches t where t.id=i.id

/*4. For the student with ID 12345 (or any other value), show all course_id and title 
of all courses registered for by the student.*/
select s.id,c.course_id,c.title
from student s,course c,takes t
where s.id='12345' and s.id=t.id and t.course_id=c.course_id

/*5. Find instructor names and course identifiers for instructors in the Computer 
Science department.*/
select i.name,t.course_id 
from instructor i,teaches t
where i.id=t.id and i.dept_name='Comp. Sci.'

/*6. For all instructors in the university who have taught some course, find their 
names and the course ID of all courses they taught*/
select i.name,t.course_iud from instructor i,teaches t where i.id=t.id

/*7. Find the names of all instructors whose salary is greater than at least one 
instructor in the Biology department. Or Find the names of all instructors who 
earn more than the lowest paid instructor in the Biology department.*/
select i.name from instructor i
where i.salary>some(select salary
                    from instructor where dept_name='Biology');

/*8. Find full details of instructors who teach at least one course.*/
select distinct i.id,i.name,i.i.dept_name 
from instructor i,teaches t 
where t.id=i.id

/*9. Find the instructor names and the courses they taught for all instructors in the 
Biology department who have taught some course*/
select i.name,t.course_id 
from instructor i,teaches t 
where i.id=t.id and i.dept_name='Biology'

/*10. Find the set of all courses taught either in Fall 2009 or in Spring 2010, or both.*/
select course_id
from teaches
where (semester like 'FALL' and year=2009) OR (semester like 'SPRING' and year=2010)

/*11. Find all courses taught in the Fall 2009 semester but not in the Spring 2010 
semester.*/
(select course_id from teaches where semester like 'Fall' and year=2009)
MINUS
(select course_id from teaches where semester like 'Spring' and year=2010)

/*12. Find the names of all students who have taken any Comp. Sci. course ever. 
(there should be no duplicate names)*/
select distinct s.name 
from student s,takes t,course c
where s.id=t.id and t.course_id=s.coure_id and c.dept_name='Comp. Sci.'

/*13. Display the IDs of all instructors who have never taught a course. (Don’t write 
nested query)*/
select i.id 
from instructor i
where not exists(select * from teaches t where t.id=i.id)





















