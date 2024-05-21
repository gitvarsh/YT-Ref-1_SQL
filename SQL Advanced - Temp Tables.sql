/*TEMP TABLES*/

-- can use a this anytime and where and multiple times unlike subquery and cte

--create table #temp_employee (
--employeeid int,
--jobtitle varchar (50),
--salary int
--)

select * from #temp_employee

--insert into #temp_employee values('1001', 'HR', '45000')'

/*adding values to exisiting table from another exisitng table*/

--insert into #temp_employee
--select * from EmployeeSalary

--delete from #temp_employee
--where jobtitle is null

--create table #temp_employee2(
--jobtitle varchar(50),
--employeesperjob int,
--AvgAge int,
--AvgSal int)

select * from #temp_employee2

/*Another way to insert the table values*/

--insert into #temp_employee2
--select s.Jobtitle, COUNT(s.Jobtitle), AVG(d.Age), AVG(s.Salary) 
--from EmployeeDemographics as d
--join EmployeeSalary as s
--on d.EmployeeId = s.EmployeeId
--group by s.Jobtitle

/*temp tables are used mostly in Stored procedures*/