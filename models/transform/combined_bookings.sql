select 
"id", 
"booking_reference", 
"hotel", 
"booking_date", 
"cost" 
from 
DEMO_DB.RAW."bookings_1{{ var('student_num') }}"

union all

select 
"id", 
"booking_reference", 
"hotel", 
"booking_date", 
"cost" 
from 
DEMO_DB.RAW."bookings_2{{ var('student_num') }}"