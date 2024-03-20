### About the dataset
The dataset you would be using in this assignment is not a real life dataset. It was programmatically created for this assignment purpose.
Prepare the lab environment

## Before you start the assignment:

1) Right click on [this link](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0321EN-SkillsNetwork/datawarehousing/CREATE_SCRIPT.sql) and save this SQL file in you local system.
2) Start PostgreSQL server
3) Create a new database Test1
4) Create the following tables:
    - DimDate
    - DimCategory
    - DimCountry
    - FactSales

# Loading Data
In this exercise you will load the data into the tables. You will load the data provided by the company in csv format.

## Task 1 - Load data into the dimension table DimDate
Download the data from [this link](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0321EN-SkillsNetwork/datawarehousing/data/DimDate.csv)

Load the downloaded data into DimDate table.

Take a screenshot of the first 5 rows in the table DimDate.

*Name the screenshot DimDate*

## Task 2 - Load data into the dimension table DimCategory

Download the data from [this link](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0321EN-SkillsNetwork/datawarehousing/DimCategory.csv)

Load the downloaded data into DimCategory table.

Take a screenshot of the first 5 rows in the table DimCategory.

*Name the screenshot DimCategory*

## Task 3 - Load data into the dimension table DimCountry

Download the data from [this link](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0321EN-SkillsNetwork/datawarehousing/DimCountry.csv)

Load the downloaded data into DimCountry table.

Take a screenshot of the first 5 rows in the table DimCountry.

*Name the screenshot DimCountry*

## Task 4 - Load data into the fact table FactSales

Download the data from [this link](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0321EN-SkillsNetwork/datawarehousing/FactSales.csv)

Load this data into FactSales table.

Take a screenshot of the first 5 rows in the table FactSales.

*Name the screenshot FactSales*

-------------------------------------------------------------------------

# Queries for data analytics

In this exercise you will query the data you have loaded in the previous exercise.

## Task 5 - Create a grouping sets query

Create a grouping sets query using the columns country, category, totalsales.

Take a screenshot of the sql and the output rows.

*Name the screenshot groupingsets*

## Task 6 - Create a rollup query

Create a rollup query using the columns year, country, and totalsales.

Take a screenshot of the sql and the output rows.

*Name the screenshot rollup*

## Task 7 - Create a cube query

Create a cube query using the columns year, country, and average sales.
    
Take a screenshot of the sql and the output rows.

*Name the screenshot cube*

## Task 8 - Create an MQT

Create an MQT named total_sales_per_country that has the columns country and total_sales.

Take a screenshot of the sql.

*Name the screenshot mqt*

### End of the assignment.
