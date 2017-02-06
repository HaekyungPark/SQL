--Like

select first_name from employees;

--ma로 시작하거나 끝나거나 중간에 있거나 (ma를 포함한 문자열 검색)
select first_name from employees where first_name like '%ma%';
 
select first_name from employees where first_name like '___a';

select first_name from employees where first_name like '__a_';

select first_name from employees where first_name like '_a_';

select commission_pct from employees where 2 = 10 AND null;