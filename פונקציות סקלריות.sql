--פונקציות סקלריות
--פונקציות מתמטיות
select ceiling(8.3)
select floor(8.3)
select round(8.354,2)

--פונקציות לטיפול במחרוזות(טקסטים)
select ASCII('A')
select CHAR(97)
--select CHARINDEX('KINNERET','R')
SELECT RIGHT('KINNERET',3)
SELECT LEFT('KINNERET',3)
SELECT LEN('KINNE RET')
SELECT LEN(RTRIM('  KINNERET    '))
SELECT LEN(LTRIM('  KINNERET    K'))
SELECT REPLACE('KINNERET','NN','AA')
SELECT REVERSE('KINNERET')
SELECT SUBSTRING('KINNERET',2,3)
SELECT LOWER('KINNERET')
SELECT UPPER('kinneret')


