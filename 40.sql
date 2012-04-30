column "Departing" format a20
column "Arriving" format a20
column "Time" format a20

select O.AIR_LOCATION "Departing", to_char(RES_DATE, 'YYYY-MM-DD ') || to_char(FL_ORIG_TIME, ' HH24:mi') "Time", D.AIR_LOCATION "Arriving", to_char(FL_DEST_TIME, 'HH24:mi') "Time", PAS_NAME "Passenger"
from AIRPORT O, AIRPORT D, FLIGHT, RESERVATION, TICKET, PASSENGER
where FL_FLIGHT_NO = RES_FLIGHT_NO and RES_FLIGHT_NO = TIC_FLIGHT_NO and TIC_ITINERARY_NO = PAS_ITINERARY_NO
and O.AIR_CODE = FL_ORIG 
and D.AIR_CODE = FL_DEST
and RES_NAME like '%Newman'
order by RES_DATE asc, FL_FLIGHT_NO asc
;
