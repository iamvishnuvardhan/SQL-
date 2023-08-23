DDL/DML
====================================================================================================================================================================
1. How to insert multiple records in a table in sql ?

INSERT INTO employees (first_name, last_name, job_title)
VALUES
    ('John', 'Doe', 'Manager'),
    ('Jane', 'Smith', 'Analyst'),
    ('Michael', 'Johnson', 'Developer');
====================================================================================================================================================================
2. How to add additional column in a table?

ALTER TABLE contacts
ADD email VARCHAR(255);

HERE CONTACT MEANS TABLE NAME
HERE email means column_name
====================================================================================================================================================================
3. how to change the constraint in a table?

ALTER PRIMARY KEY Constraint:

-- Drop the existing primary key constraint
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;

-- Add a new primary key constraint
ALTER TABLE table_name
ADD PRIMARY KEY (new_column_list);

ALTER FOREIGN KEY Constraint:

-- Drop the existing foreign key constraint
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;

-- Add a new foreign key constraint
ALTER TABLE table_name
ADD CONSTRAINT new_constraint_name
FOREIGN KEY (column_name) REFERENCES referenced_table(referenced_column);

ALTER CHECK Constraint:

-- Drop the existing check constraint
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;

-- Add a new check constraint
ALTER TABLE table_name
ADD CONSTRAINT new_constraint_name CHECK (new_condition);
====================================================================================================================================================================
4. How to alter the column name in a table?

ALTER TABLE my_table
RENAME COLUMN old_column TO new_column;
====================================================================================================================================================================
5. How to change the table naame in sql?

Create a New Table with the Desired Name:

CREATE TABLE new_table_name AS
SELECT * FROM old_table_name;
--------------------------------------------------
Copy Data:

INSERT INTO new_table_name
SELECT * FROM old_table_name;
--------------------------------------------------
Drop the Old Table:

DROP TABLE old_table_name;
====================================================================================================================================================================
6. How to update a partiular value in a table

UPDATE tasks
SET status = 'Completed'
WHERE task_id = 123;

====================================================================================================================================================================































