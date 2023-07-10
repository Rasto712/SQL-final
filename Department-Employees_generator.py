EmployeeID=123455
DepartmentID=1
count=0
total=0
for  i in range(21):
    EmployeeID+=1
    count+=1
    total+=1
    if count>7:
        count=1
        DepartmentID+=1
    #print(count)
    print("INSERT INTO [dbo].[Department-Employee]([DepartmentID],[EmployeeID])")
    print("Values"+" "+"("+str(DepartmentID)+","+str(EmployeeID)+")")
    print("GO")
#print(total)
