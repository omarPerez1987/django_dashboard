# Generated by Django 5.0.1 on 2024-02-05 14:37

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0002_rename_checkin_time_bookings_checkintime_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='bookings',
            old_name='room',
            new_name='idRoom',
        ),
        migrations.RenameField(
            model_name='room',
            old_name='cancellation_policy',
            new_name='cancel',
        ),
    ]