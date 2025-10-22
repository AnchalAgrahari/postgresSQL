# Postgres SQL
## Database : 
* An organised colllection of data.
* A method to manipulate and access the data.
creating, connect, listing, droping
- DBMS : database management system.
- RDBMS : Relational database management system (in a tabuler form).
### CURD Operation : 
create table, read table, update table, delete table

### DataType :
 A Attribute that specifies the type of data in a column of our database

### Type of DataType 
1. Numeric : INT, DOUBLE, FLOAT, DECIMAL
2. String : VARCHAR
3. Date : DATE
4. Boolean : TRUE, FALSE


### Constrain : 
In postgres SQL  constrain is a rule applied to a cloumn

### TYPE 
* Primary Key -:
The PRIMARY KEY constrain uniquely identifies each record in a table
Primary key must contain Unique values, and connot conatin NULL values.
A table can have only ONE primary key
* NOT NULL -:
null valus is not allowed in the column
* DEFAULT value -:
if nothing value is for the column is will save the default value insted of null 
* AUTO_INCREMENT 
you do not have to give value for column by using **SERIAL** is will give the unique value for the column

### SQL Clauses 
- WHERE
- DISTINCT 
- ORDER BY
- LIMIT
- LIKE
- GROUP BY
### **logical operator** 
- AND
- OR
- IN 
- NOT IN
- BETWEEN
### **Aggeregated Function**
- COUNT
- SUM
- MIN
- AVG 
- MAX
## **String Function** 
- CONCAT, CONCAT_WS
- SUBSTR
- LEFT, RIGHT
- LENGTH
- UPPER, LOWER
- TRIM, LTRIM,RTRIM
* REPLACR
* POSITION 
* STRING_AGG
