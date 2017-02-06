--subquery

-- 문제> 이름(first_name) 이 'Lex'인 사원보다 월급이 많은 직원의 이름과 월급을 출력

select salary from employees where first_name = 'Lex';
select first_name, salary from employees where salary>7000;

select first_name, 
	   salary 
  from employees 
 where salary > (select salary from employees where first_name = 'Lex');
	
-- 문제> 직원의 평균 급여보다 많은 급여를 받고 있는 사원의 이름, 급여출력
select first_name, 
	   salary 
  from employees
 where salary > (select avg(salary) from employees); 
 
select avg(salary) from employees GROUP BY department_id;

select first_name, 
	   salary 
  from employees
 where salary <> (select avg(salary) from employees);
 
-- 에러 >, <, <=, >=, <>, != 연산자 뒤의 서브쿼리라는 결과가 하나의 row만 나와야 한다.
select first_name, 
	   salary 
  from employees
 where salary > (select avg(salary) from employees group by job_id);