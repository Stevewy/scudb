select regiondescription, firstname, lastname, birthdate
from employee e, employeeterritory et, territory t, region r
where r.id==t.regionid and t.id== et.territoryid and et.employeeid==e.id and not exists( select * from employee e2, employeeterritory et2, territory t2, region r2 where r.id==r2.id and r2.id==t2.regionid and t2.id== et2.territoryid and et2.employeeid==e2.id and e2.birthdate > e.birthdate )
group by regiondescription;