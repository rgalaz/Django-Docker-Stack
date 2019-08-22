# Django-Docker-Stack
Django Rest API + PostgreSQL + gunicorn + NGINX 

1. Clone the repository
2. In the root of the repository do a pipenv install and pipenv shell
3. do a ./manage.py collectstatic
4. docker-compose up --build -d
5. Open your browser http://localhost:8000/api/v1/
