#!/bin/bash
python employees_catalog_pj/manage.py makemigrations
python employees_catalog_pj/manage.py migrate
python employees_catalog_pj/manage.py db_population --levels=5 --emp_amount=50
echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'admin')" | python manage.py shell
python employees_catalog_pj/manage.py runserver 0.0.0.0:8000
