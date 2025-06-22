/*
Today's Topic: Temp Tables
*/

CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar (100),
Salary int
)

Select *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
'1001', 'HR', '45000'
)

INSERT INTO #temp_Employee
SELECT *
FROM SQLTutorial..EmployeeSalary


DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), Avg(Age), AVG(Salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
Group BY JobTitle

SELECT *
FROM #Temp_Employee2

