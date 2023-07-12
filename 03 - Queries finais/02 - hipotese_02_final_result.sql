SELECT uf.unidade_da_federacao AS estado, ubsdb.UF AS codigo_estado,
SUM(CASE WHEN BAIRRO = 'CENTRO' THEN 1 ELSE 0 END) AS "ubs_centralizadas",
SUM(CASE WHEN BAIRRO != 'CENTRO' THEN 1 ELSE 0 END) AS "ubs_descentralizadas"
FROM ubsdb
JOIN uf ON uf.codigo_uf = ubsdb.UF
GROUP BY ubsdb.UF
ORDER BY ubsdb.UF;