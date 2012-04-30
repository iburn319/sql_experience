select FL_ORIG "Departing", FL_DEST "Arriving",
to_char(FL_ORIG_TIME, 'hh24:mi') "Departure Time",
to_char(FL_DEST_TIME, 'hh24:mi') "Arrival Time"
from FLIGHT
where FL_TIME_ZONES = 0
order by FL_FLIGHT_NO
;
