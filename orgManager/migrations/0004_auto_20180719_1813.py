# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-07-19 11:13
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orgManager', '0003_auto_20180719_1431'),
    ]

    operations = [
        migrations.AddField(
            model_name='organization',
            name='depth',
            field=models.CharField(max_length=140, null=True),
        ),
        migrations.AddField(
            model_name='organization',
            name='numchild',
            field=models.PositiveIntegerField(default=0),
        ),
        migrations.AddField(
            model_name='organization',
            name='path',
            field=models.CharField(max_length=140, null=True),
        ),
    ]
