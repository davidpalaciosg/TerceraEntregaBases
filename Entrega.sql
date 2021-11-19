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
/
begin 
    for i in reverse 1918 .. 2021 loop
        for j in  01 .. 12 loop
            insert into PeriodoFecha(anio,mes) values(i,j);
        end loop;
    end loop;
end;
/

--select * from periodofecha,fuente order by periodofecha.id;


