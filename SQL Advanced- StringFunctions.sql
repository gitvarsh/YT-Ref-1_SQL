/* STRING FUNCTIONS - TRIM, LTRIM,RTRIM, REPLACE, SUBSTRING, UPPER, LOWER*/

--use Alex_SQLTutorial
--go 
--CREATE TABLE EmployeeErrors (
--EmployeeID varchar(50)
--,FirstName varchar(50)
--,LastName varchar(50)
--)

--Insert into EmployeeErrors Values 
--('1001  ', 'Jimbo', 'Halbert')
--,('  1002', 'Pamela', 'Beasely')
--,('1005', 'TOby', 'Flenderson - Fired')

select * from employeeerrors

-- Using trim, ltrim,rtrim

select EmployeeID, TRIM(EmployeeID) as trimEmployeeid
from EmployeeErrors

select EmployeeID, lTRIM(EmployeeID) as LtrimEmployeeid
from EmployeeErrors

select EmployeeID, rTRIM(EmployeeID) as rtrimEmployeeid
from EmployeeErrors

--using replace

select LastName, REPLACE(LastName,'- fired', '') as lastnamefixed
from EmployeeErrors

--using substring

select FirstName, SUBSTRING(FirstName,1,3) as SubstringFirstname
from EmployeeErrors

select FirstName, SUBSTRING(FirstName,3,3) as SubstringFirstname
from EmployeeErrors

/*Substring can be used in fuzzy match*/

select e.FirstName,d.Firstname
from EmployeeErrors as e
join EmployeeDemographics as d
on e.FirstName=d.Firstname

-- using fuzzy match for the above data

select e.FirstName,SUBSTRING(e.FirstName,1,3),d.Firstname,SUBSTRING(d.Firstname,1,3)
from EmployeeErrors as e
join EmployeeDemographics as d
on SUBSTRING(e.FirstName,1,3)=SUBSTRING(d.Firstname,1,3)


--Upper & Lower

select Firstname, lower(firstname)
from EmployeeErrors

select Firstname, upper(firstname)
from EmployeeErrors