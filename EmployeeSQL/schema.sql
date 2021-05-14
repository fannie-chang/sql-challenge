-- Data Engineering (create table for each entity)

create table departments(
	dept_no varchar(10) primary key,
	dept_name varchar(30) not null
);



create table employees(
	emp_no int not null primary key, 
	birth_date date not null,
	first_name varchar(30),
	last_name varchar(30),
	gender varchar(5),
	hire_date date not null
);



create table dept_emp(
	emp_no int not null,
	dept_no varchar(10),
	from_date date not null,
	to_date date not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)

);

create table dept_manager(
	dept_no varchar(10),
	emp_no int not null,
	from_date date not null,
	to_date date not null,
	foreign key(dept_no) references departments(dept_no),
	foreign key(emp_no) references employees(emp_no)
);


create table salaries(
	emp_no int not null,
	salary int not null,
	from_date date not null,
	to_date date not null,
	foreign key(emp_no) references employees(emp_no)
);

create table titles(
	emp_no int not null,
	title varchar(30),
	from_date date not null,
	to_date date not null,
	foreign key(emp_no)references employees(emp_no)
);

