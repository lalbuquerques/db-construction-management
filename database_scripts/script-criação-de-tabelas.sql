-- Criação das tabelas para o projeto da disciplina de Banco de Dados

CREATE TABLE Construtoras ( 
    codigo NUMERIC(4) PRIMARY KEY, 
    nome VARCHAR(60), 
    nome_fantasia VARCHAR(60)
);

CREATE TABLE Telefone ( 
    telefone NUMERIC(11),
    FK_Cod_Construtora NUMERIC(4),
    CONSTRAINT FK_Telefone_Construtora FOREIGN KEY (FK_Cod_Construtora) REFERENCES Construtoras(codigo)
);

CREATE TABLE Obras ( 
    codigo VARCHAR(4) PRIMARY KEY, 
    nome VARCHAR(60),
    FK_Cod_Construtora NUMERIC(4),
    end_logradouro VARCHAR(20), 
    end_numero VARCHAR(10), 
    end_complemento VARCHAR(15),
    CONSTRAINT FK_Obra_Construtora FOREIGN KEY (FK_Cod_Construtora) REFERENCES Construtoras(codigo)
);

CREATE TABLE Trabalhadores ( 
    cpf VARCHAR(11) PRIMARY KEY, 
    nome VARCHAR(60), 
    salario NUMERIC(10), 
    FK_Cod_Obra VARCHAR(4), 
    CONSTRAINT FK_Trabalhadores_Obra FOREIGN KEY (FK_Cod_Obra) REFERENCES Obras (codigo) 
);

CREATE TABLE Equipamentos ( 
    codigo VARCHAR(4) PRIMARY KEY, 
    nome VARCHAR(60), 
    valor_de_uso_diario NUMERIC(11),
    FK_Cod_Categoria VARCHAR(4),
    CONSTRAINT FK_Equipamento_Categoria FOREIGN KEY (FK_Cod_Categoria) REFERENCES Categoria(codigo)
);

CREATE TABLE Estoques ( 
    cod_obras VARCHAR(4), 
    cod_equipamentos VARCHAR(4), 
    data_de_inicio DATE, 
    data_final DATE, 
    PRIMARY KEY (cod_obras, cod_equipamentos), 
    CONSTRAINT FK_Estoque_Obra FOREIGN KEY (cod_obras) REFERENCES Obras(codigo),
    CONSTRAINT FK_Estoque_Equipamento FOREIGN KEY (cod_equipamentos) REFERENCES Equipamentos(codigo)
);

CREATE TABLE Categoria (
    codigo VARCHAR(4) PRIMARY KEY,
    nome VARCHAR(60)
);
