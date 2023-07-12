SELECT "Nordeste" AS regiao, SUM(soma_ubs) AS total_ubs
FROM (
SELECT uf.codigo_uf, COUNT(*) AS soma_ubs
FROM ubs.uf JOIN ubs.ubsdb
ON uf.codigo_uf = ubsdb.UF
WHERE (ubsdb.UF BETWEEN 21 AND 29)
GROUP BY codigo_uf
) AS script1

UNION

SELECT "São Paulo" AS regiao, SUM(soma_ubs) AS total_ubs
FROM (
SELECT uf.codigo_uf, COUNT(*) AS soma_ubs
FROM ubs.uf JOIN ubs.ubsdb
ON uf.codigo_uf = ubsdb.UF
WHERE (ubsdb.UF = 35)
GROUP BY codigo_uf
) AS script2