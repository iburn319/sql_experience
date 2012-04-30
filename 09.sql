column "Departing City" format a18
column "Arriving City" format a18
select FL_FLIGHT_NO "Flight #", FL_ORIG "Departing", FL_DEST "Arriving", O.AIR_LOCATION "Departing City", D.AIR_LOCATION "Arriving City"
from FLIGHT, AIRPORT O, AIRPORT D
where FL_DEST = D.AIR_CODE
and FL_ORIG = O.AIR_CODE
and O.AIR_HUB_AIRLINE is null
and D.AIR_HUB_AIRLINE is null
;
