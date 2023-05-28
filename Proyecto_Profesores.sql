
--------------------Se crea la tabla de los profesores en donde guardaremos todos los datos de los mismos------------------
create table profesores_tesoem(
id_prof number (5) primary key not null,
nombre_prof nvarchar2(30),
apellido_prof_pa nvarchar2 (30),
apellido_prof_ma nvarchar2 (30),
carrera_prof nvarchar2 (5),
nombre_clase_prof nvarchar2 (80),
grupo_prof nvarchar2 (5)
);

--------------------Se crea funcion de inserta los valores hacia la tabla profesores_tesoem con sus respectivos defaults------------------
create or replace procedure pa_profesores_tesoem
(id_prof in number  default 0, 
nombre_prof in nvarchar2 default 'nombre',
apellido_prof_pa in nvarchar2 default 'apellido paterno',
apellido_prof_ma in nvarchar2 default 'apellido materno',
carrera_prof in nvarchar2 default 'Sin carrera',
nombre_clase_prof in nvarchar2 default 'Null',
grupo_prof in nvarchar2 default 'Null' )
as 
begin 
insert into profesores_tesoem values (id_prof, nombre_prof, apellido_prof_pa, apellido_prof_ma, carrera_prof, nombre_clase_prof, grupo_prof);
end;
-----------------------Aqui se insetan y se ejecuta el proceso de insercion de datos, estos solo son utilizados como ejemplificacion------------------
execute pa_profesores_tesoem (1, 'Maria Guadalupe', 'Garcia', 'Serrano','ISC','aaaaaaa','6S11');
execute pa_profesores_tesoem (2, 'Maria Guadalupe', 'Garcia', 'Serrano','TIC','bbbbbbb','6T11');
execute pa_profesores_tesoem (3, 'Maria Guadalupe', 'Garcia', 'Serrano','CP','ccccccc','6C11');
execute pa_profesores_tesoem (4, 'Maria Guadalupe', 'Garcia', 'Serrano','LEG','dddddddd','6G11');
execute pa_profesores_tesoem (5, 'Maria Guadalupe', 'Garcia', 'Serrano','INAM','eeeeeeee','6M11');
execute pa_profesores_tesoem (6, 'Maria Guadalupe', 'Garcia', 'Serrano','ININ','ffffffff','6I11');
execute pa_profesores_tesoem (7, 'Maria Guadalupe', 'Garcia', 'Serrano','INAD','gggggggg','6D11');
execute pa_profesores_tesoem (8, 'Maria Guadalupe', 'Garcia', 'Serrano','IER','hhhhhhhhhh','6E11');
execute pa_profesores_tesoem (9, 'Maria Guadalupe', 'Garcia', 'Serrano','ISA','iiiiiiiii','6SA11');

select * from prof;

drop table prof;

----------------En esta seccion se crearon tablas correspondientes a cada carrera de la institucion-------------------------

----------------Se crea la tabla para la carrera de Ingeniería en Sistemas Computacionales-------------------------
create table isc1(
idisc1 number (5) primary key not null,
nombre_isc1 nvarchar2(80),
grupo_isc1 nvarchar2(5),
clase_isc1 nvarchar2 (80));

----------------Se crea la funcion para pasar los datos de la tabla profesores_tesoem a isc1-----------------
create or replace procedure insertar_isc1
as
begin
    
    insert into isc1
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from profesores_tesoem
    where carrera_prof='ISC';   --ISA significa Ingeniería en Sistemas Computacionales

end;

execute insertar_isc1;

select * from isc1;

drop table isc1;

----------------Se crea la tabla para la carrera de Ingeniería en Tecnologías de la Información y Comunicaciones-------------------------
create table tic1(
idtic1 number (5) primary key not null,
nombre_tic1 nvarchar2(80),
grupo_tic1 nvarchar2(5),
clase_tic1 nvarchar2 (80));

----------------Se crea la funcion para pasar los datos de la tabla profesores_tesoem a tic1-----------------
create or replace procedure insertar_tic1
as
begin
    
    insert into tic1 
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from profesores_tesoem
    where carrera_prof='TIC';   --TIC significa Ingeniería en Tecnologías de la Información y Comunicaciones

end;

execute insertar_tic1;

select * from tic1;

drop table tic1;

----------------Se crea la tabla para la carrera de Contador Público-------------------------
create table connn1(
idcon1 number (5) primary key not null,
nombre_con1 nvarchar2(80),
grupo_con1 nvarchar2(5),
clase_con1 nvarchar2 (80));

----------------Se crea la funcion para pasar los datos de la tabla profesores_tesoem a conn1-----------------
create or replace procedure insertar_con1
as
begin
    
    insert into connn1 
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from profesores_tesoem
    where carrera_prof='CP';   --CP significa Contador Público

end;

execute insertar_con1;

select * from connn1;

drop table connn1;

----------------Se crea la tabla para la carrera de Licenciatura en Gastronomía-------------------------
create table leg1(
idleg1 number (5) primary key not null,
nombre_leg1 nvarchar2(80),
grupo_leg1 nvarchar2(5),
clase_leg1 nvarchar2 (80));

----------------Se crea la funcion para pasar los datos de la tabla profesores_tesoem a leg1-----------------
create or replace procedure insertar_leg1
as
begin
    
    insert into leg1 
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from profesores_tesoem
    where carrera_prof='LEG';   --LEG significa Licenciatura en Gastronomía

end;

execute insertar_leg1;

select * from leg1;

drop table leg1;

----------------Se crea la tabla para la carrera de Ingeniería Ambiental-------------------------
create table inam1(
idinam1 number (5) primary key not null,
nombre_inam1 nvarchar2(80),
grupo_inam1 nvarchar2(5),
clase_inam1 nvarchar2 (80));

----------------Se crea la funcion para pasar los datos de la tabla profesores_tesoem a inam1----------------
create or replace procedure insertar_inam1
as
begin
    
    insert into inam1 
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from profesores_tesoem
    where carrera_prof='INAM';   --INAM significa Ingeniería Ambiental

end;

execute insertar_inam1;

select * from inam1;

drop table inam1;

----------------Se crea la tabla para la carrera de Ingeniería Industrial-------------------------
create table inin1(
idinin1 number (5) primary key not null,
nombre_inin1 nvarchar2(80),
grupo_inin1 nvarchar2(5),
clase_inin1 nvarchar2 (80));

----------------Se crea la funcion para pasar los datos de la tabla profesores_tesoem a inin1-----------------
create or replace procedure insertar_inin1
as
begin
    
    insert into inin1 
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from profesores_tesoem
    where carrera_prof='ININ';   --ININ significa Ingeniería Industrial

end;

execute insertar_inin1;

select * from inin1;

drop table inin1;

----------------Se crea la tabla para la carrera de Ingeniería en Administración-------------------------
create table inad1(
idinad1 number (5) primary key not null,
nombre_inad1 nvarchar2(80),
grupo_inad1 nvarchar2(5),
clase_inad1 nvarchar2 (80));

----------------Se crea la funcion para pasar los datos de la tabla profesores_tesoem a inad1-----------------
create or replace procedure insertar_inad1
as
begin
    
    insert into inad1
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from profesores_tesoem
    where carrera_prof='INAD';   --INAD significa Ingeniería en Administración

end;

execute insertar_inad1;

select * from inad1;

drop table inad1;

----------------Se crea la tabla para la carrera de Ingeniería en Energías Renovables-------------------------
create table ier1(
idier1 number (5) primary key not null,
nombre_ier1 nvarchar2(80),
grupo_ier1 nvarchar2(5),
clase_ier1 nvarchar2 (80));

----------------Se crea la funcion para pasar los datos de la tabla profesores_tesoem a ier1-----------------
create or replace procedure insertar_ier1
as
begin
    
    insert into ier1
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from profesores_tesoem
    where carrera_prof='IER';   --IER significa Ingeniería en Energías Renovables

end;

execute insertar_ier1;

select * from ier1;

drop table ier1;

----------------Se crea la tabla para la carrera de Ingeniería en Sistemas Automotrices -------------------------
create table isa1(
idisa1 number (5) primary key not null,
nombre_isa1 nvarchar2(80),
grupo_isa1 nvarchar2(5),
clase_isa1 nvarchar2 (80));

----------------Se crea la funcion para pasar los datos de la tabla profesores_tesoem a isa1-----------------
create or replace procedure insertar_isa1
as
begin
    
    insert into isa1
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from profesores_tesoem
    where carrera_prof='ISA';  --ISA significa Ingeniería en Sistemas Automotrices 

end;

execute insertar_isa1;

select * from isa1;

drop table isa1;