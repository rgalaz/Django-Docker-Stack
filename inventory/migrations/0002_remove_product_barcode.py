# Generated by Django 2.2 on 2019-04-06 20:41

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('inventory', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='product',
            name='barcode',
        ),
    ]