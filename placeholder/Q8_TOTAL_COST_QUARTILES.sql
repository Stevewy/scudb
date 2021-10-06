select ifnull(companyname,'MISSING_NAME'), customerid, total
from (
select companyname, customerid, round(sum(quantity*unitprice),2) as total, ntile(4) over(order by round(sum(quantity*unitprice),2)) i
from customer c, 'order' o, orderdetail t
where c.id==o.customerid and o.id==t.orderid 
group by customerid
)
where i == 1;

