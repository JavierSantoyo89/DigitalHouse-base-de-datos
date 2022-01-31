Create database notasDigitalHouse;
Use notasDigitalHouse;

create table users (
	idUser int primary key auto_increment,
	nameUser nvarchar(255) not null,
	email nvarchar(100) null)
ENGINE = InnoDB;
-- drop table users;
/* Insert users
Insert into users values (DEFAULT, 'Javier Santoyo', 'javier.santoyo@yahoo.com');
Insert into users values (DEFAULT, 'Yuridia Reyes', 'yuridia.r@yahoo.com');
Insert into users values (DEFAULT, 'Karen Torres', 'Karen.t@yahoo.com');
Insert into users values (DEFAULT, 'Karen Gonzalez', 'karen.g@yahoo.com');
Insert into users values (DEFAULT, 'Liliana Rivas', 'lili.r@yahoo.com');
Insert into users values (DEFAULT, 'Valeria Rodriguez', 'vale.r@yahoo.com');
Insert into users values (DEFAULT, 'Eduardo Rios', 'Edu.r@yahoo.com');
Insert into users values (DEFAULT, 'Mauricio Rojas', 'mauricio.r@yahoo.com');
Insert into users values (DEFAULT, 'Gerardo Rios', 'gera.r@yahoo.com');
Insert into users values (DEFAULT, 'Hola mundo', 'hola.mundo@yahoo.com');
*/
-- Select * from users;

Create table category (
idCategory int primary key auto_increment,
nameCategory nvarchar(100) not null
)
ENGINE = InnoDB;
 -- Drop table category;
/* Insert category;
Insert into category values (default, 'Musica');
Insert into category values (default, 'IT');
Insert into category values (default, 'Negocios');
Insert into category values (default, 'Food');
Insert into category values (default, 'Electronic');
Insert into category values (default, 'Cars');
Insert into category values (default, 'Sports');
Insert into category values (default, 'News');
Insert into category values (default, 'Bussines');
Insert into category values (default, 'Education');
*/
-- Select * from category;

create table note (
	idNote int primary key auto_increment,
    title nvarchar(100) not null,
    createDate date not null,
    lastEdit date,
    description text,
    blocked boolean not null,
    idCategory int not null
)
ENGINE = InnoDB;
-- Drop table note;
/* Insert data en table note;
Insert into note values (DEFAULT, 'Mi primera nota', now(), null, 'Primera nota, shalala...', 0, 2);
Insert into note values (DEFAULT, 'Mi segunda nota', now(), null, 'Segunda nota, shalala...', 0, 1);
Insert into note values (DEFAULT, 'Mi tercer nota', now(), null, 'Tercera nota, shalala...', 0, 3);
Insert into note values (DEFAULT, 'Mi cuarta nota', now(), null, 'Cuarta nota, shalala...', 0, 4);
Insert into note values (DEFAULT, 'Mi quinta nota', now(), null, 'Quinta nota, shalala...', 0, 5);
Insert into note values (DEFAULT, 'Mi sexta nota', now(), null, 'Sexta nota, shalala...', 0, 6);
Insert into note values (DEFAULT, 'Mi septima nota', now(), null, 'Septima nota, shalala...', 0, 7);
Insert into note values (DEFAULT, 'Mi octava nota', now(), null, 'Octava nota, shalala...', 0, 8);
Insert into note values (DEFAULT, 'Mi nocena nota', now(), null, 'Novena nota, shalala...', 0, 9);
Insert into note values (DEFAULT, 'Mi decima nota', now(), null, 'Decima nota, shalala...', 0, 10);
*/
-- Select * from note;

CREATE TABLE global (
	idGlobal INT Primary key NOT NULL AUTO_INCREMENT,
	idUser INT NOT NULL,
	IdNote INT NOT NULL)
ENGINE = InnoDB;
-- Drop table global;
/* insert values at global
Insert into global values ( default, 1,1);
Insert into global values ( default, 2,2);
Insert into global values ( default, 3,3);
Insert into global values ( default, 4,4);
Insert into global values ( default, 5,5);
Insert into global values ( default, 6,6);
Insert into global values ( default, 7,7);
Insert into global values ( default, 8,8);
Insert into global values ( default, 9,9);
Insert into global values ( default, 10,10);
*/
-- Select * from global;

/* Select User, email, nameCategory, title, createDate and description  of notes
Select u.nameUser as 'User', u.email, c.nameCategory, n.title, n.createDate, n.Description
From users as u, global as g, category as c, note as n
Where u.idUser = g.idUser and n.idNote = g.idNote and n.idCategory = c.idCategory;
*/