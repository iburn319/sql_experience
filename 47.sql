select count(TIC_SEAT), count(FL_FARE), FL_FLIGHT_NO, TIC_FLIGHT_DATE
from TICKET, FLIGHT
where TIC_FLIGHT_NO = FL_FLIGHT_NO
group by TIC_FLIGHT_DATE, FL_FLIGHT_NO
;
/*
Display the total number of tickets along with the total of the fares collected for each flight on each date.
Assume all tickets were sold at full fare. Display your results in ascending order by flight date.
 Hint: You will need to group by more than one column here.
*/
