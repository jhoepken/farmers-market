from django.db import models

class Farmer(models.Model):
    name = models.CharField(max_length=200)
    street = models.CharField(max_length=100)
    city = models.CharField(max_length=25)
    zip_code = models.IntegerField()
