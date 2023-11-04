-- CREATE DATABASE biblioteca2 
-- USE biblioteca2

CREATE TABLE IF NOT EXISTS Livros (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    editora VARCHAR(255),
    ano_publicacao INT,
    isbn VARCHAR(50)
);

INSERT INTO Livros (titulo, autor, editora, ano_publicacao, isbn) VALUES 
('A Culpa é das Estrelas', 'John Green', 'Intrínseca', 2012, '978-85-8057-346-6'),
( 'Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, '9788532511010'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Martins Fontes', 1954, '9788533603149'),
( 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 1951, '9780316769488'),
( '1984', 'George Orwell', 'Companhia Editora Nacional', 1949, '978-85-221-0616-9'),
( 'Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 2005, '9788598078355'); 

-- ALTER TABLE livros DROP column autor; -- dropei duas colunas da table livros autor e editora


CREATE TABLE autor(
autor__id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255)
);
INSERT INTO autor (nome) VALUES
('John Green'),
('J.K. Rowling'),
( 'J.D. Salinger'),
('J.R.R. Tolkien'),
('George Orwell'),
('Rick Riordan');
--  tabela criada para relacionar com a tabela livro e fazer a chave estrangeira 

ALTER TABLE livros
ADD FOREIGN KEY (autor_id)
REFERENCES autor (autor__id)
-- adicinando a chave estrageira a coluna autor_id para fazer relação 

CREATE TABLE editora (
editora_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255)
);
INSERT INTO editora( nome ) VALUES 
( 'Intrínseca'),
( 'Rocco'),
( 'Martins Fontes'),
( 'Little, Brown and Company'),
( 'Companhia Editora Nacional'),
( 'Intrínseca'); 

INSERT INTO Livros (titulo, autor_id, editora_id, ano_publicacao, isbn) VALUES 
('A Culpa é das Estrelas', 1, 1, 2012, '978-85-8057-346-6'),
( 'Harry Potter e a Pedra Filosofal', 2, 2, 1997, '9788532511010'),
('O Senhor dos Anéis: A Sociedade do Anel', 3,3, 1954, '9788533603149'),
( 'The Catcher in the Rye', 4, 4, 1951, '9780316769488'),
( '1984', 5, 5, 1949, '978-85-221-0616-9'),
( 'Percy Jackson e o Ladrão de Raios', 6, 6, 2005, '9788598078355');

ALTER TABLE livros
ADD FOREIGN KEY (editora_id)
REFERENCES editora (editora_id);
-- adicinando a chave estrageira a coluna autor_id para fazer relação 

-- atualizando as tabelas
INSERT INTO Livros ( titulo ,autor_id, editora_id, ano_publicacao, isbn )
VALUES
('Grande Sertão: Veredas', 7, 7, 1956, '978-85-209-2325-1'),
('Memórias Póstumas de Brás Cubas',8, 8, 1881, '9788535910663' ),
('Vidas Secas', 9, 9, 1938, '9788572326972' ),
('O Alienista', 10, 10, 1882, '9788572327429' ),
('O Cortiço', 11, 11, 1890, '9788579027048' ),
('Dom Casmurro', 12, 12, 1899, '9788583862093'),
('Macunaíma', 13, 13, 1928, '9788503012302' );

INSERT INTO autor( nome )values
('João Guimarães Rosa'),
( 'Machado de Assis'),
( 'Graciliano Ramos'),
( 'Machado de Assis'),
( 'Aluísio Azevedo'),
( 'Machado de Assis'),
( 'Mário de Andrade');

INSERT INTO editora(nome) values
('Nova Fronteira'),
('Companhia das Letras'),
('Companhia Editora Nacional'),
( 'Martin Claret'),
('Penguin Companhia'),
('Penguin Companhia'),
( 'Companhia Editora Nacional');









