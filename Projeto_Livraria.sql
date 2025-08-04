create table livros
(
id_livro int not null,
nome varchar (50) not null,
genero varchar (50) not null,
valor decimal (6,2) not null,
data_chegada date not null,
primary key (id_livro)
);

create table clientes
(
id_cliente int not null,
nome varchar (50) not null,
idade int not null,
endereco varchar(100) not null,
id_livro_comprado int not null
primary key (id_cliente)
constraint fk_livro_comprado foreign key(id_livro_comprado) references livros (id_livro)
)

create table vendas
(
id_compra int not null,
forma_de_pagamento varchar(20),
id_livro int not null,
id_cliente int not null,
primary key (id_compra),
constraint fk_livro foreign key(id_livro) references livros (id_livro),
constraint fk_cliente foreign key(id_cliente) references clientes (id_cliente)
)
-- Data sempre entre ' ' e valor sempre com ponto e n�o v�rgula --

insert into livros (id_livro, nome, genero, valor, data_chegada)
values
(1100, 'O Gato Preto', 'Terror', 28.00, '2013-07-23'),
(1101, 'O Po�o e o P�ndulo', 'Terror', 29.00, '2015-12-12'),
(1102, 'A Queda da Casa de Usher', 'Terror', 30.00, '2017-05-04'),
(1103, 'Contos de Mist�rio e Imagina��o', 'Terror', 40.00, '2014-08-18'),
(1104, 'O Corvo', 'Poesia', 25.00, '2016-01-29'),
(1105, 'O Exorcista', 'Terror', 48.00, '2013-06-13'),
(1106, 'Carrie, a Estranha', 'Terror', 40.00, '2015-11-24'),
(1107, 'O Iluminado', 'Terror', 50.00, '2017-04-17'),
(1108, 'It: A Coisa', 'Terror', 65.00, '2014-09-21'),
(1109, 'Nelson Mandela', 'Biografia', 99.99, '2022-02-15'),
(1110, 'O Senhor dos An�is', 'Fantasia', 89.90, '2015-03-01'),
(1111, 'Eu sei por que o p�ssaro ainda canta na gaiola', 'Biografia', 42.30, '2020-07-28'),
(1112, 'O Estranho Mundo de Jack', 'Fic��o Cient�fica', 39.99, '2018-03-10'),
(1115, 'A Arte da Guerra - Sun Tzu', 'Motivacional', 28.30, '2013-06-02'),
(1113, 'O Andar do B�bado', 'Fic��o Cient�fica', 44.99, '2014-07-15'),
(1114, 'A Sombra do Vento', 'Romance', 55.50, '2013-09-03'),
(1116, '1984', 'Distopia', 38.90, '2015-01-20'),
(1117, 'Cem Anos de Solid�o', 'Realismo M�gico', 62.00, '2013-10-11'),
(1118, 'O Pequeno Princ�pe', 'F�bula', 29.90, '2016-04-05'),
(1119, 'Dom Quixote', 'Cl�ssico', 75.00, '2014-02-28'),
(1120, 'Orgulho e Preconceito', 'Romance', 42.50, '2017-06-12'),
(1121, 'Crime e Castigo', 'Cl�ssico', 49.99, '2013-08-19'),
(1122, 'O Grande Gatsby', 'Cl�ssico', 34.99, '2016-12-25'),
(1123, 'Admir�vel Mundo Novo', 'Distopia', 39.99, '2014-10-07'),
(1124, 'O Di�rio de Anne Frank', 'Biografia', 33.75, '2018-05-14'),
(1125, 'A Revolu��o dos Bichos', 'S�tira', 30.25, '2014-01-09'),
(1126, 'O Sol � Para Todos', 'Drama', 48.00, '2015-07-22'),
(1127, 'Moby Dick', 'Aventura', 60.00, '2013-04-11'),
(1128, 'Dr�cula', 'Terror', 39.50, '2016-06-04'),
(1129, 'Frankstein', 'Fic��o Cient�fica', 37.00, '2017-03-18'), 
(1130, 'O Retrato de Dorian Gray', 'Cl�ssico', 41.00, '2015-02-06'),
(1131, 'As Cr�nicas de N�rnia', 'Fantasia', 70.00, '2014-11-29'),
(1132, 'Alice no Pa�s das Maravilhas', 'Fantasia', 32.70, '2018-04-21'),
(1133, 'Vinte Mil L�guas Submarinas', 'Aventura', 49.99, '2013-10-16'),
(1134, 'O Morro dos Ventos Uivantes', 'Romance', 46.60, '2016-12-08'),
(1135, 'O Apanhador no Campo de Centeio', 'Fic��o', 36.80, '2014-05-02'),
(1136, 'Ulisses', 'Cl�ssico', 89.99, '2015-09-27'), 
(1137, 'Em Busca do Tempo Perdido', 'Cl�ssico', 95.29, '2017-01-13'),
(1138, 'A Divina Com�dia', 'Poesia', 80.00, '2013-08-24'),
(1139, 'O Nome da Rosa', 'Mist�rio', 58.25, '2014-07-07'),
(1140,'O Sil�ncio dos Inocentes', 'Thriller', 44.00, '2016-03-30'),
(1141, 'O C�digo Da Vinci', 'Thriller', 47.00, '2013-11-05'),
(1142,'O Ca�ador de Pipas', 'Drama', 52.00, '2015-02-17'),
(1143, 'A Menina que Roubava Livros', 'Drama Hist�rico', 53.00, '2017-06-23'),
(1144, 'O Alquimista', 'Fic��o Filos�fica',  34.00, '2014-04-10'),
(1145, 'O Poder do H�bito', 'N�o Fic��o',  59.00, '2015-08-01'),
(1146, 'Sapiens: Uma Breve Hist�ria da Humanidade', 'N�o Fic��o', 70.00, '2013-09-19'),
(1147, 'O Guia do Mochileiro das Gal�xias', 'Fic��o Cient�fica', 43.00, '2016-01-26'),
(1148, 'O Hobbit', 'Fantasia', 51.00, '2014-12-14'),
(1149, 'As Aventuras de Tom Sawyer', 'Aventura', 31.00, '2018-05-03'),
(1150, 'O Processo', 'Cl�ssico', 40.50, '2013-10-20'),
(1151, 'Metamorfose', 'Cl�ssico',  28.00, '2017-07-15'),
(1152, 'A Peste', 'Cl�ssico',  42.00, '2015-03-09'),
(1153, 'O Estrangeiro', 'Cl�ssico',  39.00, '2014-11-22'),
(1154, 'O Nome do Vento', 'Fantasia',  65.00, '2016-08-06'),
(1155, 'A Cor P�rpura', 'Drama',  45.50, '2014-01-11'),
(1156, 'O Conto da Aia', 'Distopia', 48.50, '2017-04-28'),
(1157, 'O Sol Tamb�m se Levanta', 'Cl�ssico', 37.50, '2013-09-04'),
(1158, 'Adeus �s Armas', 'Cl�ssico', 36.50, '2015-02-18'),
(1159, 'Por Quem os Sinos Dobram', 'Cl�ssico', 49.50, '2014-07-29'),
(1160, 'O Velho e o Mar', 'Cl�ssico', 29.50, '2016-12-13'),
(1161, 'O Jardim Secreto', 'Infantil', 30.50, '2018-05-24'),
(1162, 'Anne de Green Gables', 'Cl�ssico', 38.00, '2013-10-07'),
(1163, 'Pollyanna', 'Cl�ssico', 27.00, '2015-03-21'),
(1164, 'O Fantasma da �pera', 'Romance', 41.50, '2014-09-16'),
(1165, 'O Corcunda de Notre Dame', 'Cl�ssico', 43.50, '2017-01-02'),
(1166, 'Os Miser�veis', 'Cl�ssico', 78.00, '2013-08-25'),
(1167, 'Guerra e Paz', 'Cl�ssico', 99.00, '2015-11-10'),
(1168, 'Anna Kari�nina', 'Cl�ssico', 72.00, '2014-04-03'),
(1169, 'Mem�rias P�stumas de Br�s Cubas', 'Cl�ssico', 35.50, '2017-06-19'),
(1170, 'Dom Casmurro', 'Cl�ssico', 34.50, '2013-08-14'),
(1171, 'Quincas Borba', 'Cl�ssico', 33.50, '2016-02-20'),
(1172, 'O Corti�o', 'Cl�ssico', 36.00, '2014-07-05'),
(1173, 'Iracema', 'Romance', 32.00, '2015-09-22'),
(1174, 'O Guarani', 'Romance', 31.50, '2013-12-11'),
(1175, 'Vidas Secas', 'Drama', 30.00, '2017-03-28'),
(1176, 'Grande Sert�o: Veredas', 'Cl�ssico', 68.00, '2014-06-01'),
(1177, 'Macuna�ma', 'Modernismo', 39.00, '2015-10-17'),
(1178, 'Capit�es da Areia', 'Drama', 40.00, '2014-01-13'),
(1179, 'Gabriela, Cravo e Canela', 'Romance', 42.00, '2018-05-26'),
(1180, 'O Tempo e o Vento', 'Saga Hist�rica', 85.00, '2016-11-18'),
(1181, 'Incidente em Antares', 'S�tira', 46.00, '2014-04-29'),
(1182, 'A Casa dos Esp�ritos', 'Realismo M�gico', 57.00, '2015-09-13'),
(1183, 'Eva Luna', 'Realismo M�gico', 54.00, '2017-02-24'),
(1184, 'De Amor e de Sombra', 'Romance', 50.00, '2013-07-07'),
(1185, 'O Labirinto dos Esp�ritos', 'Romance', 60.00, '2014-10-21'),
(1186, 'A Cidade dos Sonhos', 'Fic��o Cient�fica', 47.00, '2016-03-26'),
(1187, 'O Homem Invis�vel', 'Fic��o Cient�fica', 38.00, '2013-08-02'),
(1188, 'A M�quina do Tempo', 'Fic��o Cient�fica', 37.00, '2015-12-25'),
(1189, 'A Guerra dos Mundos', 'Fic��o Cient�fica', 40.00, '2017-04-10'),
(1190, 'Viagem ao Centro da Terra', 'Aventura', 41.00, '2014-09-03'),
(1191, 'A Ilha Misteriosa', 'Aventura', 42.00, '2016-01-19'),
(1192, 'Os Tr�s Mosqueteiros', 'Aventura', 55.00, '2013-06-14'),
(1193, 'O Conde de Monte Cristo', 'Aventura', 68.00, '2015-11-20'),
(1194, 'Dona Flor e Seus Dois Maridos', 'Romance', 44.00, '2013-08-04'),
(1195,'Robin Hood', 'Aventura', 35.00, '2018-03-15'),
(1196, 'As Minas do Rei Salom�o', 'Aventura', 40.00, '2014-07-22'),
(1197, 'Tarzan dos Macacos', 'Aventura', 39.00, '2013-10-11'),
(1198, 'A Volta ao Mundo em Oitenta Dias', 'Aventura', 45.00, '2017-05-28'),
(1199, 'O Chamado Selvagem', 'Aventura', 34.00, '2014-09-01'),
(1200, 'Caninos Brancos', 'Aventura', 33.00, '2016-02-17')


select * 
from livros

-- Exemplo de como atualizar --

update livros
set id_livro = 1115
where id_livro = 4

use livraria
insert into clientes (id_cliente, nome, idade, endereco, id_livro_comprado)
values
(100, 'Gabriel', 20, 'Rio Grande do Sul', 1109),
(101, 'Eduarda', 20, 'Rio Grande do Sul', 1112),
(102, 'Ana Clara', 25, 'S�o Paulo', 1143),
(103, 'Lucas', 30, 'Minas Gerais',1162),
(104, 'Isabela', 22, 'Bahia', 1179),
(105, 'Matheus', 28, 'Paran�', 1123),
(106, 'Julia', 63, 'Santa Catarina', 1142),
(107, 'Pedro', 35, 'Rio de Janeiro', 1128),
(108, 'Mariana', 27, 'Cear�', 1103),
(109, 'Guilherme', 31, 'Pernambuco', 1119),
(110, 'Sofia', 72, 'Goi�s', 1159),
(111, 'Rafael', 29, 'Esp�rito Santo', 1126),
(112, 'Laura', 21, 'Par�', 1105),
(113, 'Felipe', 33, 'Amazonas', 1198),
(114, 'Carolina', 26, 'Mato Grosso', 1175),
(115, 'Bruno', 24, 'Distrito Federal', 1122),
(116, 'Amanda', 32, 'Alagoas', 1133),
(117, 'Daniel', 34, 'Sergipe', 1144),
(118, 'Luiza', 14, 'Para�ba', 1155),
(119, 'Thiago', 27, 'Piau�', 1166),
(120, 'Beatriz', 59, 'Maranh�o', 1177),
(121, 'Vin�cius', 25, 'Rond�nia', 1188),
(122, 'Gabriela', 30, 'Acre', 1199),
(123, 'Marcelo', 45, 'Roraima', 1200),
(124, 'Fernanda', 46, 'Amap�', 1101),
(125, 'Eduardo', 35, 'Tocantins', 1124),
(126, 'Vit�ria', 19, 'Rio Grande do Norte', 1137),
(127, 'Leonardo', 31, 'Mato Grosso do Sul', 1141),
(128, 'Clara', 23, 'Rio Grande do Sul', 1150),
(129, 'Arthur', 26, 'S�o Paulo', 1145),
(130, 'Helena', 24, 'Minas Gerais', 1138),
(131, 'Jo�o', 28, 'Bahia', 1127),
(132, 'Alice', 32, 'Paran�', 1116),
(133, 'Miguel', 15, 'Santa Catarina', 1113),
(134, 'Manuela', 50, 'Rio de Janeiro', 1194),
(135, 'Davi', 48, 'Cear�', 1183),
(136, 'L�via', 22, 'Pernambuco', 1171),
(137, 'Heitor', 29, 'Goi�s', 1161),
(138, 'Cec�lia', 16, 'Esp�rito Santo', 1159),
(139, 'Bernardo', 63, 'Par�', 1140),
(140, 'Elo�', 72, 'Amazonas', 1134),
(141, 'Enzo', 13, 'Mato Grosso', 1125),
(142, 'Helo�sa', 17, 'Distrito Federal', 1116),
(143, 'Ben�cio', 7, 'Maranh�o', 1107),
(144, 'Mait�', 30, 'Rond�nia', 1193),
(145, 'Gael', 4, 'Acre', 1104), 
(146, 'Liz', 29, 'Roraima', 1184),
(147, 'Isaac', 56, 'Tocantins', 1175),
(148, 'Benjamin', 42, 'Minas Gerais', 1167),
(149, 'Sophie', 12, 'Goi�s', 1158),
(150, 'Lucca', 8, 'Alagoas', 1149);

-- atualiza��o --
update clientes
set idade = 71
where id_cliente = 140

select *
from clientes
order by  asc


insert into compras
values
(1, 'D�bito', 1109, 100),
(2, 'Pix', 1112, 101),
(3, 'Cr�dito', 1143, 102),
(4, 'Dinheiro', 1162, 103),
(5, 'Pix', 1179, 104),
(6, 'Dinheiro', 1123, 105),
(7, 'D�bito', 1142, 106),
(8, 'Cr�dito', 1128, 107),
(9, 'Pix', 1103, 108),
(10, 'D�bito',1119, 109),
(11, 'Dinheiro',1159, 110),
(12, 'Cr�dito',1126, 111),
(13, 'Pix',1105, 112),
(14, 'Cr�dito',1198, 113),
(15, 'D�bito',1175, 114),
(16, 'Dinheiro',1122, 115),
(17, 'Pix',1133, 116),
(18, 'Dinheiro',1144, 117),
(19, 'Cr�dito',1155, 118),
(20, 'Dinheiro',1166, 119),
(21, 'Pix', 1177, 120),
(22, 'Dinheiro',1188, 121),
(23, 'Cr�dito',1199, 122),
(24, 'D�bito',1200, 123),
(25, 'Pix', 1101, 124),
(26, 'D�bito',1124, 125),
(27, 'Cr�dito',1137, 126),
(28, 'Dinheiro',1141, 127),
(29, 'Pix', 1150, 128),
(30, 'Dinheiro',1145, 129),
(31, 'D�bito',1138, 130),
(32, 'Dinheiro',1127, 131),
(33, 'Cr�dito',1116, 132),
(34, 'Dinheiro',1113, 133),
(35, 'Pix', 1194, 134),
(36, 'Dinheiro',1183, 135),
(37, 'D�bito',1171, 136),
(38, 'Dinheiro',1161, 137),
(39, 'Pix', 1159, 138),
(40, 'Cr�dito',1140, 139),
(41, 'Dinheiro',1134, 140),
(42, 'D�bito',1125, 141),
(43, 'Dinheiro',1116, 142),
(44, 'Pix', 1107, 143),
(45, 'D�bito', 1193, 144),
(46, 'Dinheiro', 1104, 145),
(47, 'Cr�dito', 1184, 146),
(48, 'Pix', 1175, 147),
(49, 'Cr�dito', 1167, 148),
(50, 'Dinheiro', 1158, 149),
(51, 'D�bito', 1149, 150)



select *
from compras



-- 1. A empresa quer saber qual � o cliente mais velho de idade, para ganhar 50% de desonto em um livro de valor igual ao que ele comprou.
-- Qual � o Cliente? E qual o valor que ele pagar� na pr�xima compra?

select top 1 *
from clientes
order by idade desc

select *
from livros
where id_livro = 1159

-- r/ O cliente � a Sofia de Goi�s, e vai pagar 24.75 reais de desconto

-- 2. Quantos livros de mais de 50 reais foram passaram pela livraria?

select count (*)
from livros
where valor >= 50

-- r/ 30 livros


-- 3. Para quantos estados o livro foi enviado?

select count(distinct (endereco)) 
from clientes

-- r/ 27 estados
  








