# Generated by Django 5.1 on 2024-09-02 23:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_post_products'),
        ('shop', '0004_characteristic_product_characteristics'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='posts',
            field=models.ManyToManyField(blank=True, related_name='related_products', to='blog.post'),
        ),
    ]
