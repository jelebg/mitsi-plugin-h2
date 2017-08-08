create table tata (id integer not null, str varchar(255));

alter table tata add primary key (id);

alter table tata add column str2 varchar2(255);

create index mon_index on tata(str, str2);

create view TATA_VIEW as select * from tata;

create table toto (id1 integer not null, id2 integer not null, str varchar2(255));

alter table toto add primary key (id1, id2);

drop table tutu;

create table tutu(
 id integer primary key, 
 str varchar2(255) not null unique,
 tata_fk integer references tata(id),
 tutu_fk_1 integer,
 tutu_fk_2 integer
);

alter table tutu add foreign key (tutu_fk_1, tutu_fk_2) references toto (id1, id2);


insert into tata(id, str) values (1, 'un');
insert into tata(id, str) values (2, 'deux');
insert into tata(id, str) values (3, 'trois');
insert into tata(id, str) values (4, 'quatre');
commit;

create schema monschema;

create table monschema.tata2(id integer, str varchar2(255));

create sequence test_sq;

