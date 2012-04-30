select (max(PIL_BRTHDATE) - min(PIL_BRTHDATE))/365.25 "Pilot age difference"
from PILOTS
;
