insert into teachers (firstname, lastname)
values ('Samanta', 'Adams'),
	   ('Dave', 'McQueen'),
	   ('Jack', 'Underhill'),
	   ('Elon', 'Mask'),
	   ('Edward', 'Hopper'),
	   ('Alex', 'Carmack'),
	   ('Tony', 'Stark');
	  
insert into subjects (subjects_name)
values ('C#'), ('Database Theory'),
	   ('C++'), ('Design'),
	   ('Fraemworks'), ('JS'),
	   ('Java'), ('Pyton') ;
	   
insert into lectures (subjects_id, teachers_id)
values  (2,2),
		(3,3),
		(1,1),
		(4,4),
		(5,5),
		(7,6),
		(6,7),
		(8,3),
		(1,4);
		
insert into lecture_rooms (building, _name)
values (5,'A311'),
	   (5,'A104'),
	   (3,'A106'),
	   (2,'B109'),
	   (3,'D103'),
	   (1,'D307');
	  
insert into deans (teachers_id)
values (1),(2),(3);

insert into heads (teachers_id)
values (1),(2),(3),(4),(5),(6);

insert into faculties (building, faculties_name, deans_id)
values  (1,'Computer Science',1), (2,'AI',2),(3,'Information Security',3);
	  
insert into departments (building, departments_name, faculties_id, heads_id)
values  (1,'Software Development',3,6),
		(2,'cafedra_2',3,5),
		(3,'cafedra_3',1,4),
		(4,'cafedra_4',2,3),
		(5,'cafedra_5',1,2),
		(1,'cafedra_6',2,1);
		
insert into scheduls (_class, day_of_week, lectures_id, lecture_rooms_id, _week)
values (2, 1, 7, 5, 3),
		(3, 3, 2, 4, 2),
		(1, 1, 1, 1, 1),
		(3, 5, 2, 2, 4),
		(4, 4, 8, 6, 5),
		(1, 2, 5, 3, 7);




insert into curators (teachers_id)
values (1),(2),(3),(4);
	
insert into assistants (teachers_id)
values (7),(5),(6),(1),(2);

insert into _groups (group_name, _year, departments_id)
values	('P107', 2, 1),
		('F505', 3, 2),
		('P109', 4, 3),
		('P110', 1, 4),
		('P111', 2, 5),
		('D221', 3, 6),
		('P101', 2, 1),
		('D201', 3, 4),
		('P202', 5, 1),
		('D101', 5, 2),
		('D001', 4, 3);

insert into groups_curators
values  (1,1),
		(2,1),
		(3,3),
		(4,4),
		(1,5),
		(1,6),
		(2,7),
		(3,8),
		(4,8),
		(1,10);

insert into groups_lectures 
values	(1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,3),
		(7,7),
		(8,5),
		(9,6),
		(10,9);











