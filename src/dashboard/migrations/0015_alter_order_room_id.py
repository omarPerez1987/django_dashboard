# Generated by Django 5.0.1 on 2024-02-13 17:13

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0014_alter_order_room_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='room_id',
            field=models.ForeignKey(db_column='room_id', on_delete=django.db.models.deletion.CASCADE, to='dashboard.room'),
        ),
    ]