# SQL-Challenge

This project deals with SQL databases. Creates a database in Postgres pgAdmin and imports several csv tables stored in /data folder. Each table the SQL data types are defined, primary keys and 
The visual representation of the database releations ERD (entity relationship diagrams) are created using free source http://www.quickdatabasediagrams.com.

The project incorporates three aspect of the data: 

    Data Modeling
    Data Engineering
    Data Analysis

consists in creating a SQL database in Postgres design the tables that hold the CSV files with information regarding employees of some company from 1980 to 1990. 

The first step is DATA MODELING : inspecting the files scketching an ERD of the tables using quickDatabasediagrams. 

DATA ENGINEERING: with the ERD, the table schema for each table is created, specifying data types, primary keys, foreign keys, and other constraints.  

DATA ANALYSIS : Once thr database is built , the analysis is done querying information such as : 
    1 each employee a list containing: employee number, last name, first name, gender, and salary.
    2 list of employees hired in 1986
    3 for each department manager: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
    4 .. 

The last step  imports the SQL databasre into Pandas using SQLAlchemy and do further analysis in Python 