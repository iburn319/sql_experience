select FL_FLIGHT_NO, FL_ORIG, FL_DEST, AIR_LOCATION
from FLIGHT, AIRPORT
where FL_DEST = AIR_CODE
and AIR_HUB_AIRLINE is null
;
