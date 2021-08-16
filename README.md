# Pewlett-Hackard-Analysis
## Overview of the Analysis:

Pewlett Hackard is preparing for employees to retire and has requested data on those employees and about the positions that will be affected. The task is to create files to give to Pewlett Hackard of employee hire dates, ages and current title. The initial information given to complete the task was six seperate csv files of various employee and department information. Those files were previously downloaded and mapped out into a new database to connect the files using employee numbers and department numbers.

![EmployeeDB png](https://user-images.githubusercontent.com/86267773/129514817-ed70bf45-48ba-493c-92b1-2b2229bc1814.png)

Data types, formats and connecting keys were considered in creating new data files and formated where needed. The final product needed by Pewlett Hackard is a list of seniored employees to be considered as mentors to their juniors to take their places as the retiring employees exit the company. 


## Resources
- Data Sources
  - ![employees.csv](https://github.com/LauraHaq/Pewlett-Hackard-Analysis/blob/main/Data/employees.csv)
  - ![titles.csv](https://github.com/LauraHaq/Pewlett-Hackard-Analysis/blob/main/Data/employees.csv)
  - ![retiringment_titles.csv](https://github.com/LauraHaq/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv)
  - ![dept_emp.csv](https://github.com/LauraHaq/Pewlett-Hackard-Analysis/blob/main/Data/dept_emp.csv)
  - ![unique_titles.csv](https://github.com/LauraHaq/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv)
  - ![retiring_titles](https://user-images.githubusercontent.com/86267773/129509269-b44f9643-73bd-4cbf-bcc0-54a08b5bbc39.png)
  
- Tools
  - ![QuickDBD app](https://app.quickdatabasediagrams.com/)
  - pgAdmin4
  - PostgreSQL 

## Results
- First is to consider the number of employees versus the number of employees currenrtly employed. 
    - ![dept_emp.csv](https://github.com/LauraHaq/Pewlett-Hackard-Analysis/blob/main/Data/dept_emp.csv) has a count of 331,603 current employees listed. 
    - ![unique_titles.csv](https://github.com/LauraHaq/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv) has a count of 90,368 ready for retirment
 
- Second is to find what 90,368 positions will become open:

![retiring_titles](https://user-images.githubusercontent.com/86267773/129509269-b44f9643-73bd-4cbf-bcc0-54a08b5bbc39.png)

- Third is to find Senoir employees that can be considered to become mentors filtering data with birthdays on file of January 1, 1965 to December 31, 1965.

    - ![mentor_eligibilty.csv](https://github.com/LauraHaq/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibilty.csv) produced a list of 1,549 employees to become mentors.




Summary:
Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

The summary addresses the two questions and contains two additional queries or tables that may provide more insight. (5 pt),

With addtional time it would be effective to find which departments these employees are in to cross train?
