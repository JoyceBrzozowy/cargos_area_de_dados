-- Criando a tabela cargos

CREATE TABLE cargos (
    id_cargo INT PRIMARY KEY,
    nome_cargo VARCHAR(50),
    departamento VARCHAR(50),
    salario DECIMAL(10, 2)
);

INSERT INTO cargos (id_cargo, nome_cargo, departamento, salario)
VALUES
    (1, 'Cientista de Dados', 'Data Science', 10000),
    (2, 'Engenheiro de Dados', 'Data Engineering', 9000),
    (3, 'Analista de Dados', 'Business Intelligence', 7000),
    (4, 'Arquiteto de Dados', 'Data Architecture', 11000),
    (5, 'Especialista em BI', 'Business Intelligence', 8000);


-- Realizando consultas básicas.

-- Seleciona os dados na tabela:

SELECT * FROM cargos;

-- Seleciona o nome e o salário de todos os cargos:

SELECT nome_cargo, salario FROM cargos;


-- Seleciona os cargos que pertencem ao departamento de Data Science:

SELECT * FROM cargos WHERE departamento = 'Data Science';


-- Procedure:

CREATE PROCEDURE select_cargos
AS
BEGIN
    SELECT * FROM cargos;
END

-- Função que executa a procedure:

EXEC select_cargos;


-- Join:
-- Combina colunas de duas ou mais tabelas em uma única tabela, com base em uma coluna comum entre elas

-- Inner join: Seleciona o nome do funcionário, o nome do cargo e o salário:

SELECT funcionarios.nome_funcionario, cargos.nome_cargo, cargos.salario
FROM funcionarios
INNER JOIN cargos
ON funcionarios.id_cargo = cargos.id_cargo;


-- Full join: Seleciona todos os dados de funcionários e cargos, incluindo funcionários que não têm cargo:

SELECT *
FROM funcionarios
FULL JOIN


