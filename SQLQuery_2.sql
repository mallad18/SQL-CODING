SELECT * 
FROM emp
where emp.SAL=1250;





WAQ to display all the details of employee whose sal is 1200?
'select columnnames
from table_name
where column_name=value;'


SELECT *
FROM emp
WHERE emp.JOB != 'MANAGER';




WAQ to display all the details of employee whose job is not manager ?
'select columnnames
from table_name
where column_name=value;

Operators are classified into,

Arithmetic Operators ( +, - , * , / )

Relational Operators ( > , < , >= , <= , = , < > or != - not equals to )

Logical Operators ( NOT, AND, OR )

Special Operators ( IN , LIKE , BETWEEN , IS )'





WAQ to display all the details of employee who joined after 1981-09-09 ?

SELECT *
FROM emp
WHERE emp.HIREDATE >= '1981-09-09';



WAQ to  display all the employee who are working in dept 10 and 20 ?

SELECT * 
from emp
WHERE emp.DEPTNO=10 or emp.DEPTNO=20;

'USing IN'

SELECT * 
from emp
WHERE emp.DEPTNO in (10,20);


note: whenever we have multiple condition it has to be seperated by logical operators based on the requirements.

note: IN special operator is used to evaluate multiple values of same column 
syntax:-  column_name in (value1, value2)


SELECT * 
FROM emp;

display all the emp who are getting comm 0 or more  

SELECT *
FROM emp 
WHERE emp.COMM >=0;


note: IS special operator is used to evaluate null values or records present in the column of the table.
Syntax: column_name IS NULL;

display all the emp who are not getting COMM

SELECT * 
FROM emp 
where emp.COMM IS NULL; 



SELECT * 
FROM emp 
where emp.COMM IS not NULL; 


'1 List all the employees in dept 20.'

SELECT * 
FROM emp
WHERE emp.DEPTNO=20;

SELECT * 
FROM emp
WHERE emp.DEPTNO IN (20);

'2 List the employee earning more than Rs 2500'


SELECT * 
FROM emp
WHERE emp.SAL>2500;


'3 Display all the salesmen'

SELECT *
FROM emp
WHERE emp.JOB='SALESMAN';

SELECT *
FROM emp
WHERE emp.JOB IN ('SALESMAN');

'4 List the employees in department 10 and 20.'

SELECT *
FROM emp
WHERE emp.DEPTNO IN (10,20);

SELECT *
FROM emp
WHERE emp.DEPTNO=10 OR emp.DEPTNO=20;

'5 List all the clerks and analyst.'

SELECT *
FROM emp 
WHERE emp.JOB IN ('CLERK','ANALYST');

SELECT *
FROM emp 
WHERE emp.JOB='clerk' or emp.JOB='analyst';

'6 List all the employee whose name starts with ‘S’

LIKE:- It is used for pattern matching or for wild card search or entry. '

SELECT *
FROM emp
WHERE emp.ENAME like 'S%';

'7 List all the employee whose name is having letter ‘L’ as Second character'

SELECT *
FROM emp
WHERE emp.ENAME like '_L%';

'8 List all the employees whose name is having at least 2 L’s in it'

SELECT *
FROM emp 
WHERE emp.ENAME like '%L%L%';

'9 List the employees whose name is having letter ‘E’ as the last but one character'

SELECT *
FROM emp
WHERE emp.ENAME LIKE '%E_';

'10 List all the employees whose name is having letter ‘R’ in the 3rd position'

SELECT *
FROM emp
WHERE emp.ENAME LIKE '__R%';

'11 List all the employees who are having exactly 5 characters in their jobs'

SELECT *
FROM emp
WHERE emp.ENAME LIKE '_____';

'12 Display employees from whose name is having letter ‘_’ in it'

SELECT *
FROM emp
WHERE emp.ENAME LIKE '%\_%';

'using \ will treat '_' as literal some engine do not support the escape sequence so using brackets will resolve this issue '

SELECT *
FROM emp
WHERE emp.ENAME LIKE '%[_]';






'13 List the employees whose salary is between 2000 and 3000'

SELECT *
FROM emp 
WHERE emp.SAL>=2000 and emp.SAL<=3000;

'14 List all the employees whose commission is null'

SELECT * 
FROM emp
WHERE emp.COMM IS NULL;


'15 List all the employees who don’t have a reporting manager'


SELECT * 
FROM emp
WHERE emp.MGR IS NULL;


'16. List all the salesmen in dept 30'

SELECT * 
FROM emp 
WHERE emp.DEPTNO=30;


SELECT * 
FROM emp 
WHERE emp.DEPTNO IN (30);


'17. List all the salesmen in dept number 30 and having salary greater than 1500'


SELECT * 
FROM emp 
WHERE emp.DEPTNO IN (30) and emp.SAL>1500;

SELECT * 
FROM emp 
WHERE emp.DEPTNO=30 and emp.SAL>1500;


'18 List all the employees except those who are working in dept 10 & 20.'

SELECT * 
FROM emp
WHERE emp.DEPTNO!=10 and emp.DEPTNO!=20;


'19 List all the employees who are having reporting managers in dept 10'

SELECT *
FROM emp
WHERE emp.DEPTNO=10 and emp.MGR IS NOT NULL;

'20 Display all the employee who are getting 2500 and excess salaries in dept 20.'

SELECT *
FROM emp 
WHERE emp.DEPTNO IN (20) and emp.SAL>=2500;


'21. Display all the manager working in dept 20 and 30'

SELECT *
FROM emp 
WHERE emp.DEPTNO IN (20,30) and emp.JOB='MANAGER';


'22. Display all the employee whose job is manager who don’t have  Reporting manager'

SELECT *
FROM emp
WHERE emp.JOB IN ('MANAGER') and emp.MGR IS NULL;


'23. Display all the employee who are getting some commission with their designation is neither MANAGER not ANALYST'

SELECT * 
FROM emp;
WHERE emp.JOB!='MANAGER' and emp.JOB!='ANALYST' and emp.COMM IS NOT NULL;



'Syntax:-  column_name between lowestrangevalue and highestrangevalue'


'waq to display all the employees who sal in the range of 800 and 2000'

select * 
from emp
where emp.SAL between 800 and 2000;

'24. Display all the employee whose earning salary not in the range 2500 and 5000 in dept 10 and 20'

SELECT * 
FROM emp
WHERE emp.DEPTNO IN (10,20) and emp.SAL NOT between 2500 and 5000;




'25. Display all the manager whose annual sal is ending with zero'


SELECT * 
FROM emp 
WHERE emp.JOB='MANAGER' and emp.SAL%10=0;


'26. Display all the employees who are CLERK or ANALAYST with salary greater than 1000.'

SELECT *
FROM emp 
WHERE emp.JOB IN ('CLERK', 'ANALYST') and emp.SAL>1000;



'27. Display all the employee who are ‘SALESMAN’s having E as the last but one character in ename but salary having exactly 4 character'

SELECT *
FROM emp
WHERE emp.JOB IN ('SALESMAN') and emp.ENAME LIKE '%E_' and emp.SAL like '_______';


'28. Display all the employee who are joined after year 81'

SELECT *
FROM emp 
WHERE emp.HIREDATE >= '1982-01-01';


'29. Display all the employee who are joined in FEB'

SELECT *
FROM emp
WHERE emp.HIREDATE LIKE '_____02___';


'30. List the employees who are not working as managers and clerks in dept 10 and 20 with a salary in the range of 1000 to 3000 '

SELECT *
FROM emp
WHERE emp.JOB NOT IN ('MANAGER', 'CLERK') and emp.DEPTNO IN (10,20) and emp.SAL BETWEEN 1000 AND 3000;

'31. List the employees whose salary not in the range of 1000 to 2000 in dept 10,20,30 except all salesmen '

SELECT * 
FROM emp 
WHERE emp.SAL NOT BETWEEN 1000 and 2000 AND emp.DEPTNO IN (10,20,30) AND emp.JOB NOT IN ('SALESMAN');


'33. Display all the employees whose job has string ‘MAN’ in it. '

SELECT *
FROM emp
WHERE emp.JOB like '%MAN%';


'34. Select all the employees whose name start with S or V in département 10 and 20 '

SELECT * 
FROM emp
WHERE emp.ENAME like 'S%' or emp.ENAME like 'V%' AND emp.DEPTNO IN (10,20);


'35. Select all the salesman and clerks who are earning salary in the range 1000 and 3000 except department 10 '

SELECT *
FROM emp
WHERE emp.SAL BETWEEN 1000 and 3000 AND emp.DEPTNO!=10 and emp.JOB IN ('SALESMAN', 'CLERK');


'36. Select all the employees whose are joined before 01-may-81 and after 01-may-80 '

SELECT *
FROM emp 
WHERE emp.HIREDATE BETWEEN '1980-05-01' and '1981-05-01';


'37. Select all the analyst whose name 3rd character start with 'o' and earning salary more than 2500 '


SELECT *
FROM emp 
WHERE emp.JOB IN ('ANALYST') AND emp.ENAME LIKE '__O%' AND emp.SAL > 2500;

'38. Select all the salesman whose salary not between 2000 and 3000 in depaertment 30'

SELECT *
FROM emp 
WHERE emp.JOB IN ('SALESMAN') AND emp.SAL NOT BETWEEN 2000 and 3000 AND emp.DEPTNO IN (30);




'AS the order of execution goes 1.FROM, 2. Where , 3. Select in above query it goes to emp table and followed by checking the condition in where clause if where call give true value if the condition mentioned it will only return and display accordingly. nut if it returns true by default it will display all the records from the table and carries onto next statement which is select'






'1)Arrange all the employees by their salary'
select * 
from emp 
order by sal; 

'2) Arrange all the employees by their salary in the descending order '

SELECT *
from emp 
ORDER by sal desc;

'3) Arrange ename, sal, job, empno and sort by descending order of salary'

SELECT ENAME, SAL, JOB, EMPNO 
FROM emp
ORDER by SAL desc;



'ASS-1:->  Arrange all the emp by their salary and department in desc.'

SELECT *
FROM emp 
ORDER by SAL desc, DEPTNO desc;


'ASS-2:-> Arrange all the emp details by passing numeric value 1 in order by clause (if the query works try passing other numeric value and analyze the query).'

SELECT * 
FROM emp 
ORDER BY 1;

SELECT * 
FROM emp 
ORDER BY 2;


SELECT * 
FROM emp 
ORDER BY 3;


SELECT * 
FROM emp 
ORDER BY 6 desc;

'If we pass a numeric valiue inside order by clause like mentioned above its gonna sort the respective column stored here 1 is EMPNO and 2 is ENAME and 3 is JOB and respectively if we pass 2 or more values its gonna sort with respect to both values'



SELECT UPPER('abhi') as NAME,LOWER('ABHI') as name
FROM emp;


'1. Display all emp name in lower case along with job column'

SELECT LOWER(ENAME) as ENAME, JOB 
FROM emp;

'Concat:-> it is used to concatinate columns or a column with a string '
'syntax:-> concat(arg1, arg2, arg3, ...)'
'waq to concatinate name and job in emp table'

SELECT CONCAT(ENAME,' ', JOB)
FROM emp;

'waq to display following string "my name is smith and i am a salesman or a clerk "'

SELECT CONCAT('My name is ', ENAME,' and I am a ',JOB,'.')
FROM emp;

'waq to display following string "my name is smith and i am a salesman or a clerk working at dept 30"'


SELECT CONCAT('My name is ', ENAME,' and I am a ',JOB,' working at dept ',DEPTNO,'.')
FROM emp;


'SUBSTR:-> it is used to return the substring in a string'
'Syntax:-> substr(string, position, [length])'

'SUBSTR(ARG1,ARG2,ARG3)

          STR,POS,LENGTH          A B H I J I T H M A  L   L   A   D   I
                                  1 2 3 4 5 6 7 8 9 10 11 12   13  14  15  O/P-- ABHI


          SUBSTR(ABHIJITMALLADI,1,4)'

SELECT SUBSTRING('ABHIJITHMALLADI', 12,15)
FROM emp;

'LENGTH or LEN 
it is used to return the length of a string'
' length(string or column)'

'waq to display last charecter of their name from all employees'

SELECT SUBSTRING(ENAME,LEN(ENAME)-1,LEN(ENAME)) as LASTCHAR
FROM emp;


'waq to display only the first and last two characters in each name '


SELECT SUBSTRING(ENAME, 1,2) as first_, SUBSTRING(ENAME, LEN(ENAME)-1, 2) as last_
FROM emp;

'REPLACE:-> it is used to replace or update content of a string '

'syntax:-> Replace(string, search_string, replacement_string) '


'waq to replace first_char of each name with *'

SELECT REPLACE(ENAME,SUBSTRING(ENAME, 1, 1), '*')
FROM emp;

SELECT *
FROM emp;

'waq to replace deptno 10 with 20 & 20 with 10'
SELECT DEPTNO,REPLACE(DEPTNO,'10','TEMP')as _FIRST, REPLACE(DEPTNO,'20','10') AS middle,REPLACE(DEPTNO,'TEMP','20') as LAST_
FROM emp;

SELECT DEPTNO, REPLACE(REPLACE(REPLACE(DEPTNO,10,'TEMP'),20,10),'TEMP',20) AS SWAPPED_DEPTNO_10_WITH_20
FROM emp;


'waq to replace deptno 10 with 30 & 30 with 20 & 20 with 10'
'Deptno   result'
'10         30'
'30         20'
'20         10'

SELECT DEPTNO,REPLACE(REPLACE(REPLACE(DEPTNO,10,'TEMP1'),20,'TEMP2'),30,'TEMP3') AS SWAP1, REPLACE(REPLACE(REPLACE(DEPTNO,'TEMP1',30),'TEMP2',10),'TEMP3',20) AS SWAP_10TO30_30TO20_20TO10
FROM emp;




'LTRIM

It is used to remove whitespaces at the begining of the string

syntax:-> LTRIM(string)


'

Select LTRIM('Abhijith  Malladi')
FROM emp;


'RTRIM

It is used to remove whitespaces at the end of the string

syntax:-> RTRIM(string)


'

Select LEN(RTRIM('Abhijith Malladi   '))
FROM emp;


'waq to remove trailing and leading space in given string'

'   Abhijith Malladi   '



'Date functions

GETDATE:-. it is used to return system date and time.

'

SELECT GETDATE()
FROM emp;

'DATEADD

it adds time interval to the date'

'DATEADD(interval,number,date)'

SELECT DATEADD(DAY,10,GETDATE())
FROM emp;

SELECT DATEADD(DAY,365,GETDATE())
FROM emp;

'waq to display modified dateby adding month part of the date using DATEADD function'

SELECT DATEADD(MONTH,2,GETDATE())
FROM emp;

'waq to display modified dateby adding year part of the date using DATEADD function'

SELECT DATEADD(YEAR,2,GETDATE())
FROM emp;

'waq to display modified dateby subtract month part of the date using DATEADD function'

SELECT DATEADD(MONTH,-1,GETDATE())
FROM emp;

'waq to display modified dateby subtract year part of the date using DATEADD function'

SELECT DATEADD(YEAR,-2,GETDATE())
FROM emp;


'DATEDIFF()

it is used to return diff between 2 dates

syntax:-> DATEDIFF(day,start_date,end_date)'

SELECT DATEDIFF(day,DATEADD(DAY,10,GETDATE()),GETDATE())
FROM emp;


'FORMAT

it is used to format date or time and number value

syntax:->  Format(date_part,format_type)'

SELECT FORMAT(GETDATE(),'yyyy-mm-dd')
FROM emp;

'Mathematical function

Round()
it is used to round off the specified number of decimal value 
syntax:-> round(number,decimal_place)

'

SELECT ROUND(123.4567,0)
FROM emp;


'FLOOR()
IT IS USED TO ROUNDOFF A VALUE TO THE PREVIOUS INTEGER

'
Select FLOOR(123.4567), FLOOR(123.8534)
FROM emp;


'CEILING()
IT IS USED TO ROUNDOFF A VALUE TO THE NEXT INTEGER

'
Select CEILING(123.4567), CEILING(123.8534)
FROM emp;


'GROUP OR AGGREGATE FUNCTIONS OR MULTI-ROW FUNCTIONS'

'it takes group of records as input and returns single output

Group functions are of 5 types

1.MIN
2.MAX
3.COUNT
4.SUM
5.AVG

Min, max and count can take any kind of data as input
sum and avg takes only integer type of data.

the arg can be column or a value.

Group function ignores null value and returns the result

MIN:-> min group function it is used to return minimum values 

MAX:-> MAX group function it is used to return maximum values 

SUM:-> SUM group function it is used to return total SUM value 

AVG:-> returns avg value

COUNT:-> it is used to return number of records'




'waq to display minimum and maximum salary from emp table'

SELECT MIN(sal) as min,MAX(sal) as max
FROM emp;


'waq to display sum and avg salary from emp table'

SELECT SUM(sal) as total_sal, AVG(sal) as average_sal
FROM emp;

'waq to display the count of employees and count of commision '

SELECT COUNT(ENAME) as emp_count, COUNT(COMM) as commission
FROM emp;

SELECT MIN(100) as min,MAX(100) as max
FROM emp;


'waq to display min_name and max_name from emp table '

select MIN(ENAME) as min_name, MAX(ENAME) as max_name
FROM emp;

select ENAME
FROM emp
ORDER by ENAME;

select *
from emp;

'waq to display the employee details who joined first and last from employee table'

select MIN(HIREDATE) as first_joined, MAX(HIREDATE) as last_joined
FROM emp;

'Query is wrong '

SELECT *
FROM emp 
WHERE HIREDATE=MIN(HIREDATE);

'Query is wrong as because we cannot use group function in where clause'
'You cannot group function in where clause unless  it is a subquery'


SELECT *
FROM emp 
WHERE HIREDATE='1980-12-17' or HIREDATE='1987-05-23' ;