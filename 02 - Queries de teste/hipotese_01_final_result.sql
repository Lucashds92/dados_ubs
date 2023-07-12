SELECT "NORDESTE" AS regiao, SUM(soma_ubs) AS total_ubs
FROM pesquisa_ubs_01
WHERE codigo_uf BETWEEN 21 AND 29

UNION

SELECT "SÃO PAULO" AS regiao, SUM(soma_ubs) AS total_ubs
FROM pesquisa_ubs_01
WHERE codigo_uf = 35