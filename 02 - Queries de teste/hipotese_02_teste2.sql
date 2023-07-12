SELECT * FROM
(SELECT COUNT(*) as centralizadas FROM ubsdb where BAIRRO = "CENTRO") centralizadas
JOIN
(SELECT COUNT(*) as descentralizadas from ubsdb WHERE BAIRRO != "CENTRO") descentralizadas