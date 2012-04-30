select count(DEP_FLIGHT_NO), DEP_DEP_DATE
from DEPARTURES
group by DEP_DEP_DATE
order by DEP_DEP_DATE asc
;
