create table employee(
    ID number(2),
    F_NAME    varchar(30),
    L_NAME	 varchar(30),
    DEPT     varchar(30),
    SALARY   number(10),
    DOJ      date,
    ADDRESS   varchar(30),
    Married   char(2)  
);
insert into employee (ID,F_NAME,L_NAME,	DEPT,	SALARY	,DOJ	,ADDRESS,	Married)values(1	,'VINAY',	'KUMAR',	'MCA',	25000,	'27-sep-2001'	,'GHAZIABAD' ,'Y');
insert into employee(ID,F_NAME,L_NAME,	DEPT,	SALARY	,DOJ	,ADDRESS,	Married) values(2,'SUMAN','VERMA','MCA'	,15000,'17-oct-2006'	,'MEERUT'	,'Y');
 insert into employee (ID,F_NAME,L_NAME,	DEPT,	SALARY	,DOJ	,ADDRESS,	Married)values(3,'AKASH','SINGH','CS',20000,'15-jan-2005','KANPUR','Y');
 insert into employee (ID,F_NAME,L_NAME,	DEPT,	SALARY	,DOJ	,ADDRESS,	Married)values(4,'SAGAR'	,'KUMAR'	,'IT',20000	,'12-feb-2019'	,'GHAZIABAD','N');
 insert into employee (ID,F_NAME,L_NAME,	DEPT,	SALARY	,DOJ	,ADDRESS)values(5,	'ROHAN',	'SHARMA',	'CS',	21000,	'18-sep-2005',	'GHAZIABAD'	);
 insert into employee (ID,F_NAME,L_NAME,	DEPT,	SALARY	,DOJ	,ADDRESS,	Married)values(6	,'ROBIN'	,'SINGH','IT',18000, '22-oct-2021'	,'MEERUT','N');
 insert into employee(ID,F_NAME,L_NAME,	DEPT,	SALARY	,DOJ	,ADDRESS) values(7	,'AKASH',	'RANJAN',	'CS', 22000,'14-nov-2019',	'GHAZIABAD'	);

select * from employee  where ADDRESS ='GHAZIABAD';
select  distinct dept from employee;
select ID ,F_name||' '||l_name as name,dept from employee;
select concat(concat(concat(f_name,' is working in '),dept),' Department') as empinfo from employee;
select F_name||' '||l_name as name from employee where DOJ>'15-jan-2005';
update employee
set salary=25000
where id=2;
select id, F_name||' '||l_name as name,salary*12 as Annual_Salary from employee;
select id, F_name||' '||l_name as name,salary,dept,doj, address ,married, salary+200 as gross_salary from employee;
select * from employee where salary between 15000 and 30000;
select * from employee where doj between '27-sep-2001' and '12-feb-2019';
select * from employee where dept in('MCA','CS');
SELECT * FROM employee where dept<> 'MCA';
select * from employee where f_name like 'R%';
select * from employee where f_name like 'RO%';
select * from employee where f_name like 'R%'and length(f_name)=5;
select * from employee where f_name like '_O%';
select * from employee where Married='Y';
select * from employee where Married='N';
select * from employee where Married is NULL;
select * from employee where dept ='MCA' and  Married='Y';