--문자열 함수

select lower ('Database Management System') from dual;

select first_name, upper (last_name) from employees;

select initcap ('database management system') from dual;

select first_name||' '||last_name from employees;

select concat(concat(first_name,' '),last_name) as "Full Name" from employees;

select substr('Database Manegement System', 2, 4) from dual;

select length('Database Management System') from dual;
select instr('Database Management System', 'Sys') from dual;

select employee_id, lpad(salary, 10, '*') from employees;

select employee_id, rpad(salary, 10, '*') from employees;

select '---'|| 
	trim(' ' from '  Data   base       ') ||
	'---'
	from dual;
	
select '---'|| 
	ltrim('  Data   base       ', ' ') ||
	'---'
	from dual;
	
select '---'|| 
	rtrim('  Data   base       ',' ') ||
	'---'
	from dual;

select replace('Database Management System', 'a', 'A') from dual;

