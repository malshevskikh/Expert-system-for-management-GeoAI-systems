# Generated by Django 5.0.3 on 2024-04-24 09:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('back', '0004_secservicemodel_number_of_copy'),
    ]

    operations = [
        migrations.AddField(
            model_name='secservicemodel',
            name='ip_address',
            field=models.CharField(default='1.1.1.1', max_length=255),
        ),
    ]