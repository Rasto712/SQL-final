# SQL-final
Vypracovanie nizsie spomenutych uloh. 
Na vypracovanie som pouzil SSMS(SQL Server Management Studio): https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?redirectedfrom=MSDN&view=sql-server-ver15 
Tabulky boli vypracovane s funkciami insert, ktore som si vygeneroval v pythone (napr employee_generator.py)+ tabulky boli vytvorene pomocou funkcie v SSMS- https://www.youtube.com/watch?v=eEbr9Cepons

**5 tabuliek bolo vytvorenych:**
1. Employees: **[EmployeeID-(int),surname-(nchar(50)),name-(nchar(50),salary-(int)]**, v tejto tabulke je zapisanych 21 zamestnancov- **Employee_script.sql**
2. Deparments: **[DepartmentID-(int),names-(nchar(50))]**, v tabulke su zapisane 3 oddelenia (IT,BIO,CHE)- **Department_script.sql**
3. Projects: **[ProjectID-(int),name-(nchar(50)),budget-(int)]**,v tabulke je zapisanych 6 projektov- **Project_script.sql**
4. Department-Employee: **[DepartmentID,EmployeeID-(both int)]**, konbinacia oddeleni a zamestnancov- **Department-Employee_script.sql**
5. Project-Employee: **[ProjectID,EmployeeID-(both int)]**, konbinacia projektov a zamestnanocv- **Project-Employee_script.sql**

**Ulohy:**

**Úloha 1: Vytvorenie databázy**

Vytvorte novú SQL databázu s názvom "CompanyDB" obsahujúcu tabuľky pre zamestnancov, oddelenia a projekty.
Definujte potrebné stĺpce pre každú tabuľku a ich správne dátové typy.
Zabezpečte integritu dát pomocou primárnych a cudzích kľúčov.

**Úloha 2: Naplnenie databázy**

Vytvorte SQL skript, ktorý naplní tabuľky databázy "CompanyDB" s testovacími dátami pre zamestnancov, oddelenia a projekty.
Vytvorte dostatočný počet záznamov v každej tabuľke na overenie správneho fungovania dotazov.

**Úloha 3: SQL dotazy**

Napíšte a vykonajte nasledujúce SQL dotazy:
Zobrazte všetkých zamestnancov, ktorí pracujú v oddelení "IT".
Zobrazte zoznam všetkých projektov a počet zamestnancov priradených k nim.
Zobrazte zoznam oddelení a priemerne zarobky ich zamestnancov.
Aktualizujte mzdové údaje zamestnanca s ID 123456 na novú hodnotu 5000.

**Úloha 4: Verzia riadenia cez GitHub**

Vytvorte si repozitár na platforme GitHub a inicializujte ho ako prázdny projekt.
Pridajte SQL skript a všetky súbory potrebné pre vytvorenie databázy a naplnenie údajmi.
Urobte inicialný commit a push pre všetky zmeny.
Upravte alebo pridajte ďalšie súbory v repozitári, ak je to potrebné počas vývoja projektu.
Vykonajte ďalšie commity a push na sledovanie zmien a udržiavanie histórie.
