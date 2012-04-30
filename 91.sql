column "Passenger" format a19
column "Reserved by" format a19
column "Pilot" format a20
column "Fare" format 9999.99
column "Fuel" format 9999
column "Departing" format a16
column "Arriving" format a16

select distinct PAS_NAME "Passenger", RES_NAME "Reserved by", PIL_PILOTNAME "Pilot", FL_FARE "Fare", EQ_FUEL_CAPACITY "Fuel", substr(O.AIR_LOCATION,1,length(O.AIR_LOCATION)-4) "Departing", substr(D.AIR_LOCATION,1,length(D.AIR_LOCATION)-4) "Arriving"
from PASSENGER, RESERVATION, DEPARTURES, EQUIP_TYPE, PILOTS, FLIGHT, AIRPORT O, AIRPORT D
where PAS_CONFIRM_NO = RES_CONFIRM_NO and RES_FLIGHT_NO = DEP_FLIGHT_NO
and DEP_EQUIP_NO = EQ_EQUIP_NO
and DEP_PILOT_ID = PIL_PILOT_ID
and DEP_FLIGHT_NO = FL_FLIGHT_NO and (FL_ORIG = O.AIR_CODE or FL_DEST = D.AIR_CODE)
;
