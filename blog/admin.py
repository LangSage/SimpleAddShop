from django.contrib import admin
from .models import Post, Category

class PostAdmin(admin.ModelAdmin):
    list_display = ('title', 'published_at', 'category')
    search_fields = ('title', 'content')
    filter_horizontal = ('products',)  # For choosing products

admin.site.register(Post, PostAdmin)
admin.site.register(Category)
