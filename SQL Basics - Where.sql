/* WHERE, = , <, >, <>, AND, OR , LIKE, NULL, NOT NULL, IN  */

--select * from EmployeeDemographics
--where Firstname = 'Jim'

--select * from EmployeeDemographics
--where Firstname <> 'Jim'

--select * from EmployeeDemographics
--where Age > 30

--select * from EmployeeDemographics
--where Age >= 30

--select * from EmployeeDemographics
--where Age < 32

--select * from EmployeeDemographics
--where Age <=32

--select * from EmployeeDemographics
--where Age <=32 and Gender = 'Male'

--select * from EmployeeDemographics
--where Age <=32 or Gender = 'Male'

--select * from EmployeeDemographics
--where Lastname like 'S%'

--select * from EmployeeDemographics
--where Lastname like '%S%'

--select * from EmployeeDemographics
--where Lastname like '%S'

--select * from EmployeeDemographics
--where Lastname like 's%o%'

--select * from EmployeeDemographics
--where Lastname like 's%o%c%'

--select * from EmployeeDemographics
--where Lastname like 's%c%ott%'

--select * from EmployeeDemographics
--where Firstname is null

--select * from EmployeeDemographics
--where Firstname is not null


--select * from EmployeeDemographics
--where Firstname = 'jim' or Firstname = 'Dwight'

----or--

--select * from EmployeeDemographics
--where Firstname in ('jim','Dwight')

