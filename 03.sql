select RES_FLIGHT_NO "Flight #", O.AIR_CODE "Departing", D.AIR_CODE "Arriving", RES_DATE "Reservation Date", RES_FLIGHT_DATE "Flight Date"
from FLIGHT, AIRPORT O, AIRPORT D, RESERVATION
where RES_FLIGHT_NO = FL_FLIGHT_NO
and FL_ORIG = O.AIR_CODE
and FL_DEST = D.AIR_CODE
and RES_NAME like 'Andy Anderson'
;
