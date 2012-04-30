select PIL_PILOTNAME "Pilot", nvl(sum(FL_DISTANCE),0) "Total Distance"
from PILOTS, DEPARTURES, FLIGHT
where PIL_PILOT_ID = DEP_PILOT_ID(+)
and DEP_FLIGHT_NO = FL_FLIGHT_NO(+)
group by PIL_PILOTNAME
order by "Total Distance" desc
;
