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
  - ![retiring_titles](https://github.com/LauraHaq/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv)
  
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

- Also, to find which departments those positions are located.

![dept_affected](https://user-images.githubusercontent.com/86267773/129521156-323525b5-2616-496e-8679-9fbb5f76b9ce.png)


- Finally, is to find Senoir employees that can be considered to become mentors filtering data with birthdays on file of January 1, 1965 to December 31, 1965.

    - ![mentor_eligibilty.csv](https://github.com/LauraHaq/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibilty.csv) produced a list of 1,549 employees to become mentors.

## Summary
This analysis was able to show Pelwett Hackard how to prepare for a large number of employees retiring in the near future. In fact 27.3% of their workforce is up for retirement and nearly two-thirds are in senior positons. A senoir mentor program very much is needed to prepare their juniors to take their positions. A list of those mentors are provided and gives a count of 1,549 possible mentors. With almost 60,000 in senior positions the 14,222 Engineers and 12,243 regular staff will be able to take up less than half of the positions. Outside hiring will need to be considered. Also, outside education will also need to be considered as 1,549 is not enough to make a large impact on a large workforce. Addition information that I have already added is to look at which departments those soon to be retirees will be coming from. Focus will be needed in the Development and Production departments as over 43,000 positions will be be vacant. Another look will be needed to see of those who are juniors and see who are ready for promotions. 
