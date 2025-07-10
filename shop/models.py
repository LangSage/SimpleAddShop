from django.db import models
from django.utils.translation import gettext_lazy as _
from ckeditor.fields import RichTextField
from django.utils.text import slugify
from django.urls import reverse


class Category(models.Model):
    name = models.CharField(max_length=255)
    image = models.ImageField(upload_to='categories/', blank=True, null=True)
    description = models.TextField(blank=True, null=True)  # Add this line

    def __str__(self):
        return self.name


class SubCategory(models.Model):
    name = models.CharField(max_length=255)
    category = models.ForeignKey(Category, related_name='subcategories', on_delete=models.CASCADE)
    image = models.ImageField(upload_to='subcategories/', blank=True, null=True)

    def __str__(self):
        return self.name

class Characteristic(models.Model):
    name = models.CharField(max_length=255)
    value = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.name}: {self.value}"

class Product(models.Model):
    name = models.CharField(max_length=255)
    slug = models.SlugField(
          max_length = 255,
         unique = True,
          blank = True,  # allow blank so we can backfill
          null = True,
       )
    description = RichTextField(verbose_name='Description', blank=True, null=True)
    image = models.ImageField(upload_to='products/', blank=True, null=True)
    usage = RichTextField(verbose_name='Возможности использования', blank=True, null=True)
    document = models.FileField(upload_to='products/documents/', blank=True, null=True, verbose_name='Документ')
    category = models.ForeignKey(Category, related_name='products', on_delete=models.CASCADE)
    subcategory = models.ForeignKey(SubCategory, related_name='products', blank=True, null=True,
                                    on_delete=models.SET_NULL)
    characteristics = models.ManyToManyField(Characteristic, blank=True)
    posts = models.ManyToManyField('blog.Post', blank=True, related_name='related_products')

    meta_title = models.CharField(max_length=255, blank=True, null=True)
    meta_description = models.TextField(blank=True, null=True)
    meta_keywords = models.TextField(blank=True, null=True)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('product_detail', kwargs={'slug': self.slug})

    def save(self, *args, **kwargs):
        # only set slug if it's missing
        if not self.slug and self.name:
            base = slugify(self.name) or f"product-{self.id or ''}"
            slug_candidate = base
            i = 1
            # loop until unique
            while Product.objects.filter(slug=slug_candidate).exclude(pk=self.pk).exists():
                slug_candidate = f"{base}-{i}"
                i += 1
            self.slug = slug_candidate
        super().save(*args, **kwargs)


class ProductImage(models.Model):
    product = models.ForeignKey(Product, related_name='images', on_delete=models.CASCADE)
    image = models.ImageField(upload_to='products/gallery/')

    # ✅ NEW META TAGS FOR IMAGE
    alt_text = models.CharField(max_length=255, blank=True, null=True)
    title_text = models.CharField(max_length=255, blank=True, null=True)

    def __str__(self):
        return f"Image for {self.product.name}"


class Order(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    name = models.CharField("Имя", max_length=100)
    email = models.EmailField("Email")
    phone = models.CharField("Телефон", max_length=20)
    message = models.TextField("Комментарий", blank=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Заказ от {self.name} на {self.product.name}"



# ________________Slider on main page____________________________
class Slider(models.Model):
    name = models.CharField(max_length=100)
    is_active = models.BooleanField(default=True)

    def __str__(self):
        return self.name

class SliderImage(models.Model):
    slider = models.ForeignKey(Slider, related_name='images', on_delete=models.CASCADE)
    image = models.ImageField(upload_to='slider_images/')
    caption = models.CharField(max_length=255, blank=True, null=True)
    order = models.PositiveIntegerField(default=0)

    class Meta:
        ordering = ['order']

    def __str__(self):
        return f"{self.slider.name} - Image {self.order}"
# ________________Slider____________________________