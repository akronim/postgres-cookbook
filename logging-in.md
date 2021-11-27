##### 1) login into root postgres user account
```
$ sudo -i -u postgres
```
##### 2) access a postgres prompt
```
postgres@<hostname>:~$ psql
```


##### postgres prompt (as root postgres user)
```
$ sudo -i -u postgres psql
```


#### connect to a specific database as a specific user - 1
```
$ sudo psql -d demorole -U demorole 
```

#### connect to a specific database as a specific user - 2
```
$ psql -h localhost -p 5432 -U postgres -d testdb
```



#### change database
```
\c <database_name>
```

#### change user 
```
 \c - <user_name>
```

#### change database and user 
```
 \c <database_name> <user_name>
```