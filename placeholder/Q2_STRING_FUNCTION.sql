select distinct shipname, substr(shipname, 0, length(rtrim(shipname, replace(shipname, '-', '')))) as firstname
from 'order' 
where shipname like '%-%' 
order by shipname;