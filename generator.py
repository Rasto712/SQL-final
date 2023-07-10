from random import *
firstname=["Maya", "Rasto", "Leila", "Milo", "Luna", "Kai", "Naya", "Axel", "Esme", "Zane", "Ivy", "Jude", "Noah", "Ava", "Liam", "Isla", "Ethan", "Mia", "Owen", "Sophia"]
secondname=["Johnson", "Smith", "Davis", "Anderson", "Wilson", "Thompson", "Walker", "Turner", "Mitchell", "Hill", "Young", "Clark", "Scott", "Green", "Baker", "Carter", "Murphy", "Stewart", "Morgan", "Reed"]
department=["IT","BIO"]

employeeID=123456
for i in range(20):
    salary=randint(1000,5000)
    print("INSERT INTO [dbo].[Employees]"+"([Employee ID],[Name],[Surname], [Salary])")
    print("VALUES"+" ("+str(employeeID)+","+"'"+firstname[i]+"'"+","+"'"+secondname[i]+"'"+","+str(salary)+")")
    print("GO")
    employeeID+=1
