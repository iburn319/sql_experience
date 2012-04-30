column PIL_PILOTNAME format a20

select PIL_PILOTNAME, PIL_STATE, PIL_FLIGHT_PAY
from PILOTS
where PIL_FLIGHT_PAY > any
(select avg(PIL_FLIGHT_PAY), PIL_STATE from PILOTS group by PIL_STATE)
;
