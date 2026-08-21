create database cadastro;

use cadastro;

create table pessoas(
nome varchar(30),
idade tinyint,
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);

describe pessoas;

drop database cadastro;

create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table pessoas(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)
) default charset = utf8;

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'Creuza', '1920-12-30', 'F', '50.2', '1.65', default);

insert into pessoas values
(default, 'Adalgiza', '1930-11-2', 'F', '63.2', '1.75', 'Irlanda');

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'Clásudio', '1975-12-22', 'M', '99.0', '2.15', 'Brasil'),
(default, '	Pedro', '1999-12-3', 'M', '87', '2', default),
(default, 'Janaína', '1987-11-12', 'F', '75.4', '1.66', 'EUA');

select * from pessoas;

desc pessoas;

alter table pessoas
add column profissao varchar(10);

select * from pessoas;

alter table pessoas
drop column profissao;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
add column codigo int first;

alter table pessoas
modify column profissao varchar(20) not null default '';

alter table pessoas
change column profissao prof varchar(20);

alter table pessoas
rename to gafanhotos;

create table if not exists gafanhotos (teste int);

create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
) default charset=utf8;

alter table cursos
add column idcurso int first;

describe cursos;

alter table cursos
add primary key (idcurso);

create table if not exists  teste(
id int,
nomr varchar(10),
idade int
);

insert into teste value
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

select * from teste;

drop table if exists teste;

use cadastro;

select * from gafanhotos;

insert into cursos values
('1', 'html4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmo', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Pothoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução á linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Bancos de Dados MySQL', '30', '15', '2016'),
('7', '	Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Dança rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscrito', '5', '2', '2018');

select * from cursos;

update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', ano = '2015', carga = '40'
where idcurso = '5'
limit 1;

delete from cursos
where idcurso='8';

select * from cursos
order by nome;

select * from cursos
order by nome desc;

select * from cursos
order by nome asc;

select nome, carga, ano from cursos
order by nome;

select ano, nome, carga from cursos
order by ano;

select * from cursos
where ano = '2016'
order by nome;

select nome, descricao, ano from cursos
where ano <= '2016'
order by ano, nome;

select nome, descricao, ano from cursos
where ano < '2015'
order by ano, nome;

select nome, descricao, ano from cursos
where ano > '2016'
order by ano, nome;

select nome, descricao, ano from cursos
where ano >= '2016'
order by ano, nome;

select nome, descricao, ano from cursos
where ano != '2016'
order by ano, nome;

select nome, descricao, ano from cursos
where ano <> '2016'
order by ano, nome;

select nome, ano from cursos
where ano between 2014 and 2016;

select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc;

select nome, descricao, ano from  cursos
where ano in (2014, 2016)
order by ano;

select nome, carga, totaulas from cursos
where carga > 35 and totaulas <= 30;

select * from cursos
where nome like 'P%';

select * from cursos
where nome like '%a';

select * from cursos
where nome like '%A%';

select * from cursos
where nome not like '%A%';

update cursos set nome = 'PáOO' where idcurso = '9';

select * from cursos
where nome like 'ph%p%';

select * from cursos
where nome like 'ph%p';

select max(totaulas) from cursos;

select min(totaulas) from cursos;

select sum(totaulas) from cursos;

select avg(totaulas) from cursos;

describe cursos;

select distinct totaulas, count(*) from cursos
group by totaulas
order by totaulas;

select * from cursos where totaulas > 20;

select carga, count(nome) totaulas from cursos where totaulas = 30
group by carga;

select ano, count(*) from cursos
group by ano
order by count(*);

select ano, count(*) from cursos
where totaulas > 30
group by ano
having count(ano) > 2013
order by count(*) desc;

select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);