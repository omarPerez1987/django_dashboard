# Generated by Django 5.0.1 on 2024-02-05 14:53

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0004_rename_checkintime_bookings_checkin_time_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='bookings',
            old_name='room_id',
            new_name='room',
        ),
    ]
