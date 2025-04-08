
CREATE TABLE usuarios (
  IDUsuario INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(100) NOT NULL,
  Cadastro DATE NOT NULL,
  CPF VARCHAR(14) UNIQUE NOT NULL,
  Contato VARCHAR(100) NOT NULL
);

CREATE TABLE livros (
  IDLivro INT PRIMARY KEY AUTO_INCREMENT,
  NomeLivro VARCHAR(225) NOT NULL,
  Quantidade INT NOT NULL,
  Disponibilidade BOOLEAN NOT NULL,
  Genero VARCHAR(100),
  Autor VARCHAR(100),
  Categoria VARCHAR(100)
);

CREATE TABLE funcionarios (
  IDFuncionario INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(100) NOT NULL,
  Cargo VARCHAR(100),
  Contato VARCHAR(100)
);

CREATE TABLE emprestimos (
  IDEmprestimo INT PRIMARY KEY AUTO_INCREMENT,
  IDUsuario INT,
  IDLivro INT,
  DataEmprestimo DATE NOT NULL,
  DataDevolucaoPrevista DATE NOT NULL,
  DataDevolucaoReal DATE,
  FOREIGN KEY (IDUsuario) REFERENCES usuarios(IDUsuario) ON DELETE CASCADE,
  FOREIGN KEY (IDLivro) REFERENCES livros(IDLivro) ON DELETE CASCADE
);

CREATE TABLE multas (
  IDMulta INT PRIMARY KEY AUTO_INCREMENT,
  IDUsuario INT,
  Valor DECIMAL(10,2) NOT NULL,
  DataEmissao DATE NOT NULL,
  FOREIGN KEY (IDUsuario) REFERENCES usuarios(IDUsuario) ON DELETE CASCADE
);

CREATE TABLE reservas (
  IDReserva INT PRIMARY KEY AUTO_INCREMENT,
  IDUsuario INT NOT NULL,
  IDLivro INT NOT NULL,
  DataReserva DATE NOT NULL,
  ValidaAte DATETIME NOT NULL,
  FOREIGN KEY (IDUsuario) REFERENCES usuarios(IDUsuario) ON DELETE CASCADE,
  FOREIGN KEY (IDLivro) REFERENCES livros(IDLivro) ON DELETE CASCADE
);

CREATE TABLE historico_emprestimos (
  IDHistorico INT PRIMARY KEY AUTO_INCREMENT,
  IDUsuario INT NOT NULL,
  IDLivro INT NOT NULL,
  DataEmprestimo DATE NOT NULL,
  DataDevolucao DATE,
  FOREIGN KEY (IDUsuario) REFERENCES usuarios(IDUsuario) ON DELETE CASCADE,
  FOREIGN KEY (IDLivro) REFERENCES livros(IDLivro) ON DELETE CASCADE
);

INSERT INTO usuarios (Nome, Cadastro, CPF, Contato) VALUES
('Usuário 1', '2024-01-01', '000.000.000-01', 'usuario1@email.com');
INSERT INTO usuarios (Nome, Cadastro, CPF, Contato) VALUES
('Usuário 2', '2024-01-02', '000.000.000-02', 'usuario2@email.com');
INSERT INTO usuarios (Nome, Cadastro, CPF, Contato) VALUES
('Usuário 3', '2024-01-03', '000.000.000-03', 'usuario3@email.com');
INSERT INTO usuarios (Nome, Cadastro, CPF, Contato) VALUES
('Usuário 4', '2024-01-04', '000.000.000-04', 'usuario4@email.com');
INSERT INTO usuarios (Nome, Cadastro, CPF, Contato) VALUES
('Usuário 5', '2024-01-05', '000.000.000-05', 'usuario5@email.com');
INSERT INTO usuarios (Nome, Cadastro, CPF, Contato) VALUES
('Usuário 6', '2024-01-06', '000.000.000-06', 'usuario6@email.com');
INSERT INTO usuarios (Nome, Cadastro, CPF, Contato) VALUES
('Usuário 7', '2024-01-07', '000.000.000-07', 'usuario7@email.com');
INSERT INTO usuarios (Nome, Cadastro, CPF, Contato) VALUES
('Usuário 8', '2024-01-08', '000.000.000-08', 'usuario8@email.com');
INSERT INTO usuarios (Nome, Cadastro, CPF, Contato) VALUES
('Usuário 9', '2024-01-09', '000.000.000-09', 'usuario9@email.com');
INSERT INTO usuarios (Nome, Cadastro, CPF, Contato) VALUES
('Usuário 10', '2024-01-10', '000.000.000-010', 'usuario10@email.com');
INSERT INTO livros (NomeLivro, Quantidade, Disponibilidade, Genero, Autor, Categoria) VALUES
('Livro 1', 2, 0, 'Gênero 1', 'Autor 1', 'Categoria 1');
INSERT INTO livros (NomeLivro, Quantidade, Disponibilidade, Genero, Autor, Categoria) VALUES
('Livro 2', 3, 1, 'Gênero 2', 'Autor 2', 'Categoria 2');
INSERT INTO livros (NomeLivro, Quantidade, Disponibilidade, Genero, Autor, Categoria) VALUES
('Livro 3', 4, 0, 'Gênero 3', 'Autor 3', 'Categoria 3');
INSERT INTO livros (NomeLivro, Quantidade, Disponibilidade, Genero, Autor, Categoria) VALUES
('Livro 4', 5, 1, 'Gênero 4', 'Autor 4', 'Categoria 4');
INSERT INTO livros (NomeLivro, Quantidade, Disponibilidade, Genero, Autor, Categoria) VALUES
('Livro 5', 6, 0, 'Gênero 5', 'Autor 5', 'Categoria 5');
INSERT INTO livros (NomeLivro, Quantidade, Disponibilidade, Genero, Autor, Categoria) VALUES
('Livro 6', 7, 1, 'Gênero 6', 'Autor 6', 'Categoria 6');
INSERT INTO livros (NomeLivro, Quantidade, Disponibilidade, Genero, Autor, Categoria) VALUES
('Livro 7', 8, 0, 'Gênero 7', 'Autor 7', 'Categoria 7');
INSERT INTO livros (NomeLivro, Quantidade, Disponibilidade, Genero, Autor, Categoria) VALUES
('Livro 8', 9, 1, 'Gênero 8', 'Autor 8', 'Categoria 8');
INSERT INTO livros (NomeLivro, Quantidade, Disponibilidade, Genero, Autor, Categoria) VALUES
('Livro 9', 10, 0, 'Gênero 9', 'Autor 9', 'Categoria 9');
INSERT INTO livros (NomeLivro, Quantidade, Disponibilidade, Genero, Autor, Categoria) VALUES
('Livro 10', 11, 1, 'Gênero 10', 'Autor 10', 'Categoria 10');
INSERT INTO funcionarios (Nome, Cargo, Contato) VALUES
('Funcionário 1', 'Cargo 1', 'func1@empresa.com');
INSERT INTO funcionarios (Nome, Cargo, Contato) VALUES
('Funcionário 2', 'Cargo 2', 'func2@empresa.com');
INSERT INTO funcionarios (Nome, Cargo, Contato) VALUES
('Funcionário 3', 'Cargo 3', 'func3@empresa.com');
INSERT INTO funcionarios (Nome, Cargo, Contato) VALUES
('Funcionário 4', 'Cargo 4', 'func4@empresa.com');
INSERT INTO funcionarios (Nome, Cargo, Contato) VALUES
('Funcionário 5', 'Cargo 5', 'func5@empresa.com');
INSERT INTO emprestimos (IDUsuario, IDLivro, DataEmprestimo, DataDevolucaoPrevista, DataDevolucaoReal) VALUES
(1, 1, '2024-03-11', '2024-04-11', NULL);
INSERT INTO emprestimos (IDUsuario, IDLivro, DataEmprestimo, DataDevolucaoPrevista, DataDevolucaoReal) VALUES
(2, 2, '2024-03-12', '2024-04-12', NULL);
INSERT INTO emprestimos (IDUsuario, IDLivro, DataEmprestimo, DataDevolucaoPrevista, DataDevolucaoReal) VALUES
(3, 3, '2024-03-13', '2024-04-13', NULL);
INSERT INTO emprestimos (IDUsuario, IDLivro, DataEmprestimo, DataDevolucaoPrevista, DataDevolucaoReal) VALUES
(4, 4, '2024-03-14', '2024-04-14', NULL);
INSERT INTO emprestimos (IDUsuario, IDLivro, DataEmprestimo, DataDevolucaoPrevista, DataDevolucaoReal) VALUES
(5, 5, '2024-03-15', '2024-04-15', NULL);
INSERT INTO multas (IDUsuario, Valor, DataEmissao) VALUES
(1, 5.0, '2024-04-16');
INSERT INTO multas (IDUsuario, Valor, DataEmissao) VALUES
(2, 10.0, '2024-04-17');
INSERT INTO multas (IDUsuario, Valor, DataEmissao) VALUES
(3, 15.0, '2024-04-18');
INSERT INTO reservas (IDUsuario, IDLivro, DataReserva, ValidaAte) VALUES
(1, 2, '2024-04-11', '2024-04-16 23:59:59');
INSERT INTO reservas (IDUsuario, IDLivro, DataReserva, ValidaAte) VALUES
(2, 3, '2024-04-12', '2024-04-17 23:59:59');
INSERT INTO reservas (IDUsuario, IDLivro, DataReserva, ValidaAte) VALUES
(3, 4, '2024-04-13', '2024-04-18 23:59:59');
INSERT INTO historico_emprestimos (IDUsuario, IDLivro, DataEmprestimo, DataDevolucao) VALUES
(1, 1, '2023-12-11', '2024-01-11');
INSERT INTO historico_emprestimos (IDUsuario, IDLivro, DataEmprestimo, DataDevolucao) VALUES
(2, 2, '2023-12-12', '2024-01-12');
INSERT INTO historico_emprestimos (IDUsuario, IDLivro, DataEmprestimo, DataDevolucao) VALUES
(3, 3, '2023-12-13', '2024-01-13');
INSERT INTO historico_emprestimos (IDUsuario, IDLivro, DataEmprestimo, DataDevolucao) VALUES
(4, 4, '2023-12-14', '2024-01-14');
INSERT INTO historico_emprestimos (IDUsuario, IDLivro, DataEmprestimo, DataDevolucao) VALUES
(5, 5, '2023-12-15', '2024-01-15');
