SELECT uf.unidade_da_federacao estado, uf.codigo_uf codigo, COUNT(*) AS soma_ubs
FROM ubs.uf JOIN ubs.ubsdb
ON uf.codigo_uf = ubsdb.UF
WHERE (ubsdb.UF BETWEEN 21 AND 29) OR (ubsdb.UF = 35)
GROUP BY codigo_uf;

