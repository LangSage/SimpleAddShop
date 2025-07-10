from django.db import models
from django.utils import timezone

class Post(models.Model):
    title = models.CharField(max_length=255)
    content = models.TextField()
    published_at = models.DateTimeField(default=timezone.now)
    category = models.ForeignKey('Category', related_name='posts', on_delete=models.CASCADE)
    image = models.ImageField(upload_to='blog/', blank=True, null=True)
    products = models.ManyToManyField('shop.Product', blank=True, related_name='related_posts')

    def __str__(self):
        return self.title

class Category(models.Model):
    name = models.CharField(max_length=255)

    def __str__(self):
        return self.name
