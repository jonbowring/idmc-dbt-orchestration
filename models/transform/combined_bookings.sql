select 
ID, 
BOOKING_REFERENCE, 
HOTEL, 
BOOKING_DATE, 
COST 
from 
DEMO_DB.RAW.BOOKINGS_1

union all

select 
ID, 
BOOKING_REFERENCE, 
HOTEL, 
BOOKING_DATE, 
COST 
from 
DEMO_DB.RAW.BOOKINGS_2