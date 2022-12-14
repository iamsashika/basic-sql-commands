/*--------------------------------------------------------------------
                    Comments in MYSQL
--------------------------------------------------------------------*/

--Single Line Comments
    #   This comment continues to the end of line
    --  This comment continues to the end of line
       
--Inline Comments
    SELECT * FROM /* This is a inline comment*/ students;

--Multi Line comments
    /*  multiple 
        line 
        comments  */       


/*--------------------------------------------------------------------
                    Database Related Commands
--------------------------------------------------------------------*/

-- Show databases 
    SHOW DATABASES;

-- Select a database to work with
    USE database_name;

-- Create database
    CREATE DATABASE database_name;

-- Drop Database
    DROP DATABASE database_name;

-- Rename Database
    #No Commands


/*--------------------------------------------------------------------
                    Table Related Commands
--------------------------------------------------------------------*/

-- Show Tables
    SHOW TABLES;

-- CREATE TABLE 
   
    -- Simple Table with NO constraints
        CREATE TABLE table_name (
            attribute_name_1 INT,
            attribute_name_2 VARCHAR,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR        
        );

    -- Tables with constraints
    
    /*  
          Database Constraints
            [#] PRIMARY KEY
            [#] FOREIGN KEY
            [#] UNIQUE KEY
            [#] CHECK
            [#] NOT NULL
            [#] DEFAULT
    */

    -- With PRIMARY KEY constraints
        -- Method 01
            CREATE TABLE table_name (
                attribute_name_1 INT PRIMARY KEY,
                attribute_name_2 VARCHAR,
                attribute_name_3 DATE,
                attribute_name_4 VARCHAR        
            );

        -- Method 2
            CREATE TABLE table_name (
                attribute_name_1 INT,
                attribute_name_2 VARCHAR,
                attribute_name_3 DATE,
                attribute_name_4 VARCHAR,
                PRIMARY KEY(attribute_name_1)        
            );

    -- With Composite PRIMARY KEY constraints 
        CREATE TABLE table_name (
            attribute_name_1 INT,
            attribute_name_2 VARCHAR,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR,
            PRIMARY KEY(attribute_name_2, attribute_name_3)        
        );

    -- With FOREIGN KEY constraints 
        CREATE TABLE table_1 (
            tb_1_pk INT,
            attribute_name_2 VARCHAR,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR,
            tb_2_pk VARCHAR,
            PRIMARY KEY(tb_1_pk), 
            FOREIGN KEY(tb_2_pk)  REFERENCES table_2(tb_2_pk)    
        );

    -- With UNIQUE constraints 
        CREATE TABLE table_1 (
            attribute_name_1 INT UNIQUE,
            attribute_name_2 VARCHAR,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR,
        );

    -- Wth CHECK constraints
        
        -- Method 1        
            CREATE TABLE table_1 (
                attribute_name_1 INT CHECK (attribute_name_1 > 50),
                attribute_name_2 VARCHAR,
                attribute_name_3 DATE,
                attribute_name_4 VARCHAR,
            );

        -- Method 2
            CREATE TABLE table_1 (
                attribute_name_1 INT,
                attribute_name_2 VARCHAR,
                attribute_name_3 DATE,
                attribute_name_4 VARCHAR,
                CHECK (attribute_name_1 > 50)
            );

    -- Create Table - With NOT NULL constraints 
        CREATE TABLE table_1 (
            attribute_name_1 INT,
            attribute_name_2 VARCHAR NOT NULL,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR,
        );

    -- Create Table - With DEFAULT constraints 
        CREATE TABLE table_1 (
            attribute_name_1 INT,
            attribute_name_2 VARCHAR DEFAULT defaul_value,
            attribute_name_3 DATE,
            attribute_name_4 VARCHAR,
        );
    
-- Rename Table
    RENAME old_table_name TO new_table_name;


--ALTER TABLE 

    -- Add single column
        ALTER TABLE table_name 
            ADD new_attribute_name INT;

        ALTER TABLE table_name 
            ADD new_attribute_name INT NOT NULL;

    -- Add multiple columns
        ALTER TABLE table_name 
            ADD new_attribute_name_1 INT,
            ADD new_attribute_name_2 INT,
            ADD new_attribute_name_3 INT;
    
    -- DROP COLUMN
        
        # Single Column
            ALTER TABLE table_name 
                DROP COLUMN attribute_name;

        # Multiple Column
            ALTER TABLE table_name 
                DROP COLUMN attribute_name_1,
                DROP COLUMN attribute_name_2,
                DROP COLUMN attribute_name_3;

    --Modify ColumnData Type

        # Single Column
            ALTER TABLE table_name 
                MODIFY attribute_name VARCHAR NOT NULL;

        # Multiple Column
            ALTER TABLE table_name 
                MODIFY attribute_name_1 INT NOT NULL,
                MODIFY attribute_name_2 INT NOT NULL,
                MODIFY attribute_name_3 INT NOT NULL;


    -- Modify Column - Column Name
        
        #CHANGE
            ALTER TABLE table_name
                CHANGE COLUMN old_attribute_name new_attribute_name VARCHAR();

            ALTER TABLE table_name
                CHANGE COLUMN old_attribute_name_1 new_attribute_name_1 VARCHAR(),
                CHANGE COLUMN old_attribute_name_2 new_attribute_name_2 VARCHAR(),
                CHANGE COLUMN old_attribute_name_3 new_attribute_name_3 VARCHAR();

        #RENAME
            ALTER TABLE table_name
                RENAME COLUMN old_attribute_name TO new_attribute_name;
            
            ALTER TABLE table_name
                RENAME COLUMN old_attribute_name_1 TO new_attribute_name_1,
                RENAME COLUMN old_attribute_name_2 TO new_attribute_name_2,
                RENAME COLUMN old_attribute_name_3 TO new_attribute_name_3;


    -- ADD CONSTRAINTS
        
        --PRIMARY KEY
            -- Method 1
             ALTER TABLE table_name
                ADD PRIMARY KEY(attribute_name_1, attribute_name_2);
          
            -- Method 2
              ALTER TABLE table_name
                ADD CONSTRAINT /*constraint_name*/ PRIMARY KEY(attribute_name_1);     
        
        --PRIMARY KEY
            ALTER TABLE table_name
                ADD CONSTRAINT PRIMARY KEY(attribute_name_1, attribute_name_2);

        -- UNIQUE
            ALTER TABLE table_name
                ADD CONSTRAINT /*constraint_name*/ UNIQUE(attribute_name_1);
        
        -- CHECK
            ALTER TABLE table_name
                ADD CONSTRAINT CHECK(attribute_name_1 > 100);

        -- NOT NULL
            ALTER TABLE table_name
                ADD CONSTRAINT /*constraint_name*/ NOT NULL(attribute_name_1);

        -- FORIGEN KEY
            -- Method 1    
            ALTER TABLE table_name
                ADD FOREIGN KEY (column_name) 
                REFERENCES other_table_name(other_table_attribute);
            
            -- Method 2    
            ALTER TABLE table_name
                ADD CONSTRAINT /*constraint_name*/ FOREIGN KEY (column_name) 
                REFERENCES other_table_name(other_table_attribute);


    -- DROP CONSTRAINTS
        
        -- DROP PRIMARY KEY
            ALTER TABLE table_name
                DROP PRIMARY KEY;
    
        
        -- DROP FOREIGN KEY
            ALTER TABLE table_name
                DROP FOREIGN KEY constraint_name;
            
            ALTER TABLE table_name DROP INDEX  id_name_fk;

        -- DROP UNIQUE
            ALTER TABLE table-name
                DROP UNIQUE constraint-name


/*--------------------------------------------------------------------
                    Table Data Related Commands
--------------------------------------------------------------------*/       


-- INSERT DATA
    
    -- Single Record
    INSERT INTO table_name 
        (column_name_1, column_name_2) 
        VALUES 
        (value_1,value_2);

    -- Multiple Records
    INSERT INTO table_name 
        (column_name_1, column_name_2) 
        VALUES 
            (value_1.1,value_1.2),
            (value_2.1,value_2.2),
            (value_3.1,value_3.2);


-- DELETE ROW
    
    -- Delete All Rows 
    DELETE FROM table_name;

    -- Delete Rows Conditionally
    DELETE FROM table_name
        WHERE (condition);

    -- Delete Rows with LIMIT
    DELETE FROM table_name
        WHERE (condition)
        LIMIT 5;
    
    -- Delete Rows with LIMIT
    DELETE FROM table_name
        WHERE (condition)
        LIMIT 5;

    -- Delete Rows with ORDER BY and LIMIT
    DELETE FROM table_name
        WHERE (condition)
        ORDER BY column_name ASC | DESC
        LIMIT row_count;


-- UPDATE ROW
    
    -- Update rows with a condition
    UPDATE table_name
        SET column_1 = expression_1,
            column_2 = expression_2
        WHERE (condition);

    -- Update with limit
    UPDATE table_name
        SET column_1 = expression_1,
            column_2 = expression_2
        WHERE (condition)
        LIMIT row_count;

    -- Update with ORDER BY and LIMIT
    UPDATE table_name
        SET column_1 = expression_1,
            column_2 = expression_2
        WHERE (condition)
        ORDER BY column_name ASC | DESC
        LIMIT row_count;



-- SELECT ROW

    /*--------------------------------------------------------------------
                            SELECT STATEMENT                              
     Syntax
        
        
        SELECT
            [ALL | DISTINCT | DISTINCTROW ]
            [HIGH_PRIORITY]
            [STRAIGHT_JOIN]
            [SQL_SMALL_RESULT] [SQL_BIG_RESULT] [SQL_BUFFER_RESULT]
            [SQL_NO_CACHE] [SQL_CALC_FOUND_ROWS]
            select_expr [, select_expr] ...
            [into_option]
            [FROM table_references
            [PARTITION partition_list]]
            [WHERE where_condition]
            [GROUP BY {col_name | expr | position}, ... [WITH ROLLUP]]
            [HAVING where_condition]
            [WINDOW window_name AS (window_spec)
                [, window_name AS (window_spec)] ...]
            [ORDER BY {col_name | expr | position}
            [ASC | DESC], ... [WITH ROLLUP]]
            [LIMIT {[offset,] row_count | row_count OFFSET offset}]
            [into_option]
            [FOR {UPDATE | SHARE}
                [OF tbl_name [, tbl_name] ...]
                [NOWAIT | SKIP LOCKED]
            | LOCK IN SHARE MODE]
            [into_option]

        into_option: {
            INTO OUTFILE 'file_name'
                [CHARACTER SET charset_name]
                export_options
        | INTO DUMPFILE 'file_name'
        | INTO var_name [, var_name] ...
        }
    --------------------------------------------------------------------*/

    -- Operation Order
        -- FROM -> WHERE -> GROUP BY -> HAVING ->  SELECT -> DISTINCT -> ORDER BY -> LIMIT

    -- SELECT ALL
        SELECT * 
            FROM table_name;

    -- SELECT With Where
        SELECT * 
            FROM table_name 
            WHERE (condition);

    -- SELECT specific columns
        SELECT column_name_1, column_name_2 
            FROM table_name
            WHERE(condition);

    -- SELECT with GROUP BY
        
        SELECT 
            column_name_1, column_name_2
        FROM 
            table_name
        WHERE 
            condition
        GROUP BY 
            group_by_expression;
    
    -- SELECT with Having
        
        SELECT 
            column_name_1, column_name_2
        FROM 
            table_name
        WHERE 
            condition
        GROUP BY 
            group_by_expression;
        HAVING 
            group_condition;

    -- SELECT with distinct rows
        
        SELECT DISTINCT column_name_1, column_name_2
        
        FROM
            table_name
        WHERE 
            search_condition
        ORDER BY 
            sort_expression;





/*--------------------------------------------------------------------
                    Aggregate Functions
--------------------------------------------------------------------*/  

-- AVG()
    SELECT column_name_1, AVG(column_name_2)
       FROM table_name;

-- COUNT()
    SELECT column_name_1, COUNT(column_name_2)
       FROM table_name;

-- SUM()
    SELECT column_name_1, SUM(column_name_2)
       FROM table_name;

-- MIN()
    SELECT column_name_1, MIN(column_name_2)
       FROM table_name;

-- MAX()
    SELECT column_name_1, MAX(column_name_2)
       FROM table_name;



/*--------------------------------------------------------------------
                    JOINS
--------------------------------------------------------------------*/  


-- Inner join

    SELECT 
        * 
    FROM 
        student
    INNER JOIN
        department
    ON join_condition;   