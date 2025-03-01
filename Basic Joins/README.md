# Description of questions for section 'Basic Joins' 

## 1. Replace Employee ID With The Unique Identifier [(link)](https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50) 
![Easy](https://img.shields.io/badge/difficulty-easy-green)

Table: `Employees`
```
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
+---------------+---------+

id is the primary key (column with unique values) for this table.
Each row of this table contains the id and the name of an employee in a company.
```

Table: `EmployeeUNI`
```
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| unique_id     | int     |
+---------------+---------+

(id, unique_id) is the primary key (combination of columns with unique values) for this table.
Each row of this table contains the id and the corresponding unique id of an employee in the company.
```

The goal is to show the **unique ID** of each user. If the user does not have a unique ID, show `null`. The table can be returned in **any** order.  

Solution file: `solution1.sql` 

--- 

## 2. Product Sales Analysis I [(link)](https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50) 
![Easy](https://img.shields.io/badge/difficulty-easy-green) 

Table: `Sales`
```
+-------------+-------+
| Column Name | Type  |
+-------------+-------+
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |
+-------------+-------+

(sale_id, year) is the primary key (combination of columns with unique values) of this table.
product_id is a foreign key (reference column) to Product table.
Each row of this table shows a sale on the product product_id in a certain year.
Note that the price is per unit.
```

Table: `Product`
```
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |
+--------------+---------+

product_id is the primary key (column with unique values) of this table.
Each row of this table indicates the product name of each product.
```

The goal is to report the `product_name`, `year`, and `price` for each `sale_id` in the `Sales` table. The resulting table can be returned in **any order**.

Solution file: `solution2.sql` 

--- 

# 3. Customer Who Visited but Did Not Make Any Transactions [(link)](https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50) 
![Easy](https://img.shields.io/badge/difficulty-easy-green) 

Table: `Visits`
```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| visit_id    | int     |
| customer_id | int     |
+-------------+---------+

visit_id is the column with unique values for this table.
This table contains information about the customers who visited the mall.
```

Table: `Transactions`
```
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| transaction_id | int     |
| visit_id       | int     |
| amount         | int     |
+----------------+---------+

transaction_id is column with unique values for this table.
This table contains information about the transactions made during the visit_id.
```

The goal is to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits. The resulting table can be returned in **any order**. 

Solution file: `solution3.sql` 

--- 

# 4. Rising Temperature [(link)](https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50) 
![Easy](https://img.shields.io/badge/difficulty-easy-green) 

Table: `Weather`
```
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+

id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.
```

The goal is to find all dates' `id` with higher temperatures compared to its previous dates (yesterday). The resulting table can be returned in **any order**.

Solution file: `solution4.sql` 

--- 

# 5. Average Time of Process per Machine [(link)](https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50) 
![Easy](https://img.shields.io/badge/difficulty-easy-green) 

Table: `Activity`
```
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| machine_id     | int     |
| process_id     | int     |
| activity_type  | enum    |
| timestamp      | float   |
+----------------+---------+

The table shows the user activities for a factory website.
(machine_id, process_id, activity_type) is the primary key (combination of columns with unique values) of this table.
machine_id is the ID of a machine.
process_id is the ID of a process running on the machine with ID machine_id.
activity_type is an ENUM (category) of type ('start', 'end').
timestamp is a float representing the current time in seconds.
'start' means the machine starts the process at the given timestamp and 'end' means the machine ends the process at the given timestamp.
The 'start' timestamp will always be before the 'end' timestamp for every (machine_id, process_id) pair.
It is guaranteed that each (machine_id, process_id) pair has a 'start' and 'end' timestamp.
```

There is a factory website that has several machines each running the **same number of processes**. Write a solution to find the average time each machine takes to complete a process.

The time to complete a process is the `'end' timestamp` minus the `'start' timestamp`. The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.

The resulting table should have the `machine_id` along with the **average time** as `processing_time`, which should be **rounded to 3 decimal places**.

Return the result table in **any order**.

Solution file: `solution5.sql` 

--- 

# 6. Employee Bonus [(link)](https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50) 
![Easy](https://img.shields.io/badge/difficulty-easy-green) 

Table: `Employee`
```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |
+-------------+---------+

empId is the column with unique values for this table.
Each row of this table indicates the name and the ID of an employee in addition to their salary and the id of their manager.
```

Table: `Bonus`
```
+-------------+------+
| Column Name | Type |
+-------------+------+
| empId       | int  |
| bonus       | int  |
+-------------+------+

empId is the column of unique values for this table.
empId is a foreign key (reference column) to empId from the Employee table.
Each row of this table contains the id of an employee and their respective bonus.
```

The goal is to report the name and bonus amount of each employee with a bonus **less than** `1000`. The resulting table can be returned in **any order**.

Solution file: `solution6.sql` 

--- 

# 7. Students and Examinations [(link)](https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50) 
![Easy](https://img.shields.io/badge/difficulty-easy-green) 

Table: `Students`
```
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| student_id    | int     |
| student_name  | varchar |
+---------------+---------+

student_id is the primary key (column with unique values) for this table.
Each row of this table contains the ID and the name of one student in the school.
```

Table: `Subjects`
```
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| subject_name | varchar |
+--------------+---------+

subject_name is the primary key (column with unique values) for this table.
Each row of this table contains the name of one subject in the school.
``` 

Table: `Examinations`
```
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| student_id   | int     |
| subject_name | varchar |
+--------------+---------+ 

There is no primary key (column with unique values) for this table. It may contain duplicates.
Each student from the Students table takes every course from the Subjects table.
Each row of this table indicates that a student with ID student_id attended the exam of subject_name.
```

The goal is to find the number of times each student attended each exam. The resulting table should be ordered by `student_id` and `subject_name`.

**Hint:** Every student should have an entry for every subject, even if they did not attend the exam. 

Solution file: `solution7.sql` 

--- 

## Acknowledgements

The content in this repository includes excerpts from problem descriptions provided by [LeetCode](https://leetcode.com/). All credits for the original content go to LeetCode.
