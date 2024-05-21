/*STORED PROCEDURE*/

--SYNTAX
create procedure test
as
select * from EmployeeDemographics

-- to execute

EXEC test

------------------

create procedure temp_employee
as
Create table #temp_employee (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)

Insert into #temp_employee
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM EmployeeDemographics e
JOIN EmployeeSalary s
	ON e.EmployeeID = s.EmployeeID
group by JobTitle


select * from #temp_employee

-- u need to run the  whole set to see the result, cuz since its temp table they dont appear if u select them using select statement, so we afre using the select inside the stored procrdure, to show the whole outcome.


exec temp_employee 

-- using parameter

exec temp_employee @jobtitle = 'salesman'