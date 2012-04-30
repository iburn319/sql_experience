select FL_FLIGHT_NO "Flight #", FL_ORIG "Departing", FL_DEST "Arriving", to_char(FL_ORIG_TIME, 'HH24:mi') "Departing Time", to_char(FL_DEST_TIME, 'HH24:mi') "Arriving Time"
from FLIGHT, TICKET, DEPARTURES
where FL_FLIGHT_NO = TIC_FLIGHT_NO(+) and FL_FLIGHT_NO = DEP_FLIGHT_NO
and TIC_FLIGHT_NO is null
and to_char(DEP_DEP_DATE, 'YYYY-MM-DD') like '2012-07-08'
;
