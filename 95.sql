select count(FL_FLIGHT_NO) "# of Flights", AIR_LOCATION "Departing City"
from FLIGHT, AIRPORT, DEPARTURES
where FL_ORIG = AIR_CODE
and DEP_FLIGHT_NO = FL_FLIGHT_NO
and (FL_MEAL like 'L' or FL_MEAL like 'D')
and to_char(DEP_DEP_DATE, 'YYYY-MM-DD') like '2012-05%'
group by AIR_LOCATION
;
