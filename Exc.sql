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
select * from [dbo].[Projects] right join project on project.PRid=Projects.[Project ID];

-- tretia uloha

with 
deps as (select * from Departments),
DEP_EMP as (select DepartmentID as DEPid, EmployeeID as EMPid from [dbo].[Department-Employee]),
deps_DEP_EMP_join as (select * from DEP_EMP right join deps on deps.DepartmentID=DEP_EMP.DEPid),
Deps_EMP_ID as (select EMPid,DEPid,name as Depname from deps_DEP_EMP_join),
Salary as (select * from Deps_EMP_ID right join  [dbo].[Employees] on Deps_EMP_ID.EMPid= [dbo].[Employees].EmployeeID),
Salary_final as (select DEPid, AVG(salary) as avg_salary from Salary where Depname='IT' or Depname='BIO' or Depname='CHE' group by DEPid  ),
Final_join as (select name,DEPid,avg_salary from Salary_final left join deps on deps.DepartmentID=Salary_final.DEPid)
select * from Final_join;

--stvrta uloha 
update Employees set salary=5000 where EmployeeID=123456
select * from Employees where EmployeeID=123456;


