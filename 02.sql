column "Originating City" format a18
column "Date of Departure" format a18
select DEP_FLIGHT_NO "Flight #", AIR_LOCATION "Originating City", to_char(DEP_DEP_DATE, 'YYYY-MM-DD') "Date of Departure"
from DEPARTURES, FLIGHT, AIRPORT
where DEP_FLIGHT_NO = FL_FLIGHT_NO
and FL_ORIG = AIR_CODE
and AIR_CODE like 'LAX'
order by DEP_FLIGHT_NO asc, DEP_DEP_DATE asc
;
