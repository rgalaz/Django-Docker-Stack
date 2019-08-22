FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN mkdir /inventory
COPY ./entrypoint.sh /inventory/entrypoint.sh
COPY . /inventory
WORKDIR /inventory

RUN pip install --upgrade pip
RUN pip install pipenv && pipenv install --system --deploy
RUN python manage.py collectstatic --no-input
RUN apt-get update && apt-get install -y netcat


ENTRYPOINT ["/inventory/entrypoint.sh"]

CMD gunicorn djangoBackend.wsgi -b 0.0.0.0:8000
#CMD python manage.py collectstatic --no-input; python manage.py migrate; gunicorn djangoBackend.wsgi -b 0.0.0.0:8000