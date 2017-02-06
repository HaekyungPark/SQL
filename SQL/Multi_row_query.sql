--muti-row selection 
SELECT * FROM EMPLOYEES;

--문제> job_id가 'IT_PROG'인 직원들의 월급보다 많은 월급을 받는 직원들의 이름과 월급 출력

select avg(salary) from employees where job_id = 'IT_PROG';

select first_name, 
	   salary 
  from employees 
 where salary > ALL (select salary from employees where job_id = 'IT_PROG');
 
 
--문제> job_id가 'IT_PROG'인 직원들의 월급과 같은 월급을 받는 직원들의 이름과 월급 출력
select first_name, 
	   salary 
  from employees 
 where salary = ANY (select salary from employees where job_id = 'IT_PROG');
 
--별해
select first_name, 
	   salary 
  from employees 
 where salary in (select salary from employees where job_id = 'IT_PROG');
 