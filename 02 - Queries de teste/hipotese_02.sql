select "UBSs CENTRALIZADAS" AS regiao,
COUNT(*) as total_ubs
from ubsdb
where BAIRRO = "centro"

union

select "UBSs DESCENTRALIZADAS" AS regiao,
COUNT(*) as total_ubs
from ubsdb
where BAIRRO != "centro"

