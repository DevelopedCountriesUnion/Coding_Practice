/*
From LeetCode  175. Combine Two Tables ,Easy
Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| PersonId    | int     |
| FirstName   | varchar |
| LastName    | varchar |
+-------------+---------+
PersonId is the primary key column for this table.
Table: Address

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| AddressId   | int     |
| PersonId    | int     |
| City        | varchar |
| State       | varchar |
+-------------+---------+
AddressId is the primary key column for this table.
 

Write a SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people:

FirstName, LastName, City, State

=============================================================================================================
Since the PersonId in table Address is the foreign key of table Person, we can join this two table to get the address information of a person.
Considering there might not be an address information for every person, we should use outer join instead of the default inner join.

*/
select FirstName, LastName, City, State
from Person 
left join Address
on Person.PersonId = Address.PersonId;
