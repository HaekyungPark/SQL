-- date->문자열
select to_char(sysdate, 'yyyy-mm-dd hh:mi:ss')from dual;

select employee_id, hire_date from employees;

select employee_id, to_char(hire_date, 'yyyy-mm-dd hh:mi:ss') from employees;

select employee_id, to_char(hire_date, 'yyyy"년" mm"월" dd"일" hh24"시" mi"분" ss"초"') from employees;

select employee_id, to_char(hire_date, 'yyyy"년" mm"월" dd"일" PM hh12"시" mi"분" ss"초"') from employees;

select employee_id, to_char(hire_date, 'yyyy"년" mm"월" dd"일" d"요일" ddd"일 째 되는 날"') from employees;

select employee_id, to_char(hire_date, 'RR') from employees;