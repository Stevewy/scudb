select group_concat(productname) as name
from product p, orderdetail t, 'order' o, customer c
where p.id==t.productid and t.orderid == o.id and c. id== o. customerid and companyname == 'Queen Cozinha' and date(orderdate) == '2014-12-25'
order by p.id;