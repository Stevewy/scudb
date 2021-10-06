select productname,companyname, contactname 
from customer c, 'order' o, orderdetail t, product p
where c.id==o.customerid and o.id == t.orderid and t.productid == p.id and p.discontinued == 1 and not exists(select o2.orderdate from customer c2, 'order' o2, orderdetail t2, product p2 where c2.id==o2.customerid and o2.id == t2.orderid and t2.productid == p2.id and p2.discontinued == 1 and p.id==p2.id and o2.orderdate < o.orderdate)
order by productname;