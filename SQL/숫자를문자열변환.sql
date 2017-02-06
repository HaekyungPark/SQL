--Number ->문자열

select employee_id, salary from employees;

select employee_id, to_char(salary, '99999') from employees;

select employee_id, to_char(salary, '9999') from employees;

select employee_id, to_char(salary, '9,999,999') from employees;

SELECT to_char(3.1415926589, '9.99') from dual;
SELECT to_char(3.1415926589, '9.999') from dual;

select employee_id, to_char(salary, 'L9999') from employees;

select to_char(-1000, '9999MI') from dual;
select to_char(1000, '9999MI') from dual;

select to_char(-1000, 'S99999') from dual;
select to_char(1000, 'S99999') from dual;
select to_char(0, 'S99999') from dual;

select to_char(-1000, '99999PR') from dual;

select to_char(1234, 'xxxx')from dual;
