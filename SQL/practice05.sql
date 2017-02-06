--문제1
select rownum, a.first_name, a.salary
from employees a, (select department_id 
					   from employees ) b
where a.DEPARTMENT_ID = b.department_id;
select a.first_name||last_name as "이름",
	   a.salary as "연봉",
	   b.department_name as"부서이름"
  from employees a, departments b
 where a.DEPARTMENT_ID = b.DEPARTMENT_ID
   and a.hire_date = (select max(hire_date)from EMPLOYEES );
--문제2
--자신의 부서 평균 급여보다 //// 연봉이 많은 사원의 사번, 성, 연봉
select outter.employee_id, outter.last_name, outter.salary
  from employees outter
 where salary > (select avg(salary) 
 				   from employees
				  where department_id = outter.department_id);
--부서별 평균 급여
select department_id, avg(salary) from employees group by department_id;
--error
select a.employee_id, a.last_name, b.avg_salary
  from employees a,
  				(select department_id, avg(salary) as avg_salary
 				   from employees 
			   group by department_id) b
 where a.DEPARTMENT_ID = b.DEPARTMENT_ID
   and a.salary = b.avg_salary;
--문제3(가능하면 top-k쓰지말고 해보기)
--평균연봉이 가장 높은 부서 /// 사원들의 사번, 이름, 성 , 업무, 연봉
select e.EMPLOYEE_ID, e.last_name, j.job_title, e.salary
from (
		select*
		from (select department_id, avg(salary) 
				from employees
			group by department_id
			order by avg(salary) desc
			)	
		WHERE rownum =1) a, EMPLOYEES e, jobs j
		where a.department_id =  e.DEPARTMENT_ID
  		  and e.JOB_ID = j.JOB_ID;
--문제4 평균 연봉이 가장 높은 부서는?( 부서이름, 평균연봉 )
select b.DEPARTMENT_NAME, a.avg_salary
FROM (
		select *
		  from (select department_id, avg(salary) as avg_salary
				  from employees
			  group by department_id
			  order by avg_salary desc)
		 where rownum=1) a, departments b 
where a.department_id = b.department_id;
--문제5 평균 연봉이 가장 높은 지역은?(e d l 조인하고 그룹바이 location_id...)
select department_id, avg(salary) as avg_salary
				  from employees
			  group by department_id
			  order by avg_salary desc;
select r.region_name, avg(salary)
from  employees e, departments d, locations l, countries c, regions r
where e.DEPARTMENT_ID = d.DEPARTMENT_ID
  and d.location_id = l.LOCATION_ID
  and l.COUNTRY_ID = c.COUNTRY_ID
  and c.REGION_ID = r.REGION_ID
  and rownum=1
group by region_name
order by avg(salary) desc;
--문제6 평균 연봉이 가장 높은 업무는? (업무이름, 평균연봉
select j.job_title, avg(salary)
  from EMPLOYEES e, jobs J
  where e.JOB_ID = j.job_id
    and rownum=1
group by job_title
order by avg(salary) desc;
