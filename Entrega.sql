/*
Tercera Entrega: Bases de datos
Grupo: 4
Nombres: David Palacios, Sebastian Vergara, Nicolas Sanchez, Maria Camila Paternina, Paula Penuela
Cuentas: is562815, is562814,is562812,is562806,is562810
*/

--CREACIÓN DE TABLAS
drop table Fuente;
drop table PeriodoFecha;

create table Fuente(
id number generated always as identity primary key,
hemisferio varchar2(50),
continente varchar2(50),
unique(hemisferio,continente)
);
grant select on Fuente to jcarreno;

create table PeriodoFecha(
id number generated always as identity primary key,
anio int,
mes int,
unique(anio,mes)
);
grant select on PeriodoFecha to jcarreno;




--INSERTS
--Fuente
insert into Fuente(hemisferio,continente) values('Norte','NorteAmerica');
insert into Fuente(hemisferio,continente) values('Norte','CentroAmerica');
insert into Fuente(hemisferio,continente) values('Norte','Europa');
insert into Fuente(hemisferio,continente) values('Norte','Asia');
insert into Fuente(hemisferio,continente) values('Sur','Africa');
insert into Fuente(hemisferio,continente) values('Sur','SurAmerica');
insert into Fuente(hemisferio,continente) values('Sur','Australia');
insert into Fuente(hemisferio,continente) values('Sur','Antartida');
--Fechas
insert into PeriodoFecha(anio,mes) values(2021,11);
insert into PeriodoFecha(anio,mes) values(2021,10);
insert into PeriodoFecha(anio,mes) values(2021,09);
insert into PeriodoFecha(anio,mes) values(2021,08);
insert into PeriodoFecha(anio,mes) values(2021,07);
insert into PeriodoFecha(anio,mes) values(2021,06);
insert into PeriodoFecha(anio,mes) values(2021,05);
insert into PeriodoFecha(anio,mes) values(2021,04);
insert into PeriodoFecha(anio,mes) values(2021,03);
insert into PeriodoFecha(anio,mes) values(2021,02);
insert into PeriodoFecha(anio,mes) values(2021,01);

insert into PeriodoFecha(anio,mes) values(2020,12);
insert into PeriodoFecha(anio,mes) values(2020,11);
insert into PeriodoFecha(anio,mes) values(2020,10);
insert into PeriodoFecha(anio,mes) values(2020,09);
insert into PeriodoFecha(anio,mes) values(2020,08);
insert into PeriodoFecha(anio,mes) values(2020,07);
insert into PeriodoFecha(anio,mes) values(2020,06);
insert into PeriodoFecha(anio,mes) values(2020,05);
insert into PeriodoFecha(anio,mes) values(2020,04);
insert into PeriodoFecha(anio,mes) values(2020,03);
insert into PeriodoFecha(anio,mes) values(2020,02);
insert into PeriodoFecha(anio,mes) values(2020,01);

insert into PeriodoFecha(anio,mes) values(2019,12);
insert into PeriodoFecha(anio,mes) values(2019,11);
insert into PeriodoFecha(anio,mes) values(2019,10);
insert into PeriodoFecha(anio,mes) values(2019,09);
insert into PeriodoFecha(anio,mes) values(2019,08);
insert into PeriodoFecha(anio,mes) values(2019,07);
insert into PeriodoFecha(anio,mes) values(2019,06);
insert into PeriodoFecha(anio,mes) values(2019,05);
insert into PeriodoFecha(anio,mes) values(2019,04);
insert into PeriodoFecha(anio,mes) values(2019,03);
insert into PeriodoFecha(anio,mes) values(2019,02);
insert into PeriodoFecha(anio,mes) values(2019,01);

insert into PeriodoFecha(anio,mes) values(2018,12);
insert into PeriodoFecha(anio,mes) values(2018,11);
insert into PeriodoFecha(anio,mes) values(2018,10);
insert into PeriodoFecha(anio,mes) values(2018,09);
insert into PeriodoFecha(anio,mes) values(2018,08);
insert into PeriodoFecha(anio,mes) values(2018,07);
insert into PeriodoFecha(anio,mes) values(2018,06);
insert into PeriodoFecha(anio,mes) values(2018,05);
insert into PeriodoFecha(anio,mes) values(2018,04);
insert into PeriodoFecha(anio,mes) values(2018,03);
insert into PeriodoFecha(anio,mes) values(2018,02);
insert into PeriodoFecha(anio,mes) values(2018,01);

insert into PeriodoFecha(anio,mes) values(2017,12);
insert into PeriodoFecha(anio,mes) values(2017,11);
insert into PeriodoFecha(anio,mes) values(2017,10);
insert into PeriodoFecha(anio,mes) values(2017,09);
insert into PeriodoFecha(anio,mes) values(2017,08);
insert into PeriodoFecha(anio,mes) values(2017,07);
insert into PeriodoFecha(anio,mes) values(2017,06);
insert into PeriodoFecha(anio,mes) values(2017,05);
insert into PeriodoFecha(anio,mes) values(2017,04);
insert into PeriodoFecha(anio,mes) values(2017,03);
insert into PeriodoFecha(anio,mes) values(2017,02);
insert into PeriodoFecha(anio,mes) values(2017,01);

insert into PeriodoFecha(anio,mes) values(2016,12);
insert into PeriodoFecha(anio,mes) values(2016,11);
insert into PeriodoFecha(anio,mes) values(2016,10);
insert into PeriodoFecha(anio,mes) values(2016,09);
insert into PeriodoFecha(anio,mes) values(2016,08);
insert into PeriodoFecha(anio,mes) values(2016,07);
insert into PeriodoFecha(anio,mes) values(2016,06);
insert into PeriodoFecha(anio,mes) values(2016,05);
insert into PeriodoFecha(anio,mes) values(2016,04);
insert into PeriodoFecha(anio,mes) values(2016,03);
insert into PeriodoFecha(anio,mes) values(2016,02);
insert into PeriodoFecha(anio,mes) values(2016,01);