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
#### to list all user accounts (or roles) in the current PostgreSQL database server
```
# \du
# \du+
```
```
ss -nlt | grep 5432
```


#### to log in to the PostgreSQL server
```
$ sudo su - postgres
$ help
$ psql
```
##### OR:
```
$ sudo -u postgres psql
```
##### OR:
```
$ sudo -i -u postgres
```
##### OR:
```
$ psql -U postgres
$ psql --help
$ psql
```

#### when logged in
```
# \conninfo
```
```
# SELECT current_user;
```
#### help on psql commands
```
# \?  # help
```
#### help on PostgreSQL statements
```
# \h  # help
```
##### to list all databases
```
# \l  # list
```
##### execute psql commands from a file
```
\i filename
```

##### to exit out of the PostgreSQL shell 
```
# \q  # quit
```
##### to exit out of ... 
```
$ exit
```

#### connecting to a database under a specific user
```
$ sudo psql -d foodb -U foouser -W
```
```
$ sudo psql -U demorole
```
#### connect directly to a database
```
$ sudo psql -d demorole -U demorole 
```

#### To change user:
```
 \c - a_new_user
```
#### To change database and user:
```
 \c a_new_database a_new_user
```


#### Creating a New Role
```
$ sudo -u postgres createuser --interactive
 : Enter name of role to add: demorole
 : Shall the new role be a superuser? (y/n) y
$ sudo -u postgres createdb demorole
$ sudo adduser demorole
```
##### OR:
```
$ sudo su - postgres
$ createuser -PE demorole
```
##### OR:
```
$ sudo su - postgres -c "createuser demorole"
$ sudo su - postgres -c "createdb demorole"
$ sudo -u postgres psql
# GRANT ALL PRIVILEGES ON DATABASE demorole TO demorole;
```
##### OR:
```
$ sudo -u postgres psql
# CREATE DATABASE demorole;
# CREATE ROLE demorole WITH LOGIN ENCRYPTED PASSWORD 'demorolepass';
# CREATE USER demorole WITH ENCRYPTED PASSWORD 'demorolepass'; # ???
# GRANT ALL PRIVILEGES ON DATABASE demorole TO demorole;
```
##### OR:
```
$ sudo -u postgres psql
# CREATE USER demorole WITH PASSWORD 'demorolepass';
# ALTER USER demorole WITH SUPERUSER; # make it superuser
# DROP USER demorole; # remove user
```
#### To create a superuser:
```
$ sudo -u postgres psql
# CREATE ROLE mysuperuser WITH SUPERUSER CREATEDB CREATEROLE LOGIN ENCRYPTED PASSWORD 'mysuperpass';
```
##### OR:
```
$ sudo su - postgres
$ createuser -sPE mysuperuser
```
##### OR:
```
 $ createuser demorole --password
 $ createdb demorole -O demorole
 $ psql -l 
 ```
#### Drop a role (logged in as postgres user)
```
postgres=# DROP ROLE demorole;
```
##### OR:
```
$ sudo su - postgres
$ dropuser -i demorole
```
#### reset password
```
 psql -c "alter user postgres with password 'StrongAdminP@ssw0rd'"
```



#### DUMP
```
pg_dump --table=export_table --data-only --column-inserts my_database > data.sql
```

