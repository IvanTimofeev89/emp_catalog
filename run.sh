#!/bin/sh


cd employees_catalog_pj
python manage.py makemigrations
python manage.py migrate
python manage.py db_population --levels=5 --emp_amount=50
echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'admin')" | python manage.py shell
python manage.py runserver 0.0.0.0:8000
