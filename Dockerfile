FROM python:3.9
RUN mkdir -p /opt/app
RUN mkdir -p /opt/app/farmersMarket
COPY requirements.txt /opt/app
COPY farmersMarket /opt/app/farmersMarket
WORKDIR /opt/app
RUN pip install -r requirements.txt
EXPOSE 8000
WORKDIR /opt/app/farmersMarket
ENTRYPOINT ["/usr/bin/python3"]
CMD ["manage.py runserver"]
