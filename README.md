# Django-CRUD-Operations

# Install all dependent packages
pip3 install Django==3.0.6             
pip3 install django-crispy-forms
# Psycopg is the most popular PostgreSQL database adapter for the Python programming language.
# https://data-flair.training/blogs/django-database/
pip3 install psycopg2

# To create a new django project
django-admin  --version
django-admin startproject employee_project

# To create a new app within project
django-admin startapp employee_regitster

# Apply migrations
python3 manage.py migrate

# Run the application (Run the server By using manage.py)
python3 manage.py  runserver

# access application @
http://127.0.0.1:8000/admin
http://127.0.0.1:8000/employee
http://127.0.0.1:8000/employee/list


docker build -t employee1 -f Dockerfile .
docker run -it -p 80:8000 employee1


# create a database in postgres
CREATE DATABASE EmployeeDB;
# to see list of tables
\dt
insert INTO employee_register_position (id, title) values (1,'sr.engi');
insert INTO employee_register_position values (1,'jr.eng');

# All psql commands
\? list all the commands
\l list databases
\conninfo display information about current connection
\c [DBNAME] connect to new database, e.g., \c template1
\dt list tables of the public schema
\dt <schema-name>.* list tables of certain schema, e.g., \dt public.*
\dt *.* list tables of all schemas
Then you can run SQL statements, e.g., SELECT * FROM my_table;(Note: a statement must be terminated with semicolon ;)
\q quit psql


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'srinivas',
        'USER': 'srinivas',
        'PASSWORD': 'srinivas',
        'HOST': 'localhost'
    }
}

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3', # Add 'postgresql_psycopg2', 'mysql', 'sqlite3' or 'oracle'.
        'NAME': 'mysite',                      # Or path to database file if using sqlite3.
        'USER': '',                      # Not used with sqlite3.
        'PASSWORD': '',                  # Not used with sqlite3.
        'HOST': '',                      # Set to empty string for localhost. Not used with sqlite3.
        'PORT': '',                      # Set to empty string for default. Not used with sqlite3.
    }
}