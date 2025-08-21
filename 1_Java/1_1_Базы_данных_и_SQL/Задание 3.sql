Create table If Not Exists Employee (Id int, Name varchar(255), Salary int, ManagerId int);
Truncate table Employee;
insert into Employee (Id, Name, Salary, ManagerId) values ('1', 'Joe', '70000', '1');
insert into Employee (Id, Name, Salary, ManagerId) values ('2', 'Henry', '80000', '2');
insert into Employee (Id, Name, Salary, ManagerId) values ('3', 'Sam', '60000', null);
insert into Employee (Id, Name, Salary, ManagerId) values ('4', 'Max', '90000', null);

Create table If Not Exists Managers (Id int, Name varchar(255), Salary int);
Truncate table Managers;
insert into Managers (Id, Name, Salary) values ('1', 'Andrew', '30000');
insert into Managers (Id, Name, Salary) values ('2', 'Ilya', '90000');

SELECT employee.Name AS Employee FROM employee
JOIN managers ON employee.ManagerId = managers.id
WHERE employee.salary > managers.salary;