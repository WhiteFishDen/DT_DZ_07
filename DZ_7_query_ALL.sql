--TASK 1
select concat(firstname,' ', lastname) as "Teacher Name", _name as "Auditory"
from teachers t, lectures l, scheduls s, lecture_rooms lr
where t.teachers_id = l.teachers_id and l.lectures_id = s.lectures_id 
and s.lecture_rooms_id  = lr.lecture_rooms_id 
and firstname = 'Edward' and lastname = 'Hopper';

--TASK 2
select lastname as "Assistant", group_name as "Group"
from assistants a, teachers t, curators c, groups_curators gc, _groups g
where a.teachers_id = t.teachers_id and t.teachers_id = c.teachers_id 
and c.curators_id = gc.curators_id and gc.groups_id = g.groups_id
and group_name = 'F505'; 

--TASK 3
select subjects_name as "Subject" 
from subjects s, lectures l, groups_lectures gl, "_groups" g, teachers t
where t.teachers_id = l.teachers_id and l.subjects_id = s.subjects_id 
and l.lectures_id = gl.lectures_id and gl.groups_id = g.groups_id 
and t.firstname = 'Alex' and t.lastname = 'Carmack' and g."_year" = 5;

--TASK 4
select distinct lastname as "Teacher"
from teachers t , lectures l , scheduls s 
where t.teachers_id = l.teachers_id  and l.lectures_id = s.lectures_id 
and s.day_of_week <> 1;

--TASK 5
select _name as "Auditory", building as "korpus"
from lecture_rooms lr , scheduls s 
where lr.lecture_rooms_id  = s.lecture_rooms_id 
and s.day_of_week <> 3 and s."_week" <> 2 and s."_class" <> 3;

--TASK 6
select concat(firstname,' ', lastname) as "Teacher Name"
from teachers t , heads h , deans d , departments d2 , faculties f 
where t.teachers_id = h.teachers_id  and h.heads_id  = d2.heads_id 
and d2.faculties_id = f.faculties_id  and f.deans_id = d.deans_id 
and f.faculties_name = 'Computer Science'
and d2.departments_name <> 'Software Development';

--TASK 7
select building as "Все корпуса в БД"
from faculties
union select building 
from lecture_rooms
union select building 
from departments b
order by "Все корпуса в БД";

--TASK 8
select concat(firstname,' ', lastname) as "Teacher Name"
from teachers t , deans d where t.teachers_id  = d.teachers_id
union all select concat(firstname,' ', lastname) as "Teacher Name"
from teachers t2 , heads h where t2.teachers_id = h.teachers_id
union all select concat(firstname,' ', lastname) as "Teacher Name"
from teachers t3 , curators c where t3.teachers_id = c.teachers_id
union all select concat(firstname,' ', lastname) as "Teacher Name"
from teachers t4 , assistants a where t4.teachers_id = a.teachers_id;


--TASK 9 
select distinct day_of_week as "DofW"
from scheduls s , lecture_rooms lr 
where s.lecture_rooms_id = lr.lecture_rooms_id 
and (lr."_name" = 'A311' or lr."_name" = 'A104')
and lr.building  = 5;


