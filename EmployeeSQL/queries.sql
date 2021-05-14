-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select e.emp_no as "Employee Number", e.last_name as "Last Name" ,e.first_name as "First Name", e.gender as "Sex", s.salary as "Salary"
from employees e
join salaries s
on e.emp_no = s.emp_no
order by "Employee Number";


-- 2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name as "First Name", last_name as "Last Name" ,hire_date as "Hire Date"
from employees 
where date_part('year', hire_date)= 1986
order by hire_date;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


select m.dept_no as "Department Number", m.emp_no as "Employee Number", d.dept_name as "Department Name", e.last_name as "Last Name" ,e.first_name as "First Name"
from dept_manager m
join departments d
on m.dept_no = d.dept_no
join employees e
on m.emp_no = e.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select e.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", d.dept_name as "Department Name"
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join departments d
on d.dept_no = de.dept_no
order by "Employee Number";

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name as "First Name", last_name as "Last Name" , gender as "Sex"
from employees 
where first_name = 'Hercules' and last_name like 'B%'
order by "Last Name";

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select e.emp_no as "Employee Number" , e.last_name as "Last Name", e.first_name as "First Name", d.dept_name as "Department Name"
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join departments d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales'
order by "Employee Number";

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no as "Employee Number" , e.last_name as "Last Name", e.first_name as "First Name", d.dept_name as "Department Name"
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join departments d
on d.dept_no = de.dept_no
where d.dept_name in ('Sales' , 'Development')
order by "Employee Number";

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name as "Last Name", count(last_name) as "Frequency Count"
from employees
group by last_name
order by "Frequency Count" desc;



