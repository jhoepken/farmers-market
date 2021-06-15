FROM python:3.9
RUN mkdir -p /opt/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /opt/app

COPY requirements.txt .
COPY farmersMarket .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8000
ENTRYPOINT ["/usr/bin/python3"]
CMD ["manage.py runserver"]
