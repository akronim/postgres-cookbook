#### create
```
# CREATE DATABASE testdb;
```
```
GRANT ALL PRIVILEGES ON DATABASE "testdb" TO test123user ;
```



#### delete db
```
# DROP DATABASE testdb;
```


#### tables
##### describe a table
```
# \d
# \d person # describe table person
```
##### just the table without the sequence
```
# \dt
```
##### delete a table
```
# DROP TABLE person;
```
##### insert data from a sql file (use Mockaroo to generate data)
```
# \i /home/{user}/Downloads/person-data.sql
```
