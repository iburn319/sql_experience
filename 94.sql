select unique DEP_FLIGHT_NO "Flight #"
from DEPARTURES
where to_char(DEP_DEP_DATE, 'YYYY-MM-DD') not like '2012-05%'
;
