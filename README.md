# A Comprehensive Report on Pewlett Hackard Employees
## PostgreSQL
The 6 .csv files were analyized to develop a outline of the fields and their relationships. A PostgreSQL schema was developed to correctly import the spreadsheets, respecting the relationships and field types. The primary/foriegn key relationships were established at this time.
DBeaver was used to create a EBD from the SQL database.
Various queries were constructed to analyize the employee data. These quieries used the relationships between tables to join data. WHERE/AND/OR/LIKE statements were used to filter the results of the queries. 

## Pandas
A connection to the SQL server was made using SQLalchemy to interact with the databse through python. The databse tables were loaded into dataframes, and then joined appropriatly. This allowed me to plot the average salary for each employee based on their title. This led to the conclusion that the employee data was faked; the average salaries for assistant/regular/senior level employees was nearly identical. 
