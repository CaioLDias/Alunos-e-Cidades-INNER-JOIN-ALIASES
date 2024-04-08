-- criando tabela cidades --
create table Cidades(
  id int PRIMARY key,
  nome varchar(60) not NULL,
  populacao int
);

-- criando tabela alunos --
create table Alunos(
  id int PRIMARY KEY,
  nome varchar(60),
  data_nasc date,
  cidade_id int,
  
  FOREIGN KEY(cidade_id) REFERENCES Cidades(id)
);

-- inserindo valores na tabela cidades --
insert into Cidades values(1, 'Arraial dos Tucanos',42632);
insert into Cidades Values(2, 'Springfield', 13820);
insert into Cidades values(3, 'Hill Valley', 27383);
insert into Cidades Values(4, 'Coruscant', 19138);
insert into Cidades Values(5, 'Minas Tirith', 31394);

-- inserindo valores na tabela alunos --
insert into Alunos Values(1, 'Immanuel Kant', date('1724-04-22'), 4);
insert into Alunos values(2, 'Alan Turing', date('1912-06-23'), 3);
insert into Alunos Values(3, 'George Boole', date('2002-01-01'),1);
insert into Alunos Values(4, 'Lynn Margulis', date('1991-08-12'),3);
insert into Alunos values(5, 'Nicola Tesla', date('2090-01-08'), NULL);
insert into Alunos values(6, 'Ada Lovelace', date('1978-05-28'), 4);
insert into Alunos values(7, 'Claude Shannon', date('1982-10-15'), 3);
insert into Alunos values(8, 'Charles Darwin', date('2010-02-06'), NULL);
insert into Alunos values(9, 'Marie Curie', date('2007-07-12'), 3);
insert into Alunos values(10, 'Carl Sagan', date('2000-11-20'), 1);
insert into Alunos values(11, 'Tim Berners-Lee', date('1973-12-05'), 4);
insert into Alunos values(12, 'Richard Feynman', date('1982-09-12'), 1);

-- testando tabela alunos --
select * from Alunos

-- selecionando somente os alunos que possuam o mesmo id da tabela cidade -- 
select * from Alunos inner join Cidades on Cidades.id = Alunos.cidade_id;