CREATE VIEW pesquisa_ubs_01 AS
SELECT uf.codigo_uf, uf.unidade_da_federacao,
COUNT(*) AS soma_ubs
FROM ubs.uf JOIN ubs.ubsdb
ON uf.codigo_uf = ubsdb.UF
GROUP BY codigo_uf