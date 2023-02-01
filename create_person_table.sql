use school_db;

create table Person (
	ID int auto_increment primary key,
    FirstName varchar(45) not null,
    LastName varchar(45) not null
);