from django.db import models


class Product(models.Model):

    title = models.CharField(max_length=200, help_text="Enter Product Title")
    description = models.TextField(help_text="Enter Product Description")
    unitCost = models.FloatField(help_text="Enter Product Unit Cost")
    unit = models.CharField(max_length=10, help_text="Enter Product Unit ")

    def __str__(self):

        return self.title