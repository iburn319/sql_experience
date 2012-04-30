select unique PAS_NAME, RES_NAME
from passenger left outer join reservation
on PAS_CONFIRM_NO = RES_CONFIRM_NO
and PAS_NAME != RES_NAME
;
