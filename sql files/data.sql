create Table user(
	empid int primary key auto_increment,
	emp_username varchar(50) not null,
	emp_password varchar(50) not null
	);
    
create Table points(
	pointsid int primary Key auto_increment,
    empid int not null,
    points int,
    offerid int not null
);
insert into user(empid,emp_username,emp_password) values (1,'Hariprasad','Hariprasad');
insert into user(empid,emp_username,emp_password) values (2,'Varun','Varun');
insert into user(empid,emp_username,emp_password) values (3,'Rajesh','Rajesh');
insert into user(empid,emp_username,emp_password) values (4,'Shruthy','Shruthy');
insert into user(empid,emp_username,emp_password) values (5,'Test','Test');
    