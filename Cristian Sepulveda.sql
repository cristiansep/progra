
--1--Liste todas las alumnas
select * from Alumno where Sexo=1

--2--Guarde 10 estudiantes
insert into Alumno values(158499924,'OSCAR','RAMIREZ','BAQUEDANO','1997-06-28',61.000, 0, 2018,'PEV');
insert into Alumno values(208856488,'YOGER','RAMOS','RAMOS','1990-11-05',61.000, 0, 2016,'DIA');
insert into Alumno values(598684125,'FABIAN','GUTIERREZ','SALGADO','1995-03-20',61.000, 0, 2019,'PEV');
insert into Alumno values(582254525,'LISA','SIMSON','SIMSON','1985-04-05',61.000, 1, 2016,'PEV');
insert into Alumno values(336965654,'ROSA','MENDEZ','ULLOA','1988-10-13',61.000, 1, 2018,'DIA');
insert into Alumno values(112585454,'IVAN','ROJAS','PEREZ','1996-12-25',61.000, 0, 2018,'PEV');
insert into Alumno values(558962125,'LAUTARO','RAMIREZ','BAQUEDANO','1999-01-01',61.000, 0, 2016,'PEV');
insert into Alumno values(223659854,'MAX','CARCAMO','SOTO','2000-07-25',61.000, 0, 2018,'DIA');
insert into Alumno values(225236954,'IGOR','CABALERA','CARBALLO','1986-07-10',61.000, 0, 2018,'PEV');
insert into Alumno values(223695847,'JAMES','DELGADO','REINOSO','1983-09-15',61.000, 0, 2018,'DIA');
insert into Alumno values(158896532,'DAVE','MUSTAINE','MUSTAINE','1993-10-18',61.000, 0, 2018,'PEV');

--3--
UPDATE Alumno SET Jornada='DIA' WHERE Ingreso=2015

select * from Alumno where  Ingreso=2015

--4--
delete from Alumno where FechaNacimiento='1985/02/29'

--5--
select Sexo,Jornada,Ingreso from Alumno group by Sexo,Jornada,Ingreso


--6--
SELECT Nombre,ApellidoPaterno from Alumno where Jornada='PEV' AND Nombre='JUAN'

--7--
select * from Alumno where Ingreso='2017' or Ingreso='2018'


--8--cuente la cantidad de mujeres, agrupando el resultado por año---
select Ingreso,  count(*) as mujeres from Alumno where Sexo=1 group by Ingreso


--9--genere promedio de cantidad de alumnos segun año de admision
select  nombre,Ingreso as [año de admision],AVG(Rut) as alumnos from Alumno where Ingreso='2018' group by Ingreso,Nombre


--10--liste nombre, apellido y sexo 
select nombre,ApellidoMaterno,ApellidoPaterno,sexo from Alumno where (FechaNacimiento between '1990' AND '1995')


--11--liste cantidad de alumnos segun jornada--
select count(Alumno.Nombre) AS [Alumnos], Jornada from Alumno where Jornada='DIA' GROUP BY Jornada


--12--elimine todas las alumnas que son de la jornada diurna y que su nombre sea filomena--
delete from Alumno where Sexo=1 and Jornada='DIA' and Nombre='Filomena'

--13--actualice el sexo de estudiantes varones a femenino, estos estudiantes deben tener cumpleaños el 31.12.1910
update Alumno set Sexo=1 where FechaNacimiento='1997/12/31/'


--14--Muestre el nombre y apellido , junto a la fecha de nacimineto de los alumnos de la jornada PEV de la promocion 2018
select nombre,ApellidoPaterno,ApellidoMaterno,FechaNacimiento from Alumno where Jornada='PEV' AND Ingreso=2018


--15--Liste y ordene de mayor a menor segun edad y año de admision todos los estudiantes de la base de datos
select * from Alumno order by FechaNacimiento asc, Ingreso asc




