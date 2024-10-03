# Projeto de Banco de Dados - Construtoras

## Descrição

Este projeto foi desenvolvido para a disciplina de Banco de Dados do curso de **Análise e Desenvolvimento de Sistemas** da **Universidade PUCRS**. O objetivo é modelar e implementar um sistema de gerenciamento de **Construtoras**, armazenando informações sobre construtoras, obras, trabalhadores, equipamentos, e outros dados relacionados.

## Estrutura do Projeto

O projeto está organizado nas seguintes pastas:

- **`database_model/`**: Contém os arquivos de modelagem do banco de dados, incluindo o modelo conceitual e o modelo lógico.
  - **Modelo Conceitual**: Diagrama que representa os conceitos principais do sistema de forma abstrata.
  - **Modelo Lógico**: Diagrama com detalhes técnicos sobre as tabelas e seus relacionamentos no banco de dados.

- **`database_scripts/`**: Contém os scripts SQL e dados utilizados no projeto.
  - **`consultas.sql`**: Script com as principais consultas realizadas no banco de dados.
  - **`dados construtora.json`**: Arquivo JSON com dados da construtora Alfa e suas obras, trabalhadores, e outros detalhes.
  - **`inserção de dados.sql`**: Script SQL com os comandos de inserção de dados nas tabelas.
  - **`script-criação.sql`**: Script SQL para a criação das tabelas do banco de dados.

## Como Utilizar

1. **Criação das Tabelas**:
   - Para criar as tabelas no banco de dados, execute o script `script-criação.sql` utilizando o **Live SQL Oracle**, que foi o SGBD utilizado no desenvolvimento deste projeto.

2. **Inserção de Dados**:
   - Após a criação das tabelas, você pode popular o banco de dados utilizando o script `inserção de dados.sql`. Este script irá inserir os dados das construtoras, obras, trabalhadores e equipamentos.

3. **Consultas SQL**:
   - O arquivo `consultas.sql` contém exemplos de consultas SQL que podem ser usadas para extrair informações do banco de dados, como obras de uma construtora específica ou trabalhadores de uma obra.

## Requisitos

- Um SGBD compatível com SQL, como:
  - **Live SQL Oracle** (utilizado neste projeto)
  - MySQL
  - PostgreSQL
- Ferramenta de execução de scripts SQL (como o **MySQL Workbench**, **pgAdmin**, ou **Oracle SQL Developer**).

## Contribuidores

Este projeto foi desenvolvido por Larissa de Albuquerque, estudante de Análise e Desenvolvimento de Sistemas em 09/2024.
