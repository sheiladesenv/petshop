/* •	Crie um banco de dados utilizando a linguagem SQL */

CREATE DATABASE petshop;

/* •	Crie as 4 tabelas de cliente, veterinário, consulta e animal, contendo em cada uma das tabelas o seu atributo com seu respectivo datatype.
 (Capture a tela do XAMPP) */

 CREATE TABLE cadastrocliente (
    cpf INT(15) primary key,
    nomecliente VARCHAR(200) NOT NULL,
    telefonecliente VARCHAR(15) NOT NULL
);

 CREATE TABLE veterinario(
    crmv INT(10) primary key,
    nomeveterinario VARCHAR(200) NOT NULL,
    salario FLOAT(8) NOT NULL,
    dataadmissao DATE NOT NULL
 ); 

 CREATE TABLE consulta(
    codconsulta INT(5) primary key,
    dia DATE NOT NULL,
    horario DATE NOT NULL,
    motivo VARCHAR(200) NOT NULL
 ); 

 CREATE TABLE animal(
    codigoanimal INT(6) primary key,
    nomeanimal VARCHAR(50) NOT NULL,
    datanascimento DATE NOT NULL,
    raca CHAR(30) NOT NULL
 ); 

 /* •	Realize a alteração do atributo da tabela cliente de nomecliente para nomecompleto (Capture a tela do XAMPP) */

 ALTER TABLE cadastrocliente
    CHANGE COLUMN nomecliente nomecompleto VARCHAR(200) NOT NULL;

/* •	Realize a alteração do datatype motivo de (200) caracteres para (500) caracteres (Captura a tela do XAMPP) */
ALTER TABLE consulta 
    MODIFY COLUMN motivo VARCHAR(500) NOT NULL;

/* •	delete o atributo nomeanimal da tabela animal, */
ALTER TABLE animal 
DROP COLUMN nomeanimal;

/*depois adicionei novamente o atributo com o nome: nomeanimalzinho*/
ALTER TABLE animal 
ADD animalzinho VARCHAR(50) NOT NULL;

/*•	realize uma pesquisa na documentação de como insere dados em uma tabela existente, insira os dados 
"Ana Claudia Cunha" para nome da cliente, telefone 11999998888, e cpf 1144444411 na tabela do cliente. (Capture a tela do XAMPP)*/

INSERT INTO cadastrocliente
VALUES (1144444411, "Ana Claudia Cunha", "11999998888");

/* •	Por fim, realize a exclusão dos dados da tabela cliente */

DELETE FROM cadastrocliente WHERE cpf = 1144444411;

/* •	Realize a exclusão de cada uma das tabelas */

DROP TABLE cadastrocliente, veterinario, consulta, animal;

/* •	Realize a exclusão do banco de dados (Capture a tela do XAMPP) */

DROP DATABASE petshop;