# Generated by Django 4.2.4 on 2023-08-08 04:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminpanel', '0003_alter_navigation_page_type'),
    ]

    operations = [
        migrations.AddField(
            model_name='globalsettings',
            name='Sitefax',
            field=models.CharField(max_length=300, null=True),
        ),
    ]
