--JOIN9(Equi Join)

select a.FIRST_NAME, a.LAST_NAME, b.DEPARTMENT_NAME
	from employees a, departments b
	where a.department_id = b.department_id        --join조건
	and b.DEPARTMENT_NAME like 'P%' ;			   --row 선택조건
	
--Inner Join (Equi Join, Self-Join)
select a.first_name, b.first_name
	from employees a, employees b
	where a.manager_id = b.employee_id;
	
--Outer Join
select count(*)
	from employees a, departments b
	where a.department_id = b.department_id;

--부서가 없는 직원 포함
select count(*)
	from employees a, departments b
	where a.department_id (+)= b.department_id;
	
select nvl(a.first_name, '소속 직원이 없음'), b.department_name
	from employees a, departments b
	where a.department_id (+)= b.department_id;
	
select a.first_name, nvl(b.department_name, '부서가 없음')
	from employees a, departments b
	where b.department_id (+)= a.department_id; 
	