create table persons(
ID int Not Null, 
LastName varchar(255) not null,
FirstName varchar(255),
Age int, 
Email varchar(30)
constraint unq_Persons_Email
unique (Email)
)

alter table persons
add constraint Chk_Persons_Email
check (Email Like '%@%')

insert into persons values (1,'Castiel', 'Rain',19,'asdf@gmail.com')
insert into persons values (2,'Castiel2', 'Rain2',19,'asdf@gmail.com')
insert into persons values (2,'Castiel2', 'Rain2',19,'asdggfgmail.com')
select * from persons

alter table persons
drop constraint unq_Persons_Email

--Alter table persons
--add constraint unq_Persons_Email
--unique (Email)

create table HNDStudent
(
ID int not null,
Name varchar(30) not null,
Gender char(6) not null
constraint def_HNDStudent_Gender
default 'Male',
DateOfBirth date not null,
Age int not null

)
select * from HNDStudent
insert into HNDStudent (ID,Name,DateOfBirth, Age) values (1,'Castiel','9/6/99',19)

alter table HNDStudent
drop constraint def_HNDStudent_Gender

--alter table HNDStudent
--add constraint def_HNDStudent_Gender
--default 'Male' for Gender
drop table persons
Create table Persons
(
ID int not null,
LastName varchar(255) not null,
FirstName varchar(255),
Age int
constraint Chk_Person_Age
Check (Age>=18),
City varchar(255)
)
insert into Persons values (1,'Aung','Kyaw Oo',19,'Yangon')
insert into Persons values (2,'Aung','Kyaw Oo',99,'Yangon')

Select * From Persons

update Persons
set Age=20
where ID=2

alter table Persons
drop constraint Chk_Person_Age

alter table Persons
add constraint Chk_Person_Age
check (Age>=16 and Age<=45)

alter table Persons
add constraint Chk_Persons_FirstName
check(FirstName Like 'Mg%' or FirstName Like 'Ma%')

