--/* Inner joins, Full/left,right, outer*/

--select * from EmployeeDemographics
--select * from EmployeeSalary

--select *  
--from EmployeeDemographics as D
--inner join EmployeeSalary as S
--on d.EmployeeId = s.EmployeeId

--select *  
--from EmployeeDemographics as D
--full outer join EmployeeSalary as S
--on d.EmployeeId = s.EmployeeId

--select *  
--from EmployeeDemographics as D
--left join EmployeeSalary as S
--on d.EmployeeId = s.EmployeeId

--select *  
--from EmployeeDemographics as D
--right join EmployeeSalary as S
--on d.EmployeeId = s.EmployeeId

----------------------------------------------
--select d.EmployeeId,d.Firstname,s.Jobtitle,s.Salary
--from EmployeeDemographics as D
--inner join EmployeeSalary as S
--on d.EmployeeId = s.EmployeeId

--select s.EmployeeId,d.Firstname,s.Jobtitle,s.Salary
--from EmployeeDemographics as D
--inner join EmployeeSalary as S
--on d.EmployeeId = s.EmployeeId

--select s.EmployeeId,d.Firstname,s.Jobtitle,s.Salary
--from EmployeeDemographics as D
--right outer join EmployeeSalary as S
--on d.EmployeeId = s.EmployeeId

--select d.EmployeeId,d.Firstname,s.Jobtitle,s.Salary
--from EmployeeDemographics as D
--right outer join EmployeeSalary as S
--on d.EmployeeId = s.EmployeeId

--select d.EmployeeId,d.Firstname,s.Jobtitle,s.Salary
--from EmployeeDemographics as D
--left outer join EmployeeSalary as S
--on d.EmployeeId = s.EmployeeId

--select s.EmployeeId,d.Firstname,s.Jobtitle,s.Salary
--from EmployeeDemographics as D
--left outer join EmployeeSalary as S
--on d.EmployeeId = s.EmployeeId

--select d.EmployeeId,d.Firstname,d.Lastname,s.Jobtitle,s.Salary
--from EmployeeDemographics as D
--Full outer join EmployeeSalary as S
--on d.EmployeeId = s.EmployeeId

--select d.EmployeeId,d.Firstname,d.Lastname,s.Jobtitle,s.Salary
--from EmployeeDemographics as D
--inner join EmployeeSalary as S
--on d.EmployeeId = s.EmployeeId
--where Firstname <>'Michael'
--order by Salary desc

------------------------------------------------------------------------
--select Jobtitle, avg (Salary)
--from EmployeeDemographics as D
--inner join EmployeeSalary as S
--on d.EmployeeId = s.EmployeeId
--where Jobtitle = 'salesman'
--group by Jobtitle