
##### create a user 1
```
$ sudo -u postgres psql
# CREATE DATABASE demotestdb;
# CREATE USER demotestdbuser WITH ENCRYPTED PASSWORD 'demotestdbuserpass';
# GRANT ALL PRIVILEGES ON DATABASE demotestdb TO demotestdbuser;
```

##### create a user 2
```
sudo -u postgres psql
postgres=# create database demotestdb;
postgres=# create user demotestdbuser with encrypted password 'demotestdbuserpass';
postgres=# grant all privileges on database demotestdb to demotestdbuser;
```


##### remove a user
```
$ sudo -u postgres psql
# DROP USER demotest; 
```

#### change username
```
ALTER USER user_name RENAME TO new_name;
```

#### reset password
```
alter user john with encrypted password 'johnnewpass';
```
```
 psql -c "alter user postgres with password 'StrongAdminP@ssw0rd'"
```
