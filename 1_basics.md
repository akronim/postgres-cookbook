#### check if PostgreSQL is running
```
$ service postgresql status
```
##### OR:
```
$ sudo systemctl status postgresql.service
```
```
$ which psql
```
#### get server version:
```
$ sudo -u postgres psql -c "SELECT version();"
```
##### if you want to find where is data directory of a running postgres:
```
$ sudo su postgres -c "psql -c 'show data_directory'"
```
#### to find the status of the running PostgreSQL cluster:
```
$ ps -ef | grep postgres
```

```
ss -nlt | grep 5432
```


#### when logged in
##### list all user accounts (or roles) in the current PostgreSQL database server
```
# \du
# \du+
```
```
# \conninfo
```
```
# SELECT current_user;
```
##### help on psql commands
```
# \?  # help
```
##### help on PostgreSQL statements
```
# \h  # help
```
##### list all databases
```
# \l  # list
```
##### execute psql commands from a file
```
\i filename
```

##### psql + text editor
```
\e
```

##### exit out of the PostgreSQL shell 
```
# \q
```
##### exit out of ... 
```
$ exit
```

```
sudo -u postgres psql -c "SELECT 1"
```




#### DUMP
```
pg_dump --table=export_table --data-only --column-inserts my_database > data.sql
```

