create database mfpe;
use mfpe;
drop database mfpe;

create table Employee(
	id int primary key auto_increment,
    name varchar(50) not null,
    department varchar(50),
    gender varchar(6) not null,
    age int not null,
    contact_number bigint,
    email varchar(100) unique,
    points_gained int default 0,
    check (gender in ('male','female','other')),
    check ( age > 0 )
    );
    
create table Offer(
	id int primary key auto_increment,
    name varchar(50) not null,
    description varchar(100),
    category varchar(50) not null,
    open_date timestamp default now(),
    closed_date timestamp,
    engaged_date timestamp,
    engaged_emp_id int,
    emp_id int not null,
    likes int default 0,
    foreign key(engaged_emp_id) references Employee(id) on delete cascade,
    foreign key(emp_id) references Employee(id) on delete cascade
    );

create table liked_by(
	emp_id int,
    offer_id int,
    liked_on timestamp default now(),
    primary key(emp_id,offer_id),
    foreign key(emp_id) references Employee(id) on delete cascade,
    foreign key(offer_id) references Offer(id) on delete cascade
    );

insert into Employee(id,name,gender,age) values(1,"Hariprasad","male",21);
insert into Employee(id,name,gender,age) values(2,"Varun","male",21);
insert into Employee(id,name,gender,age) values(3,"Rajesh","male",22);
insert into Employee(id,name,gender,age) values(4,"Shruthy","female",22);


insert into Offer(id,name,category,emp_id) values(1,"Offer 1" ,"Electronics",3);
insert into Offer(id,name,category,emp_id) values(2,"Offer 2" ,"Electronics1",3);
insert into Offer(id,name,category,emp_id) values(3,"Offer 4" ,"Electronics2",2);
insert into Offer(id,name,category,emp_id) values(4,"Offer 5" ,"Electronics3",1);
insert into Offer(id,name,category,emp_id) values(5,"Offer 6" ,"Electronics4",2);
insert into Offer(id,name,category,emp_id) values(6,"Offer 3" ,"Electronics5",1);
insert into Offer(id,name,category,emp_id) values(7,"Offer 7" ,"Electronics6",4);
insert into Offer(id,name,category,emp_id) values(8,"Offer 8" ,"Electronics7",4);

insert into liked_by(emp_id,offer_id) values(1,1);
insert into liked_by(emp_id,offer_id) values(1,2);
insert into liked_by(emp_id,offer_id) values(2,3);
insert into liked_by(emp_id,offer_id) values(2,4);
insert into liked_by(emp_id,offer_id) values(3,5);
insert into liked_by(emp_id,offer_id) values(3,6);
insert into liked_by(emp_id,offer_id) values(4,7);
insert into liked_by(emp_id,offer_id) values(4,8);