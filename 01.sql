column "City" format a18
select AIR_CODE "Airport", AIR_LOCATION "City", AIR_ELEVATION "Elevation"
from AIRPORT
where AIR_HUB_AIRLINE is null
order by AIR_ELEVATION desc
;
