-- Inserção de dados nas tabelas para o projeto da disciplina de Banco de Dados

-- Inserir dados da Construtora Alfa
INSERT INTO Construtoras (codigo, nome, nome_fantasia)
VALUES (10, 'Construtora Alfa S.A.', 'Alfa Incorporações');

-- Inserir telefones da Construtora Alfa
INSERT INTO Telefone (telefone, FK_Cod_Construtora) VALUES (5133333334, 10);
INSERT INTO Telefone (telefone, FK_Cod_Construtora) VALUES (5133333335, 10);
INSERT INTO Telefone (telefone, FK_Cod_Construtora) VALUES (5133333336, 10);

-- Inserir dados das obras da Construtora Alfa com endereço
INSERT INTO Obras (codigo, nome, FK_Cod_Construtora, end_logradouro, end_numero, end_complemento) 
VALUES ('115', 'Condomínio dos Lagos', 10, 'Travessa dos Lagos', '100', 'Norte');
INSERT INTO Obras (codigo, nome, FK_Cod_Construtora, end_logradouro, end_numero, end_complemento) 
VALUES ('116', 'Condomínio Araras', 10, 'Rua das Araras', '200', 'Centro');

-- Inserir trabalhadores da Construtora Alfa
INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) VALUES ('10110110134', 'José Chaves', 2200.00, '115');
INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) VALUES ('10210210291', 'Pedro Passos', 3502.18, '115');
INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) VALUES ('10310310318', 'Maria Aparecida', 2800.87, '115');
INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) VALUES ('10410410452', 'Carlos Dutra', 3100.00, '116');
INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) VALUES ('10510510585', 'Mário Pires', 4323.29, '116');

-- Inserir equipamentos utilizados nas obras da Construtora Alfa
INSERT INTO Equipamentos (codigo, nome, valor_de_uso_diario, FK_Cod_Categoria) VALUES ('301', 'Betoneira', 100.00, 'C2');
INSERT INTO Equipamentos (codigo, nome, valor_de_uso_diario, FK_Cod_Categoria) VALUES ('302', 'Cortadora de Piso', 10.00, 'C2');
INSERT INTO Equipamentos (codigo, nome, valor_de_uso_diario, FK_Cod_Categoria) VALUES ('305', 'Gerador', 451.00, 'C4');
INSERT INTO Equipamentos (codigo, nome, valor_de_uso_diario, FK_Cod_Categoria) VALUES ('308', 'Parafusadeira', 37.00, 'C3');

-- Inserir dados de estoque para obras e equipamentos
INSERT INTO Estoques (cod_obras, cod_equipamentos, data_de_inicio, data_final)  
VALUES ('115', '301', TO_DATE('18/03/2022', 'DD/MM/YYYY'), TO_DATE('24/10/2022', 'DD/MM/YYYY'));
INSERT INTO Estoques (cod_obras, cod_equipamentos, data_de_inicio, data_final)  
VALUES ('115', '304', TO_DATE('20/04/2022', 'DD/MM/YYYY'), TO_DATE('02/08/2022', 'DD/MM/YYYY'));

-- Inserir dados da Construtora Larissa
INSERT INTO Construtoras (codigo, nome, nome_fantasia) 
VALUES (20, 'Construtora Larissa', 'Larissa Engenharia');

-- Inserir telefones da Construtora Larissa
INSERT INTO Telefone (telefone, FK_Cod_Construtora) VALUES (5199999999, 20);
INSERT INTO Telefone (telefone, FK_Cod_Construtora) VALUES (5198888888, 20);

-- Inserir dados das obras da Construtora Larissa com endereço
INSERT INTO Obras (codigo, nome, FK_Cod_Construtora, end_logradouro, end_numero, end_complemento) 
VALUES ('201', 'Centro Comercial', 20, 'Avenida Central', '150', 'Comercial');
INSERT INTO Obras (codigo, nome, FK_Cod_Construtora, end_logradouro, end_numero, end_complemento) 
VALUES ('202', 'Residencial Vista', 20, 'Rua do Horizonte', '300', 'Norte');

-- Inserir trabalhadores para as obras da Construtora Larissa
INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) 
VALUES ('20120120101', 'Lucas Souza', 3000.00, '201');
INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) 
VALUES ('20220220202', 'Ana Pereira', 3200.00, '201');
INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) 
VALUES ('20320320303', 'João Silva', 2800.00, '201');
INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) 
VALUES ('20420420404', 'Carla Lima', 3100.00, '201');
INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) 
VALUES ('20520520505', 'Bruno Almeida', 3300.00, '201');

INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) 
VALUES ('20620620606', 'Fernanda Dias', 3400.00, '202');
INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) 
VALUES ('20720720707', 'Ricardo Santos', 3100.00, '202');
INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) 
VALUES ('20820820808', 'Roberta Nunes', 2900.00, '202');
INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) 
VALUES ('20920920909', 'Paulo Araujo', 3200.00, '202');
INSERT INTO Trabalhadores (cpf, nome, salario, FK_Cod_Obra) 
VALUES ('21021021010', 'Mariana Costa', 3500.00, '202');

-- Inserir 4 equipamentos alocados para a primeira obra da Construtora Larissa
INSERT INTO Estoques (cod_obras, cod_equipamentos, data_de_inicio, data_final) 
VALUES ('201', '301', TO_DATE('01/09/2023', 'DD/MM/YYYY'), TO_DATE('15/09/2023', 'DD/MM/YYYY'));
INSERT INTO Estoques (cod_obras, cod_equipamentos, data_de_inicio, data_final) 
VALUES ('201', '302', TO_DATE('01/09/2023', 'DD/MM/YYYY'), TO_DATE('15/09/2023', 'DD/MM/YYYY'));
INSERT INTO Estoques (cod_obras, cod_equipamentos, data_de_inicio, data_final) 
VALUES ('201', '305', TO_DATE('05/09/2023', 'DD/MM/YYYY'), TO_DATE('20/09/2023', 'DD/MM/YYYY'));
INSERT INTO Estoques (cod_obras, cod_equipamentos, data_de_inicio, data_final) 
VALUES ('201', '308', TO_DATE('10/09/2023', 'DD/MM/YYYY'), TO_DATE('25/09/2023', 'DD/MM/YYYY'));
