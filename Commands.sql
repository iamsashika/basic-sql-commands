/*-- ----------------------------------------------------------------
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


/*-- ----------------------------------------------------------------
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


/*-- ----------------------------------------------------------------
                    Table Related Commands
--------------------------------------------------------------------*/

-- Show Tables
    SHOW TABLES;

-- Create Table - Simple Table with NO constraints
    CREATE TABLE table_name (
        attribute_name_1 INT,
        attribute_name_2 VARCHAR,
        attribute_name_3 DATE,
        attribute_name_4 VARCHAR        
    );

    /* Database Constraints
        PRIMARY KEY
        FOREIGN KEY
        UNIQUE KEY
        CHECK
        NOT NULL
        DEFAULT
    */

-- Create Table - With PRIMARY KEY constraints  # Method 1
    CREATE TABLE table_name (
        attribute_name_1 INT PRIMARY KEY,
        attribute_name_2 VARCHAR,
        attribute_name_3 DATE,
        attribute_name_4 VARCHAR        
    );

-- Create Table - With PRIMARY KEY constraints  # Method 2
    CREATE TABLE table_name (
        attribute_name_1 INT,
        attribute_name_2 VARCHAR,
        attribute_name_3 DATE,
        attribute_name_4 VARCHAR,
        PRIMARY KEY(attribute_name_1)        
    );

-- Create Table - With Composite PRIMARY KEY constraints 
    CREATE TABLE table_name (
        attribute_name_1 INT,
        attribute_name_2 VARCHAR,
        attribute_name_3 DATE,
        attribute_name_4 VARCHAR,
        PRIMARY KEY(attribute_name_2, attribute_name_3)        
    );

-- Create Table - With FOREIGN KEY constraints 
    CREATE TABLE table_1 (
        tb_1_pk INT,
        attribute_name_2 VARCHAR,
        attribute_name_3 DATE,
        attribute_name_4 VARCHAR,
        tb_2_pk VARCHAR,
        PRIMARY KEY(tb_1_pk), 
        CONSTRAINT(fk_cons) FOREIGN KEY(tb_2_pk)  REFERENCES table_2(tb_2_pk)    
    );

-- Create Table - With UNIQUE constraints 
    CREATE TABLE table_1 (
        attribute_name_1 INT UNIQUE,
        attribute_name_2 VARCHAR,
        attribute_name_3 DATE,
        attribute_name_4 VARCHAR,
    );

-- Create Table - With CHECK constraints 
    CREATE TABLE table_1 (
        attribute_name_1 INT CHECK (attribute_name_1 > 50),
        attribute_name_2 VARCHAR,
        attribute_name_3 DATE,
        attribute_name_4 VARCHAR,
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
        attribute_name_2 VARCHAR DEFAULT 'default_value',
        attribute_name_3 DATE,
        attribute_name_4 VARCHAR,
    );
    