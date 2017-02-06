--NULL관련함수

select nvl(null,0) from dual;

select employee_id, nvl(commission_pct,0) from employees;

select  nvl2(null, 10, 0) from dual;
select  nvl2(1, 10, 0) from dual;

select employee_id, nvl2(commission_pct, salary+salary*commission_pct, salary)
from employees;

select nullif(10, 5+5) from dual;

select coalesce(1,2,3,4,5,6) from dual;
select coalesce(null,null,3,4,5,6) from dual;
select coalesce(null, 2, null,4,5,6) from dual;

--주의(에러, 대체 값은 타입이 같아야한다)
select employee_id, manager_id from employees;
--에러
select employee_id, nvl(manager_id, 'No manager') from employees;
--정답
select employee_id, nvl(to_char(manager_id), 'No manager') from employees;
