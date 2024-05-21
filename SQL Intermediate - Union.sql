/*UNIONS, UNTIONS ALLS */

select * from EmployeeDemographics
union
select * from warehouseemployeedemographics


select * from EmployeeDemographics
union all
select * from warehouseemployeedemographics
order by EmployeeId

select * 
from EmployeeDemographics as d
full outer join WareHouseEmployeeDemographics as w
on d.EmployeeId=w.EmployeeID

---------------------------
--make sure u dont do below types of union, which is inconsitent
select EmployeeId,Firstname,Age from EmployeeDemographics
union
select EmployeeId,Jobtitle,Salary from EmployeeSalary