--Import in all the data from csv files

COPY titles
FROM '/Users/carolinelarry/gt_bootcamp/working/09-SQL/Homework/Instructions/data/titles.csv'
WITH (format csv, header);

select * from titles;

COPY employees
FROM '/Users/carolinelarry/gt_bootcamp/working/09-SQL/Homework/Instructions/data/employees.csv'
WITH (format csv, header);

select * from employees;

COPY departments
FROM '/Users/carolinelarry/gt_bootcamp/working/09-SQL/Homework/Instructions/data/departments.csv'
WITH (format csv, header);

COPY dept_manager
FROM '/Users/carolinelarry/gt_bootcamp/working/09-SQL/Homework/Instructions/data/dept_manager.csv'
WITH (format csv, header);

COPY dept_emp
FROM '/Users/carolinelarry/gt_bootcamp/working/09-SQL/Homework/Instructions/data/dept_emp.csv'
WITH (format csv, header);

COPY salaries
FROM '/Users/carolinelarry/gt_bootcamp/working/09-SQL/Homework/Instructions/data/salaries.csv'
WITH (format csv, header);


-- 1. For each employee: employee number, last name, first name, sex, and salary
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries on
employees.emp_no = salaries.emp_no;

select * from employees;

-- 2. First name, last name, and hire date for employees hired in 1986
select first_name, last_name, hire_date
from employees
where hire_date >= '1986-01-01' and hire_date < '1987-01-01';

-- 3. Manager in each department with department number, department name, manager's employee number, last name, first name
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name
from departments
inner join dept_manager on departments.dept_no = dept_manager.dept_no
inner join employees on dept_manager.emp_no = employees.emp_no;

-- 4. Department of each employee with employee number, last name, first name, department name
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begins with "B"
select employees.first_name, employees.last_name, employees.sex 
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6. List all employees in the Sales department including their employee number, last name, first name, and department name
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';

-- 7. List all employees in Sales and Development departments including employee number, last name, first name, department name
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

-- 8. In descending order, list frequency count of employee last names
select last_name, count(last_name) as "last name count"
from employees
group by last_name
order by "last name count" desc;
