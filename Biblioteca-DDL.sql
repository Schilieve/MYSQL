CREATE DATABASE bd_BibliotecaDB;
USE bd_BibliotecaDB;
CREATE TABLE tb_Autores(
id_autor INT(10) NOT NULL,
nome VARCHAR(240),
data_nascimento date,
PRIMARY KEY (id_autor)
);
 CREATE TABLE tb_Livros(
 id_livro INT(10) NOT NULL,
 id_autor INT(10) NOT NULL,
titulo VARCHAR (255) NOT NULL,
ano_publicacao INT (10) NOT NULL,
FOREIGN KEY (id_autor) REFERENCES tb_Autores(id_autor),
PRIMARY KEY (id_livro)

 
 );
 
 CREATE TABLE tb_Membros(
 id_membro INT (10) NOT NULL,
 nome VARCHAR (255) NOT NULL,
 data_adesao date NOT NULL,
 PRIMARY KEY(id_membro)
 );
 
 CREATE TABLE tb_Emprestimos(
id_emprestimo INT (10) NOT NULL,
id_membro INT (10) NOT NULL,
id_livro INT(10) NOT NULL,
data_emprestimo DATE NOT NULL,
 data_devolucao DATE NOT NULL,
 FOREIGN KEY(id_membro) REFERENCES tb_Membros(id_membro),
 FOREIGN KEY(id_livro) REFERENCES  tb_Livros(id_livro),
 PRIMARY KEY(id_emprestimo)


);

