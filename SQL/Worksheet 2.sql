-- where 절 연습

select first_name, salary from employees where salary < 20000;

select first_name, salary from employees where salary >= 10000 and salary <= 15000;

select first_name, salary from employees where salary between 10000 and 15000;

--null 비교는 유의
select first_name, manager_id from employees where manager_id is not null;

--null을 포함한 산술 식은 null
select first_name, commission_pct, (salary + salary*commission_pct) 
	from employees where commission_pct is not null;

select first_name, (salary + salary*nvl(commission_pct, 0)) as "이번달 월급"
	from employees;