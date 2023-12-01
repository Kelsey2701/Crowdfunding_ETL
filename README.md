# Crowdfunding_ETL

We were tasked with building an ETL pipeline using Python, Pandas, Postgres, and regular expressions to extract and transform data. The instructions for this project are divided into the following subsections:
* Create the Category and Subcategory DataFrames
* Create the Campaign DataFrame
* Create the Contacts DataFrame
* Create the Crowdfunding Database

Technologies used: python, postgres, pandas 

## Create the Category and Subcategory DataFrames
Created two DataFrames, "category" and "subcategory," by extracting and transforming data from the crowdfunding.xlsx Excel file. The "category" DataFrame includes a "category_id" column with entries from "cat1" to "catn" in sequential order, corresponding to the unique categories. The "category" column contains only the category titles. This DataFrame was exported and saved as category.csv in your GitHub repository. Similarly, the "subcategory" DataFrame has a "subcategory_id" column with entries from "subcat1" to "subcatn," representing the unique subcategories, and a "subcategory" column containing only the subcategory titles. 

## Create the Campaign DataFrame
Extracted and transformed data from the crowdfunding.xlsx Excel file to create a campaign DataFrame. This DataFrame includes columns such as "cf_id," "contact_id," "company_name," "description," "goal," "pledged," "outcome," "backers_count," "country," "currency," "launch_date," "end_date," "category_id," and "subcategory_id." The "goal" and "pledged" columns were converted to float data types, while "launch_date" and "end_date" had their UTC times converted to datetime format. The "blurb" column was renamed to "description" as part of the transformation. 

## Create the Contacts DataFrame
Extracted and transformed data from the contacts.xlsx Excel file to create a Contacts DataFrame. Used regular expressions to extract the "contact_id," "name," and "email" columns, converted the "contact_id" column to integers, and created a new DataFrame. Split the "name" column values into first and last names, placed them in separate columns, and cleaned the DataFrame. 

## Create the Crowdfunding Database
Designed a Crowdfunding Database by inspecting four CSV files and creating an Entity-Relationship Diagram (ERD). Based on the ERD, Established a table schema for each CSV file in a Postgres file named crowdfunding_db_schema.sql, specifying data types, primary keys, foreign keys, and other constraints. Then created a new Postgres database called crowdfunding_db and used the database schema to sequentially create tables in the correct order to handle foreign keys. Verification of table creation was performed by running SELECT statements for each table. Finally, imported each CSV file into its corresponding SQL table and ensured data correctness by running SELECT statements for each table in the newly created crowdfunding_db database.
