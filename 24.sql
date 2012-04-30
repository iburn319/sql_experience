select unique EQ_EQUIP_TYPE, EQ_FUEL_CAPACITY * EQ_MILES_PER_GAL "Total Distance"
from EQUIP_TYPE
order by "Total Distance" desc
;
