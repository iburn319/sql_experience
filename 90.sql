select to_char(TIC_FLIGHT_DATE, 'MM Month') "Month", count(TIC_SEAT) "Tickets Sold"
from TICKET
group by to_char(TIC_FLIGHT_DATE, 'MM Month')
order by to_char(TIC_FLIGHT_DATE, 'MM Month')
;
