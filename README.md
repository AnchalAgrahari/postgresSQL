# PostgreSQL — Quick Reference Guide

## Database

A **database** is an organized collection of structured data that can be easily accessed, managed, and updated.

**A Database includes:**

* A collection of data organized in tables.
* A method to manipulate and access the data efficiently.

### Common Operations

| Operation   | Description                             |
| ----------- | --------------------------------------- |
| **Create**  | Make a new database or table.           |
| **Connect** | Access a database instance.             |
| **List**    | View all databases or tables.           |
| **Drop**    | Permanently delete a database or table. |

```sql
-- Create a new database
CREATE DATABASE school;

-- Connect to it
\c school

-- List databases
\l

-- Drop database
DROP DATABASE school;
```

---

## DBMS vs RDBMS

* **DBMS (Database Management System):** Stores data in files without relationships between them.
* **RDBMS (Relational Database Management System):** Stores data in tables with relationships (rows and columns).
  → PostgreSQL is an **RDBMS**.

---

## CRUD Operations

CRUD refers to the four basic actions on database records.

| Action     | SQL Keyword | Example                                         |
| ---------- | ----------- | ----------------------------------------------- |
| **Create** | `INSERT`    | `INSERT INTO student VALUES (1, 'Anchal', 20);` |
| **Read**   | `SELECT`    | `SELECT * FROM student;`                        |
| **Update** | `UPDATE`    | `UPDATE student SET age = 21 WHERE id = 1;`     |
| **Delete** | `DELETE`    | `DELETE FROM student WHERE id = 1;`             |

---

## Data Types

**Data types** define what kind of data can be stored in a column. Choosing the right one ensures accuracy and efficiency.

### Common Types

| Category      | Example Types                                 |
| ------------- | --------------------------------------------- |
| **Numeric**   | `INT`, `DECIMAL`, `FLOAT`, `DOUBLE PRECISION` |
| **String**    | `CHAR`, `VARCHAR`, `TEXT`                     |
| **Date/Time** | `DATE`, `TIME`, `TIMESTAMP`                   |
| **Boolean**   | `TRUE`, `FALSE`                               |

```sql
CREATE TABLE example (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    is_active BOOLEAN DEFAULT TRUE,
    joining_date DATE DEFAULT CURRENT_DATE
);
```

---

## Constraints

A **constraint** ensures that data in a table follows specific rules — improving **data integrity** and **accuracy**.

### Common Types

#### Primary Key

Uniquely identifies each record. Cannot be `NULL` or duplicate.

```sql
CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);
```

#### NOT NULL

Ensures a column cannot store `NULL` values.

```sql
ALTER TABLE student ADD COLUMN age INT NOT NULL;
```

#### DEFAULT

Sets a value automatically if none is provided.

```sql
ALTER TABLE student ADD COLUMN created_at DATE DEFAULT CURRENT_DATE;
```

#### AUTO INCREMENT

In PostgreSQL, use `SERIAL` for auto-incremented IDs.

```sql
id SERIAL PRIMARY KEY
```

#### CHECK Constraint

Adds validation logic for a column.

```sql
ALTER TABLE student
ADD CONSTRAINT valid_age CHECK (age >= 18);
```

---

## SQL Clauses

| Clause       | Description        | Example                                         |
| ------------ | ------------------ | ----------------------------------------------- |
| **WHERE**    | Filters records    | `SELECT * FROM student WHERE age > 18;`         |
| **DISTINCT** | Removes duplicates | `SELECT DISTINCT name FROM student;`            |
| **ORDER BY** | Sorts results      | `SELECT * FROM student ORDER BY age DESC;`      |
| **LIMIT**    | Limits output rows | `SELECT * FROM student LIMIT 5;`                |
| **LIKE**     | Pattern matching   | `SELECT * FROM student WHERE name LIKE 'A%';`   |
| **GROUP BY** | Aggregates data    | `SELECT dept, COUNT(*) FROM emp GROUP BY dept;` |

---

## Logical Operators

Used in filtering conditions (`WHERE`, `HAVING`, etc.)

| Operator    | Example                                     |
| ----------- | ------------------------------------------- |
| **AND**     | `WHERE age > 18 AND city = 'Lucknow';`      |
| **OR**      | `WHERE city = 'Delhi' OR city = 'Lucknow';` |
| **IN**      | `WHERE id IN (1,2,3);`                      |
| **NOT IN**  | `WHERE dept NOT IN ('HR','IT');`            |
| **BETWEEN** | `WHERE salary BETWEEN 20000 AND 40000;`     |

---

## Aggregate Functions

Used with `GROUP BY` for calculations.

| Function  | Description    |
| --------- | -------------- |
| `COUNT()` | Counts rows    |
| `SUM()`   | Adds up values |
| `AVG()`   | Average value  |
| `MIN()`   | Minimum value  |
| `MAX()`   | Maximum value  |

```sql
SELECT dept, AVG(salary) AS avg_salary
FROM employee
GROUP BY dept;
```

---

## String Functions

| Function              | Example                     | Description              |
| --------------------- | --------------------------- | ------------------------ |
| `CONCAT()`            | `CONCAT(fname, ' ', lname)` | Joins strings            |
| `SUBSTR()`            | `SUBSTR(name, 1, 3)`        | Extract substring        |
| `LENGTH()`            | `LENGTH(name)`              | Counts characters        |
| `UPPER()` / `LOWER()` | `UPPER(name)`               | Changes case             |
| `TRIM()`              | `TRIM(' hello ')`           | Removes spaces           |
| `REPLACE()`           | `REPLACE(name, 'a', '@')`   | Replaces characters      |
| `POSITION()`          | `POSITION('a' IN name)`     | Finds index of substring |

---

## Alter & Modify Constraints

```sql
-- Add a column
ALTER TABLE student ADD COLUMN contact VARCHAR(15);

-- Rename a column
ALTER TABLE student RENAME COLUMN contact TO phone;

-- Drop a column
ALTER TABLE student DROP COLUMN phone;
```

---

## Relationships

Define how data in one table relates to another.

| Type             | Description                                                      |
| ---------------- | ---------------------------------------------------------------- |
| **One-to-One**   | Each record in A links to one record in B                        |
| **One-to-Many**  | One record in A links to multiple in B                           |
| **Many-to-Many** | Multiple records in A link to multiple in B (via junction table) |

```sql
-- One-to-Many Example
CREATE TABLE customer (
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    cust_id INT REFERENCES customer(cust_id),
    order_date DATE DEFAULT CURRENT_DATE
);
```

---

## Joins

Used to combine rows from multiple tables.

| Type           | Description                              |
| -------------- | ---------------------------------------- |
| **INNER JOIN** | Returns matching rows from both tables   |
| **LEFT JOIN**  | All rows from left + matching from right |
| **RIGHT JOIN** | All rows from right + matching from left |
| **CROSS JOIN** | Cartesian product (all combinations)     |

```sql
-- INNER JOIN
SELECT c.cust_name, o.order_date
FROM customer c
INNER JOIN orders o ON c.cust_id = o.cust_id;
```
