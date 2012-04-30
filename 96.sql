select count(DEP_FLIGHT_NO) "# of Departures", AIR_HUB_AIRLINE "Airline"
from DEPARTURES, AIRPORT, FLIGHT
where DEP_FLIGHT_NO = FL_FLIGHT_NO
and FL_ORIG = AIR_CODE
and AIR_HUB_AIRLINE like '%'
group by AIR_HUB_AIRLINE
;
