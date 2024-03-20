#!/bin/sh

## Write your code here to load the data from sales_data table in Mysql server to a sales.csv.
## Select the data which is not more than 4 hours old from the current time.
CURRENT_TIME=$(date -u +'%Y-%m-%d %H:%M:%S')
FOUR_HOURS_AGO=$(date -u -d '4 hours ago' +'%Y-%m-%d %H:%M:%S')

mysql --host=127.0.0.1 --port=3306 --user=root --password=<replace with ur pw> -e "USE sales; SELECT * FROM sales_data WHERE timestamp BETWEEN '$FOUR_HOURS_AGO' AND '$CURRENT_TIME' INTO OUTFILE '/home/project/sales.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';"

 export PGPASSWORD=<replace with ur pw>;



 psql --username=postgres --host=localhost --dbname=sales_new -c "\COPY sales_data(rowid,product_id,customer_id,price,quantity,timestamp) FROM '/home/project/sales.csv' delimiter ',' csv header;" 

 ## Delete sales.csv present in location /home/project

 rm /home/project/sales.csv

 ## Write your code here to load the DimDate table from the data present in sales_data table

 psql --username=postgres --host=localhost --dbname=sales_new -c  "INSERT INTO DimDate (dateid, day, month, year) SELECT distinct dateid, DATE_PART('day', timestamp), DATE_PART('month', timestamp), DATE_PART('year', timestamp) FROM sales_data;"

## Write your code here to load the FactSales table from the data present in sales_data table

psql --username=postgres --host=localhost --dbname=sales_new -c  "INSERT INTO FactSales (rowid, product_id, custome_id, price, total_price) SELECT rowid, product_id, customer_id, price, price * quantity FROM sales_data;"

 ## Write your code here to export DimDate table to a csv

 psql --username=postgres --host=localhost --dbname=sales_new -c "\COPY DimDate TO '/home/project/dimdate.csv' DELIMITER ',' CSV HEADER;"

 ## Write your code here to export FactSales table to a csv
 
 psql --username=postgres --host=localhost --dbname=sales_new -c "\COPY FactSales TO '/home/project/factsales.csv' DELIMITER ',' CSV HEADER;"

