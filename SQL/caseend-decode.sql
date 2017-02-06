select employee_id, job_id from employees;
SELECT job_id from employees;

--case~end문
select employee_id, 
		salary, 
		case job_id 
		when 'Ac_ACCOUNT' then salary+salary*0.1
		when 'Ac_MGR' then salary+salary*0.2
		when 'Ac_ASST' then salary+salary*0.3
		else salary
		end as "이번달 월급"
		from employees;
		
--DECODE 함수 사용
select employee_id,
	   salary,
	   decode(job_id,
	   		  'AC_ACCOUNT', salary+salary*0.1,
			  'AC_MGR', salary+salary*0.2,
			  'AC_ASST', salary+salary*0.3,
			  salary) AS "이번달 월급"
		From employees;