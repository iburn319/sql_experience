column "Departure Date" format a15
select FL_FLIGHT_NO "Flight #", FL_ORIG "Departing", FL_DEST "Arriving", 
to_char(DEP_DEP_DATE, 'YYYY-MM-DD') "Departure Date", FL_FARE "Fare", PAS_NAME "Passenger", TIC_SEAT "Seat #"
from FLIGHT, DEPARTURES, TICKET, PASSENGER
where FL_FLIGHT_NO = DEP_FLIGHT_NO and FL_FLIGHT_NO = TIC_FLIGHT_NO and TIC_ITINERARY_NO = PAS_ITINERARY_NO
and to_char(DEP_DEP_DATE, 'YYYY-MM-DD') like '2012-07%'
order by DEP_DEP_DATE asc, FL_FLIGHT_NO asc
;
