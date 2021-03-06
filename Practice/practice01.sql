--문제1
select first_name|| ' '||last_name as "이름",
	   salary as "월급",
	   phone_number as "전화번호"
	   from employees order by hire_date asc;
	   
--문제2
select job_title, max_salary from jobs order by max_salary desc;
	   
--문제3
select *from employees where manager_id is null;
select count(*) || '명'
as "매니저가 없는 직원 수" from employees where manager_id is null;

--문제4
select job_title as "이름", max_salary"최고 연봉" from jobs order by max_salary desc;

--문제5
select count(*) || '개' as "부서" from departments;

--문제6
select department_name, department_id, manager_id, location_id 
FROM departments order by length(department_name) desc ;

--문제7
select * from departments where manager_id is null;
select count(*) as"No manager-departments" from departments where manager_id is null;

--문제8
select UPPER(country_name) as "나라 이름"
 	  from countries order by country_name asc;

--문제9
select region_name from regions order by length(region_name) asc;

--문제10
select distinct lower(city) as "도시" 
	   from locations ORDER BY lower(city) asc;