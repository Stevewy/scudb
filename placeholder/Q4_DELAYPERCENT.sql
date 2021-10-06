select a.companyname, round((select count(*) from 'order' o, shipper b where ShippedDate > RequiredDate and b.id== o.shipvia and b.companyname == a.companyname)*100.0/(select count(*) from 'order' o, shipper b where b.id== o.shipvia and b.companyname == a.companyname), 2) as percentage
from shipper a
order by percentage

