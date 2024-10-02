USE bd_BibliotecaDB;
SELECT * FROM tb_Livros;
SET @@autocommit = ON;
-- A
SELECT MAX(ano_publicacao) from tb_Livros;
-- B
SELECT MIN(ano_publicacao) from tb_Livros;
-- C
SELECT COUNT(id_livro) FROM tb_Livros;

-- D 
SELECT * FROM tb_Emprestimos;

-- E 
SELECT *FROM tb_Autores ORDER BY  nome ASC;

-- F
SELECT*FROM tb_Livros ORDER BY titulo DESC;

-- 5

-- A 
SELECT* FROM tb_Livros;

SELECT AVG(ano_publicacao) from tb_Livros;

SELECT id_autor, titulo FROM 	tb_Livros WHERE ano_publicacao > 1917.3333;

SELECT id_autor,nome FROM tb_Autores;

-- RESULTADO 

SELECT  nome FROM tb_Autores
 WHERE id_autor IN (SELECT id_autor FROM tb_Livros 
                   WHERE ano_publicacao > (SELECT AVG(ano_publicacao) from tb_Livros));
                   
-- B 
SELECT * FROM tb_Emprestimos;


SELECT nome FROM tb_Membros WHERE id_membro IN (SELECT id_membro FROM tb_Emprestimos GROUP BY id_membro  HAVING COUNT(id_membro) >1);


-- C Liste os livros que foram emprestados ao menos uma vez.
SELECT titulo FROM tb_Livros WHERE id_livro IN (SELECT id_livro FROM tb_Emprestimos GROUP BY id_livro  HAVING COUNT(id_livro) );

-- D
SELECT titulo FROM tb_Livros WHERE id_livro  NOT IN (SELECT id_livro FROM tb_Emprestimos  id_livro );












