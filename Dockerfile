FROM python:3.9

ENV DockerHome=/opt/farmers-market/frontend

RUN mkdir -p $DockerHome
WORKDIR $DockerHome

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . $DockerHome

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

WORKDIR $DockerHome/frontend
EXPOSE 8000

CMD python manage.py migrate
CMD python manage.py runserver
