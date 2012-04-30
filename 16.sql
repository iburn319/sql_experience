column PIL_PILOTNAME format a20
select PIL_PILOTNAME, PIL_FLIGHT_PAY
from PILOTS
where PIL_FLIGHT_PAY > 
	(select avg(PIL_FLIGHT_PAY) from PILOTS)
;
