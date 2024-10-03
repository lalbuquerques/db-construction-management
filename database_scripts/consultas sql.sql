--Selecionar CPFs e nomes dos trabalhadores que ganham mais do que 2.500,00:
SELECT cpf, nome
FROM Trabalhadores
WHERE salario > 2500.00;

-- Selecionar o total gasto em valores de diárias em uso de equipamentos da obra "Condomínio Lagos" no mês de março de 2022:
SELECT SUM((e.data_final - e.data_de_inicio) * eq.valor_de_uso_diario) AS total_gasto
FROM Estoques e
JOIN Equipamentos eq ON e.cod_equipamentos = eq.codigo
JOIN Obras o ON e.cod_obras = o.codigo
WHERE o.nome = 'Condomínio dos Lagos'
AND TO_CHAR(e.data_de_inicio, 'MM-YYYY') = '03-2022';

-- Calcular e exibir a folha de pagamento de cada obra:
SELECT o.nome AS nome_obra, SUM(t.salario) AS folha_de_pagamento
FROM Trabalhadores t
JOIN Obras o ON t.FK_Cod_Obra = o.codigo
GROUP BY o.nome;

-- Equipamentos nunca utilizados:
SELECT e.codigo, e.nome
FROM Equipamentos e
LEFT JOIN Estoques es ON e.codigo = es.cod_equipamentos
WHERE es.cod_equipamentos IS NULL;

