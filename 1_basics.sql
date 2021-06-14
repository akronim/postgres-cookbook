--$ sudo su - postgres
--$ help
-- OR:
--$ sudo -u postgres psql
-- OR:
--$ sudo -i -u postgres
-- OR:
--$ psql -U postgres

--$ psql --help

--$ psql
--# \conninfo
-- SELECT current_user;
--# \?  # help
--# \l  # list
--# \h  # help
--# \q  # quit
--# exit    # quit

--$ logout




-- >>> Creating a New Role
--$ sudo -u postgres createuser --interactive
-- : Enter name of role to add: demorole
-- : Shall the new role be a superuser? (y/n) y
--$ sudo -u postgres createdb demorole

--$ sudo adduser demorole

-- OR:
--$ sudo su - postgres
--$ createuser -PE demorole

-- OR:
--$ sudo su - postgres -c "createuser demorole"
--$ sudo su - postgres -c "createdb demorole"
--$ sudo -u postgres psql
--# GRANT ALL PRIVILEGES ON DATABASE demorole TO demorole;

-- OR:
--$ sudo -u postgres psql
--# CREATE DATABASE demorole;
--# CREATE ROLE demorole WITH LOGIN ENCRYPTED PASSWORD 'demorolepass';
--# CREATE USER demorole WITH ENCRYPTED PASSWORD 'demorolepass'; # ???
--# GRANT ALL PRIVILEGES ON DATABASE demorole TO demorole;

-- OR:
--$ sudo -u postgres psql
--# CREATE USER demorole WITH PASSWORD 'demorolepass';
--# ALTER USER demorole WITH SUPERUSER; # make it superuser
--# DROP USER demorole; # remove user
--$ sudo psql -U demorole # To log in as another user, quit the prompt (\q) and then use the command
--$ sudo psql -U demorole -d demorole # connect directly to a database


--- >>> To create a superuser:
--$ sudo -u postgres psql
--# CREATE ROLE mysuperuser WITH SUPERUSER CREATEDB CREATEROLE LOGIN ENCRYPTED PASSWORD 'mysuperpass';
-- OR:
--$ sudo su - postgres
--$ createuser -sPE mysuperuser

-- >>> OR:
-- $ createuser demorole --password
-- $ createdb demorole -O demorole
-- $ psql -l 

-- >>> Drop a role (logged in as postgres user)
--postgres=# DROP ROLE demorole;

-- OR:
--$ sudo su - postgres
--$ dropuser -i demorole

-- >>> reset password
-- psql -c "alter user postgres with password 'StrongAdminP@ssw0rd'"



-- # To change user:
-- \c - a_new_user

-- # To change database and user:
-- \c a_new_database a_new_user



-- >>> if PostgreSQL is running
--$ service postgresql status
-- >>> OR:
-- $ sudo systemctl status postgresql.service

-- >>> get server version:
--$ sudo -u postgres psql -c "SELECT version();"

-- >>> if you want to find where is data directory of a running postgres:
--$ sudo su postgres -c "psql -c 'show data_directory'"

-- >>> to find the status of the running PostgreSQL cluster:
--$ ps -ef | grep postgres

-- >>> to list all user accounts (or roles) in the current PostgreSQL database server
--# \du
--# \du+

-- ss -nlt | grep 5432


