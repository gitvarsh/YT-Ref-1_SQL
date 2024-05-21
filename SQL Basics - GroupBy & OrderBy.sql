--/*GROUP BY, ORDER BY */


--select Gender 
--from EmployeeDemographics
--group by Gender

----actually--
--select Gender, COUNT(Gender)
--from EmployeeDemographics
--group by Gender

--------------------------------
--select Gender, age, COUNT(Gender)
--from EmployeeDemographics
--group by Gender,Age

--select Gender, age, COUNT(Gender)
--from EmployeeDemographics
--where Age > 31
--group by Gender,Age

----------------------------------------
--select Gender, COUNT(Gender) as CountGender
--from EmployeeDemographics
--where Age > 31
--group by Gender
--order by CountGender ASC

--select Gender, COUNT(Gender) as CountGender
--from EmployeeDemographics
--where Age > 31
--group by Gender
--order by CountGender DESC

------------------------------------------------
--Select * from employeedemographics
--order by age

--Select * from employeedemographics
--order by age desc

--Select * from employeedemographics
--order by age, gender

--Select * from employeedemographics
--order by age, gender desc

--Select * from employeedemographics
--order by age, gender desc

--Select * from employeedemographics
--order by age desc, gender desc

----using numbers instead of column name--
--Select * from employeedemographics
--order by 4 desc, 5 desc
