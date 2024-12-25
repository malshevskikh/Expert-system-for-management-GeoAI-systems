# Generated by Django 5.0.3 on 2024-03-14 18:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('back', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='SecServiceModel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('service_identifier', models.CharField(max_length=255)),
                ('service_name', models.CharField(max_length=255)),
                ('module_status', models.CharField(choices=[('WRK', 'В работе'), ('RST', 'Отдых')], default='RST', max_length=80)),
                ('operation_type', models.CharField(max_length=255)),
                ('data_class', models.CharField(max_length=255)),
                ('data_identifier', models.CharField(max_length=255)),
                ('start_time', models.IntegerField()),
                ('end_time', models.IntegerField()),
            ],
        ),
    ]