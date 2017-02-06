-- ANSI Join SQL문 (1991 Syntax)

--natural join 테이블의 칼럼 이름이 같으면 자동으로 조인이 걸린다. 
--조인 대상 테이블에 같은 칼럼이 있는 경우
	select * 
		from employees a
natural join departments b;
--		on a.department_id = b.department_id
--		and a.manager_id = b.mamager_id
--natural join 은 위 두 문장 생략

		
select count(*) 
	from employees a
	join departments b
	using (department_id);
	

--inner join 표준 SQL문( equi join 표준 SQL문)
	select count(*) 
		from employees a
		join departments b
		on a.DEPARTMENT_ID = b.DEPARTMENT_ID;
		--equi조인과 동일
		
		
--outer join
select count(*)--nvl(a.FIRST_NAME,'소속직원이 없음'), b.department_name
	FROM EMPLOYEES a
right join DEPARTMENTS b
	on a.DEPARTMENT_ID = b.DEPARTMENT_ID; 
	
select count(*)--a.FIRST_NAME,  nvl(b.department_name, '부서가 없음')
	FROM EMPLOYEES a
left join DEPARTMENTS b
	on a.DEPARTMENT_ID = b.DEPARTMENT_ID; 
	

		