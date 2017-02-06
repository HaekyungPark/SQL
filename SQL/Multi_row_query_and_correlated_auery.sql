--correlated Query

--문제> 각 부서별로 최고 급여를 받고 있는 직원의 이름과 급여 출력
--sol1) correlated subquery
select first_name, salary
  FROM EMPLOYEES outter
  where salary = (select max(salary) 
  				    from EMPLOYEES 
				   where department_id = outter.department_id
				  );

--sol2) multi row subquery
select department_id, max(salary) from employees GROUP BY department_id;

select first_name, salary 
  from employees 
 where (department_id, salary) in (select department_id, max(salary) 
								     from employees 
							     GROUP BY department_id);
							   
--sol3) join으로 해결
select rownum, a.first_name, b.max_salary 
  from employees a,
  	   (select department_id, max(salary) as max_salary
		  from employees 
	  GROUP BY department_id) b
 WHERE a.DEPARTMENT_ID = b.department_id
   and a.salary = b.max_salary;