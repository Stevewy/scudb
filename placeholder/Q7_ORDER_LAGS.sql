select o.id, datetime(orderdate) as orderdate, datetime(lag(orderdate, 1, orderdate) over(order by orderdate)) as previous, round(julianday(orderdate) - julianday(lag(orderdate, 1, orderdate) over(order by orderdate)),2) as difference
from customer c, 'order' o
where c.id == 'BLONP'
order by orderdate
limit 10;