select substr(AIR_LOCATION,-2,2) "State", count(AIR_LOCATION) "# of Airports"
from AIRPORT
group by substr(AIR_LOCATION,-2,2)
;
