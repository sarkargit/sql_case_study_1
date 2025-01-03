-- 1 show all data 
select * from salaries;
-- 2 show only Employee name and job title 
select EmployeeName,JobTitle  from salaries ;
-- 3 show the number of Employees in the table 
select count(*) from salaries;
select distinct count(*) from salaries;
-- 4 show the unique job title in the table 
select distinct JobTitle
from salaries;
select  count( distinct JobTitle)
from salaries;
-- 5 show the job title and overtime pay for all employees with overtime pay greater thn 50000
select * from salaries;
select JobTitle, OvertimePay
from salaries 
where OvertimePay > 50000;
-- 6 show average base pay of all employes
select avg(BasePay) as "Average_Base_pay" from salaries;
-- 7 show top highest pay employes 
select EmployeeName, TotalPay from salaries
order by TotalPay desc limit 10;
-- 8 show the average of basepay, overtimepay, and other pay for each employees 
select EmployeeName,(BasePay + OvertimePay + OtherPay) /  3  as Average_pay
from salaries;
-- 9 show how many mangers 
select * from salaries;
select EmployeeName , JobTitle
from salaries
where JobTitle like '%Manager%';
-- 10 show all data of employes except Mangers 
select EmployeeName , JobTitle
from salaries
where JobTitle != 'Manager';
select EmployeeName , JobTitle
from salaries
where JobTitle <> 'Manager';
-- 11 show all employees with a total pay betwen 50,000 and 75000
select * from salaries
where TotalPay between 50000 and 75000;
-- 12 show all employes with base pay less than 50000 or total pay greater than 100000
select * from salaries;
select * from salaries
where BasePay < 50000 or TotalPay > 100000;
-- 13 shwow all employes with total pay benefits value 
-- betwen 125,000 and 150,000 and job title containing the word 'Director'
select * from salaries
where TotalPayBenefits between 125000 and 150000
and JobTitle like '%Director%';
-- 14 show all employees order by their total pay benefits in desc order 
select * from salaries
order by TotalPayBenefits desc;
-- 15 show all th job title with an average base pay of 
-- at least 100,000 and order them by the average base pay in desending order 
select JobTitle, avg(BasePay)
from salaries
group by JobTitle 
having avg(BasePay) >= 100000
order by avg(BasePay) desc;


































