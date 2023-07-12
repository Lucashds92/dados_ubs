select uf.unidade_da_federacao, ubsdb.UF,
count(*) as "ubs centralizadas",
count(*) as descentralisadas from ubsdb
join uf
ON uf.codigo_uf = ubsdb.UF
where ubsdb.BAIRRO = "CENTRO"
GROUP BY UF
ORDER BY UF