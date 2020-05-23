# Base Image
FROM python:3.6

# set default environment variables
ENV PYTHONUNBUFFERED 1

# create and set working directory
RUN mkdir /app
WORKDIR /app

# Add current directory code to working directory
ADD . /app/

RUN pip install Django==3.0.6  
RUN pip install django-crispy-forms
RUN pip install  psycopg2

EXPOSE 8000
CMD python manage.py  runserver  0.0.0.0:8000