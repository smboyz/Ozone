# Generated by Django 4.2.4 on 2023-08-18 06:36

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('adminpanel', '0020_globalsettings_brochure_name'),
    ]

    operations = [
        migrations.RenameField(
            model_name='globalsettings',
            old_name='Siteinstagram',
            new_name='Siteinstagramlink',
        ),
        migrations.RenameField(
            model_name='globalsettings',
            old_name='Siteyoutubelink',
            new_name='Sitewhatsapplink',
        ),
    ]