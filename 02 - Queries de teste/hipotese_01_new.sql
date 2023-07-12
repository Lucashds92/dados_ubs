SELECT "São Paulo" AS estado_regiao, COUNT(*) total_ubs FROM ubs.ubsdb_new WHERE UF = 35
UNION
SELECT "Nordeste" AS estado_regiao, COUNT(*) AS total_ubs FROM ubs.ubsdb_new WHERE UF BETWEEN 21 AND 29