from django.contrib import admin
from django.utils.html import format_html
from .models import *
from ckeditor.widgets import CKEditorWidget

from django import forms
from django.utils.safestring import mark_safe
from django.contrib import admin
from django import forms
from django.db.models import F
from .models import Slider


@admin.register(ProductImage)
class ProductImageAdmin(admin.ModelAdmin):
    list_display = ('product', 'image_preview')
    list_filter = ('product',)
    search_fields = ('product__name',)

    def image_preview(self, obj):
        if obj.image:
            return format_html('<img src="{}" style="max-height: 60px;" />', obj.image.url)
        return "No Image"

    image_preview.short_description = "Preview"

class ProductImageInline(admin.TabularInline):
    model = ProductImage
    extra = 1  # Allows adding one more image at a time

class ProductAdminForm(forms.ModelForm):
    description = forms.CharField(widget=CKEditorWidget())
    usage = forms.CharField(widget=CKEditorWidget(), required=False)

    class Meta:
        model = Product
        fields = '__all__'

@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    form = ProductAdminForm
    list_display = ('name', 'category', 'subcategory', 'image_tag')
    readonly_fields = ('image_tag',)
    search_fields = ('name', 'description')
    filter_horizontal = ('posts',)
    inlines = [ProductImageInline]
    fieldsets = (
        (None, {
            'fields': ('name', 'image', 'category', 'subcategory', 'characteristics', 'posts', 'image_tag')
        }),
        ('Контент', {
            'fields': ('description', 'usage', 'document')
        }),
    )
    def image_tag(self, obj):
        if obj.image:
            return format_html('<img src="{}" width="50" height="50" />', obj.image.url)
        return 'No Image'
    image_tag.short_description = 'Image'


@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'image_tag')
    readonly_fields = ('image_tag',)
    fields = ('name', 'image', 'description')

    def image_tag(self, obj):
        if obj.image:
            return format_html('<img src="{}" width="50" height="50" />', obj.image.url)
        return 'No Image'
    image_tag.short_description = 'Image'

@admin.register(SubCategory)
class SubCategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'category', 'image_tag')
    readonly_fields = ('image_tag',)

    def image_tag(self, obj):
        if obj.image:
            return format_html('<img src="{}" width="50" height="50" />', obj.image.url)
        return 'No Image'
    image_tag.short_description = 'Image'


# admin.py
from .models import Order

admin.site.register(Order)



# ________________Slider on main page____________________________
# shop/admin.py

from django.contrib import admin
from .models import Slider, SliderImage

class SliderImageInline(admin.TabularInline):
    model = SliderImage
    extra = 1
    fields = ('image', 'caption', 'order')  # this is OK — applies to SliderImage

@admin.register(Slider)
class SliderAdmin(admin.ModelAdmin):
    list_display = ('name', 'is_active')    # ✅ no 'title' or 'order' here
    list_editable = ('is_active',)
    inlines = [SliderImageInline]


# ________________Slider on main page____________________________
