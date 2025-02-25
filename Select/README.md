# Description of questions for section 'Select' 

## 1. Recyclable and Low Fat Products [(link)](https://leetcode.com/problems/recyclable-and-low-fat-products/?envType=study-plan-v2&envId=top-sql-50) 
![Easy](https://img.shields.io/badge/difficulty-easy-green)

Table: `Products`
```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+

product_id is the primary key (column with unique values) for this table.
low_fats is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
recyclable is an ENUM (category) of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.
```

The goal is to find the ids of products that are both low fat and recyclable. Result table could be in **any order.** 

Solution file: `solution1.sql` 

--- 

## 2. Find Customer Referee [(link)](https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50) 
![Easy](https://img.shields.io/badge/difficulty-easy-green) 

Table: `Customer`
```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+

In SQL, id is the primary key column for this table.
Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
```

The goal is to find the names of the customer that are **not referred by** the customer with `id = 2`. The table could be returned in any order.. 

Solution file: `solution2.sql` 

--- 

## 3. Big Countries [(link)](https://leetcode.com/problems/big-countries/description/?envType=study-plan-v2&envId=top-sql-50) 
![Easy](https://img.shields.io/badge/difficulty-easy-green) 

Table: `World` 
```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |
+-------------+---------+

name is the primary key (column with unique values) for this table.
Each row of this table gives information about the name of a country, the continent to which it belongs, its area, the population, and its GDP value.
``` 

A country is **big** if: 
- It has an area of at least three million square kilometres, or 
- It has a population of at least twenty-five million people. 

The goal is to get the name, population, and area of the **big** countries. The result could be returned in any order. 

Solution file: `solution3.sql` 

--- 

## 4. Article Views I [(link)](https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50)
![Easy](https://img.shields.io/badge/difficulty-easy-green) 

Table: `Views` 
```
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| article_id    | int     |
| author_id     | int     |
| viewer_id     | int     |
| view_date     | date    |
+---------------+---------+

There is no primary key (column with unique values) for this table, the table may have duplicate rows.
Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
Note that equal author_id and viewer_id indicate the same person.
```

The goal is to find all the authors that viewed at least one of their own articles. The table returned should be in **ascending** order by `id`. 

**Hint:** An author could view his/her article more than once. 

Solution file: `solution4.sql` 

--- 

## 5. Invalid Tweets [(link)](https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50) 
![Easy](https://img.shields.io/badge/difficulty-easy-green) 

Table: `Tweets` 
```
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| tweet_id       | int     |
| content        | varchar |
+----------------+---------+

tweet_id is the primary key (column with unique values) for this table.
content consists of characters on an American Keyboard, and no other special characters.
This table contains all the tweets in a social media app.
```

The goal is to find the IDs of invalid tweets. A tweet is invalid if the number of characters in the tweet is *strictly greater than** `15`. The resultant table can be returned in **any order**. 

Solution file: `solution5.sql` 

## Acknowledgements

The content in this repository includes excerpts from problem descriptions provided by [LeetCode](https://leetcode.com/). All credits for the original content go to LeetCode.
