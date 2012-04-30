select count(TIC_SEAT) "# of Tickets", FL_FLIGHT_NO "Flight #"
from TICKET, FLIGHT, AIRPORT
where TIC_FLIGHT_NO = FL_FLIGHT_NO
and FL_DEST = AIR_CODE
and AIR_LOCATION like '%CA'
group by FL_FLIGHT_NO
;
