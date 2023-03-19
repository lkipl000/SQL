--  Name: Leonard Kiplagat  --

--  Query Editor Features  --

USE [Leo]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 3/18/2023 8:31:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee](
	[empid] [int] NULL,
	[empname] [varchar](50) NULL,
	[deptid] [varchar](50) NULL,
	[salary] [float] NULL,
	[mgrid] [int] NULL
) ON [PRIMARY]
GO

USE [Leo]
GO

/****** Object:  Table [dbo].[emp]    Script Date: 3/18/2023 8:35:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[emp](
	[empid] [int] NULL,
	[empname] [varchar](50) NULL,
	[deptid] [varchar](50) NULL
) ON [PRIMARY]
GO

USE [Leo]
GO

/****** Object:  Table [dbo].[dept]    Script Date: 3/18/2023 8:39:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dept](
	[empid] [int] NULL,
	[deptname] [varchar](50) NULL,
	[deptid] [varchar](50) NULL
) ON [PRIMARY]
GO

USE [Leo]
GO

/****** Object:  Table [dbo].[Phone]    Script Date: 3/18/2023 8:40:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Phone](
	[empid] [int] NULL,
	[phnumber] [varchar](50) NULL
) ON [PRIMARY]
GO

INSERT INTO Employee (empid, empname, deptid, salary, mgrid)
VALUES  (1, 'John Doe', '04', 50000, 2),
		(2, 'Jane Smith', '01', 60000, 3),
		(3, 'Bob Johnson', '05', 70000, 4),
		(4, 'Mary Adams', '03', 80000, 5),
		(5, 'David Lee', '02', 90000, 6),
		(6, 'Emily Chen', '04', 55000, 2),
		(7, 'Mark Davis', '01', 65000, 3),
		(8, 'Rachel Kim', '05', 75000, 4),
		(9, 'Tom Johnson', '03', 85000, 5),
		(10, 'Samantha Lee', '02', 95000, 6);

INSERT INTO emp (empid, empname, deptid)
VALUES  (1, 'John Doe', '04'),
	    (2, 'Jane Smith', '01'),
		(3, 'Bob Johnson', '05'),
		(4, 'Mary Adams', '03'),
		(5, 'David Lee', '02'),
		(6, 'Emily Chen', '04'),
		(7, 'Mark Davis', '01'),
		(8, 'Rachel Kim', '05'),
		(9, 'Tom Johnson', '03'),
		(10, 'Samantha Lee', '02');

INSERT INTO dept (empid, deptname, deptid) 
VALUES  (1, 'Marketing', '04'),
	    (2, 'Sales', '01'),
	    (3, 'Finance', '05'),
	    (4, 'Human Resources', '03'),
	    (5, 'Information Technology', '02'),
	    (6, 'Marketing', '04'),
	    (7, 'Sales', '01'),
	    (8, 'Finance', '05'),
	    (9, 'Human Resources', '03'),
	    (10, 'Information Technology', '02');

INSERT INTO Phone (empid, phnumber) 
VALUES  (1, '123-456-7890'),
        (2, '234-567-8901'),
        (3, '345-678-9012'),
        (4, '456-789-0123'),
        (5, '567-890-1234'),
        (6, '678-901-2345'),
        (7, '789-0123-456'),
        (8, '890-1234-567'),
        (9, '901-234-5678'),
        (10, '012-345-6789');

/*
4) 
	a. Retrieve all records from Employee table
*/

SELECT	*
FROM	[dbo].[Employee]


/*
	b. Retrieve all records from Emp table
*/

SELECT	*
FROM	[dbo].[emp]

/*
	c. Retrieve all records from dept table
*/

SELECT	*
FROM	[dbo].[dept]

/*
	d. Retrieve all columns from the emp table where first name = Ali
*/

SELECT	*	
FROM	emp
WHERE	empname = 'David Lee';

/*
	e. Retrieve empname and Salary from the Employee table where Salary is greater than $30,000
*/

SELECT	empname, Salary 
FROM	Employee 
WHERE	Salary > 80000;

/*
	f. Find the deptname of deptid 1
*/

SELECT	deptname
FROM	dept
WHERE	deptid = 1;

/*
	g. Select all empid’s from Employee table where mgrid = 5
*/

SELECT	empid,Mgrid 
FROM	Employee 
WHERE	Mgrid = 5;

/*
	h. Select all empid’s from Phone table where employee does not have a phone number
*/

SELECT	empid, phnumber
FROM	Phone
WHERE	phnumber IS NULL;

/*

                        -- END --
