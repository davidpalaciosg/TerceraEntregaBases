/*
Tercera Entrega: Bases de datos
Grupo: 4
Nombres: David Palacios, Sebastian Vergara, Nicolas Sanchez, Maria Camila Paternina, Paula Penuela
Cuentas: is562815, is562814,is562812,is562806,is562810
*/

--CREACIÓN DE TABLAS
drop table envio;
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

create table Envio(
idFuente int not null,
idPeriodoFecha int not null,
cantidad int default 0,
foreign key(idFuente) references Fuente(id),
foreign key(idPeriodoFecha) references PeriodoFecha(id),
primary key (idFuente, idPeriodoFecha, cantidad)
);
grant select on Envio to jcarreno;




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
--Se crean las fechas con ciclos anidados
begin 
    for i in reverse 1917 .. 2021 loop
        for j in  01 .. 12 loop
            insert into PeriodoFecha(anio,mes) values(i,j);
        end loop;
    end loop;
end;
/

--Creación de envíos
declare
    cursor fid
        is 
        select id
        from fuente
        order by id;
    cursor pid
        is
        select id
        from periodofecha
        order by id;
begin 
    --Con los cursores se recorre cada tabla y se hace el producto cartesiano
    for i in   fid  loop
        for j in pid loop
            insert into Envio(cantidad, idFuente, idPeriodoFecha) values (dbms_random.value(0,5000), i.id ,j.id);
        end loop;
    end loop;
end;
/

select f.hemisferio, f.continente, p.anio, p.mes, e.cantidad  
from envio e
inner join fuente f on (e.idfuente = f.id)
inner join periodofecha p on (e.idPeriodoFecha = p.id)
order by p.anio desc,p.mes asc;




