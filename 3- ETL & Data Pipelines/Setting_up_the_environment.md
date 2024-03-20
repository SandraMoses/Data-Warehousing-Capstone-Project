### Before you start the assignment:

1) Download the following CSV files from the URL:

    - [sales old data](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0321EN-SkillsNetwork/ETL/sales_olddata.csv)
    
    - [sales new data](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0321EN-SkillsNetwork/ETL/sales_newdata.csv)

2) Start MySQL server

3) Write the **mysql** setup script 

4) Next, run the command bash setupmysqldb.sh in the terminal to execute the script
    
    *Execute the query in MySQL UI to check whether the table sales_data is loaded with data.*
    
        select * from sales_data where rowid in (1301,2605)

5) Start PostgreSQL server

6) Write the **postgres** setup script

7) Next, run the command bash setuppostgresqldb.sh in the terminal to execute the script
