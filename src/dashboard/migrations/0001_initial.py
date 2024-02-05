# Generated by Django 5.0.1 on 2024-02-05 12:25

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Contact',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('photo', models.CharField(max_length=255)),
                ('date', models.CharField(max_length=25)),
                ('hour', models.TimeField()),
                ('name', models.CharField(max_length=25)),
                ('last_name', models.CharField(max_length=25)),
                ('email', models.EmailField(max_length=35)),
                ('telephone', models.PositiveIntegerField()),
                ('archived', models.BooleanField(default=False)),
                ('review', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Room',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('photo', models.CharField(max_length=255)),
                ('room_type', models.CharField(max_length=20)),
                ('bed_type', models.CharField(max_length=5)),
                ('facilities', models.JSONField()),
                ('description', models.TextField()),
                ('price', models.PositiveIntegerField()),
                ('discount', models.PositiveIntegerField()),
                ('cancellation_policy', models.TextField()),
                ('status', models.CharField(max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='Bookings',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=25)),
                ('order_date', models.CharField(max_length=15)),
                ('order_time', models.TimeField()),
                ('checkin', models.CharField(max_length=25)),
                ('checkin_time', models.TimeField()),
                ('checkout', models.CharField(max_length=25)),
                ('checkout_time', models.TimeField()),
                ('notes', models.TextField()),
                ('status', models.CharField(max_length=10)),
                ('room', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='dashboard.room')),
            ],
        ),
    ]
