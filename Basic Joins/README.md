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

## Acknowledgements

The content in this repository includes excerpts from problem descriptions provided by [LeetCode](https://leetcode.com/). All credits for the original content go to LeetCode.
