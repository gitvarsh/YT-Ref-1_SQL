/* *, TOP, DISTINCT, COUNT, AS, MAX,MIN, AVG */

select * from EmployeeDemographics

select top 5 * from EmployeeDemographics

select distinct top 7  * from EmployeeDemographics

select count(*) from EmployeeDemographics

select COUNT(Age) from EmployeeDemographics

select distinct top 7 * from EmployeeDemographics 

select count(*) as Alldata from EmployeeDemographics

select AVG(Salary) as AvgSalary from EmployeeSalary

select Max(Salary) as AvgSalary from EmployeeSalary

select Min(Salary) as AvgSalary from EmployeeSalary

select Max(Age) as MaxAge from EmployeeDemographics

select Min(Age) as MinAge from EmployeeDemographics