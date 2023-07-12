-- prva uloha
with  DEP_IT as (
select DepartmentID,name from [dbo].[Departments]
where name='IT'),

EMPLOYEES_IT AS (select EmployeeID as DEP_EMP_id from [dbo].[Department-Employee] where DepartmentID=1),
EMPLOYEESofDEPARTMENT as (select EmployeeID as EMP_id from [dbo].[Employees])

select surname,name,EmployeeID from [dbo].[Employees] right join EMPLOYEES_IT on EMPLOYEES_IT.DEP_EMP_id=Employees.EmployeeID;

-- druha uloha 

with 
PRJ_EMP as (select Distinct ProjectID from [dbo].[Project-Employee] ),
project as (select ProjectID as PRid, COUNT(EmployeeID) as NO_of_EMP from [dbo].[Project-Employee] where ProjectID<7 group by ProjectID)
select * from [dbo].[Projects] right join project on project.PRid=Projects.[Project ID]

