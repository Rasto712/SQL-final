select DepartmentID from [dbo].[Departments]
where name='IT';

with EMPLOYEES_IT AS (select EmployeeID as DEP_EMP_id from [dbo].[Department-Employee] where DepartmentID=1),

EMPLOYEESofDEPARTMENT as (select EmployeeID as EMP_id from [dbo].[Employees])

select * from EMPLOYEES_IT join EMPLOYEESofDEPARTMENT;

