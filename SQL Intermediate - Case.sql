/*CASE STATEMENT*/

select Firstname, Lastname, Age,
--case is used inside select statement
case
	when age > 30 then 'Old'
	when Age between 27 and 30 then 'Young'
	else 'Baby'
end as Age_classification
from EmployeeDemographics
where Age is not null
order by Age


select Firstname, Lastname, Age,
--case is used inside select statement
case
	when age > 30 then 'Old'
	when Age = 38 then 'Stanley'  /*The previous condition was aleady met so it skipped to the next option*/
	else 'Baby'
end as Age_classification
from EmployeeDemographics
where Age is not null
order by Age



select Firstname, Lastname, Age,
--case is used inside select statement
case
	when Age = 38 then 'Stanley' /*check previous comment*/
	when age > 30 then 'Old'
	else 'Baby'
end as Age_classification
from EmployeeDemographics
where Age is not null
order by Age


/*case works inside select statement and once they satisfy the condition , they dont follow the rules again for the same data where the conditon is already applied*/

Select d.Firstname, d.Lastname, s.Jobtitle, s.Salary,
case
	when Jobtitle = 'Salesman' then Salary + (Salary * .10)
	when Jobtitle = 'Accountant' then Salary + (Salary * .05)
	when Jobtitle = 'HR' then Salary + (Salary * .000001)
	else Salary + (Salary * .03)
end as SalaryAfterRasie
from EmployeeDemographics as d
inner join EmployeeSalary as s
on d.EmployeeId = s. EmployeeId