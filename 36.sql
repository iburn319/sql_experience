column AIR_LOCATION format a20

select Orig.AIR_LOCATION, Dest.AIR_LOCATION
from airport Orig, airport Dest, flight, ticket, passenger
where FL_FLIGHT_NO = TIC_FLIGHT_NO
and TIC_ITINERARY_NO = PAS_ITINERARY_NO
and PAS_NAME like '%Newman'
and Orig.AIR_CODE = FL_ORIG
and Dest.AIR_CODE = FL_DEST
;
