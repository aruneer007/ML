create database school;

use school;
drop table papers;
create table student
(
id int auto_increment primary key,
first_name varchar(100)
);

create table papers(
title varchar(50),
grade int,
student_id int,
foreign key(student_id) references student(id)
);

show tables;

INSERT INTO student (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

select * from student;

select * from papers;

select first_name , title, grade
from student
join papers 
on student.id = papers.student_id
order by grade desc;

select first_name , title, grade
from student
left join papers 
on student.id = papers.student_id;

select first_name , 
ifnull (title,'missing') as title,
ifnull (grade,0) as grade
from student
left join papers 
on student.id = papers.student_id;

select first_name ,  ifnull(avg(grade), '0') as grade
from student
left join papers 
on student.id = papers.student_id
group by first_name
order by grade desc;

select first_name ,  ifnull(avg(grade), '0') as grade,
case 
	when grade > 80 then 'passing'
    else 'failing'
    end
from student
left join papers 
on student.id = papers.student_id
group by first_name
order by grade desc;
