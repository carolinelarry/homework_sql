# SQL - Employee Database

## Background

I researched employees of a corporation from the 1980s and 1990s. All that I had in the database of employees from that period was six CSV files.

I designed the tables to hold data in the CSVs, imported the CSVs into a SQL database, and performed analysis on the data

#### Data Modeling

I first inspected the CSVs and sketched out an ERD of the tables. I used http://www.quickdatabasediagrams.com.

<img width="403" margin ="400" alt="Screen Shot 2021-09-08 at 2 09 48 PM" src="https://user-images.githubusercontent.com/79863465/132570375-7006a96d-087d-4f79-96a1-71294f60adf9.png">

#### Data Engineering

* I used the information I had to create a table schema for each of the six CSV files

* I then imported each CSV file into the corresponding SQL table

#### Data Analysis

Once I had my complete database, I did the following:

1. Listed the following details of each employee: employee number, last name, first name, sex, and salary

2. Listed first name, last name, and hire date for employees who were hired in 1986

3. Listed the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name

4. Listed the department of each employee with the following information: employee number, last name, first name, and department name

5. Listed first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"

6. Listed all employees in the Sales department, including their employee number, last name, first name, and department name

7. Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name

#### Pandas

Next, I did the following: 

1. Imported the SQL database into Pandas

2. Created a histogram to visualize the most common salary ranges for employees

3. Created a bar chart of average salary by title
<img width="490" alt="Screen Shot 2021-09-08 at 2 11 47 PM" src="https://user-images.githubusercontent.com/79863465/132570543-c5497450-f8ca-428a-8e93-dba3db9f6159.png">


