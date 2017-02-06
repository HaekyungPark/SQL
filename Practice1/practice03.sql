--문제1
select a.employee_id AS "사번",
	   a.FIRST_NAME AS "이름",
	   b.DEPARTMENT_NAME AS "부서명",
	   m.first_name AS "매니저 이름" 
	from EMPLOYEES a, departments b, EMPLOYEES m
	where a.DEPARTMENT_ID = b.DEPARTMENT_ID
	and a.MANAGER_ID = m.EMPLOYEE_ID;
	
--문제2
SELECT  r.REGION_NAME, c.COUNTRY_NAME
	from countries c, regions r
	where c.REGION_ID = r.region_id
	order by r.REGION_NAME desc, c.COUNTRY_NAME desc;
	
--문제3
select b.DEPARTMENT_ID as "부서 번호", 
	   b.department_name as "부서 이름", 
	   m.first_name as "매니저 이름",
	   l.CITY as "도시",
	   c.COUNTRY_NAME as "나라",
	   r.REGION_NAME as "지역"
	from employees m, departments b, locations l, countries c, regions r
	where m.MANAGER_ID = b.MANAGER_ID
	and	  b.location_id = l.location_id
	and   l.COUNTRY_ID = c.COUNTRY_ID
	and   c.REGION_ID = r.REGION_ID;
	
--문제4
select e.EMPLOYEE_ID as "사번", 
	   e.FIRST_NAME ||' '||e.LAST_NAME  as "이름"
	from EMPLOYEES e, JOBS j, job_history h
	where j.job_id = h.JOB_ID
	and   e.EMPLOYEE_ID = h.EMPLOYEE_ID
	and   job_title = 'Public Accountant';
	
--문제5 outer join 이용
select e.EMPLOYEE_ID, 
	   e.FIRST_NAME, 
	   e.LAST_NAME, 
	   nvl(to_char(d.DEPARTMENT_NAME),'부서가 없음')
	from EMPLOYEES e
left join DEPARTMENTS d
	on e.DEPARTMENT_ID = d.DEPARTMENT_ID
	order by e.LAST_NAME asc;

select nvl(to_char(e.EMPLOYEE_ID),'소속직원 없음') as "사번", 
	   e.FIRST_NAME as "이름", 
	   e.LAST_NAME as "성", 
	   d.DEPARTMENT_NAME as "부서 이름"
	from EMPLOYEES e
right join DEPARTMENTS d
	on e.DEPARTMENT_ID = d.DEPARTMENT_ID
	order by e.LAST_NAME asc;

select nvl(to_char(e.EMPLOYEE_ID),'소속직원 없음') as "사번",
	   e.FIRST_NAME as "이름", 
	   e.LAST_NAME as "성", 
	   nvl(to_char(d.DEPARTMENT_NAME),'부서가 없음')
	from EMPLOYEES e
full join DEPARTMENTS d
	on e.DEPARTMENT_ID = d.DEPARTMENT_ID
	order by e.LAST_NAME asc;

--문제6
select a.EMPLOYEE_ID as "사번", 
	   a.first_name||' '||a.LAST_NAME as"이름", 
	   a.HIRE_DATE as "채용일"
	from EMPLOYEES a, EMPLOYEES m
	where a.MANAGER_ID = m.EMPLOYEE_ID
	and a.HIRE_DATE < m.HIRE_DATE;
	
		  