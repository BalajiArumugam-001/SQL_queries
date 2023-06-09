use exercise_hr;

select first_name,last_name,department_id from employees;

SELECT job_title, first_name, min_salary
FROM employees 
natural JOIN jobs;

SELECT employee_id, job_title, (end_date-start_date) as 'Date-difference' FROM job_history 
natural JOIN jobs 
WHERE department_id=90;

SELECT dep.department_name, emp.first_name, l.City 
FROM departments dep 
JOIN employees emp 
ON (dep.manager_id = emp.employee_id) 
JOIN locations l USING (location_id);

​

select  first_name, last_name, e.department_id,department_name
from employees as e inner join departments as d
on e.department_id = d.department_id;
​
​
​
​

select  JOB_TITLE, first_name,last_name,  salary , MIN_SALARY
from employees  inner join jobs;

select EMPLOYEE_ID,JOB_TITLE, datediff(END_DATE,START_DATE)
from job_history inner join jobs
where DEPARTMENT_ID='90';

SELECT DEPARTMENT_NAME,avg(SALARY)
from employees inner join departments;
​
select DEPARTMENT_NAME,FIRST_NAME,CITY
from employees inner join locations inner join departments;