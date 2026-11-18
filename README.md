# MySQL-DDL-Commands-and-Constraints

**Project Overview**

This project focuses on practising **Data Definition Language (DDL) commands and SQL Constraints** using MySQL.
The objective is to understand how to create and manage databases and tables, modify table structures, and apply constraints to maintain data accuracy and integrity.
The project uses an Employee Database consisting of three tables: Departments, Location, and Employees.

**Objectives**

- Understand and implement DDL commands in MySQL.

- Create databases and tables using SQL.

- Modify table structures using ALTER.

- Rename tables using RENAME.

- Remove all records using TRUNCATE.

- Delete tables and databases using DROP.

- Implement SQL constraints to maintain data integrity.

- Establish relationships between tables using Primary Keys and Foreign Keys.

**Implementation**

1. Created the Employee database.

2. Created Departments, Location and Employees tables.

3. Performed table alterations using ALTER commands.

4. Renamed tables using RENAME.

5. Used TRUNCATE to remove table records.

6. Used DROP to delete tables and databases.

7. Recreated the database with appropriate constraints.

8. Inserted sample records into all three tables.

9. Executed SELECT queries to verify the inserted records.

10. Tested constraints using invalid and duplicate entries.

**Table Relationships**

- Departments → Employees: department_id

- Location → Employees: location_id

Foreign Keys ensure that employee records reference existing departments and locations.

**Conclusion**

This assignment helped to build a foundation in MySQL database management and understand how DDL commands and constraints are used to create structured relational databases.
