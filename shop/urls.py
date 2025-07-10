from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.index, name='index'),
    path('categories/', views.category_list, name='category_list'),  # Список всех категорий
    path('categories/<int:category_id>/', views.category_detail, name='category_detail'),  # Должно отображать как подкатегории, так и товары в категории
    path('categories/<int:category_id>/subcategories/', views.subcategory_list, name='subcategory_list'),  # Список подкатегорий конкретной категории
    path('subcategories/<int:subcategory_id>/products/', views.product_list, name='product_list'),  # Список продуктов в подкатегории

    path('products/<slug:slug>/', views.product_detail, name='product_detail'),  # Детали конкретного продукта

    path('search/', views.product_search, name='product_search'), # ПОИСКОВАЯ СТРОКА.
    path('about/', views.about_company, name='about_company'),  # About company page
    path('order/<int:product_id>/', views.order_product, name='order_product'),
    path('import_export/', views.import_export_page, name='import_export_page'),
    path('export_excel/', views.export_products_excel, name='export_excel'),
    path('import_excel/', views.import_products_excel, name='import_excel'),

]

if settings.DEBUG:
    from django.conf import settings
    from django.conf.urls.static import static

    if hasattr(settings, 'STATICFILES_DIRS') and settings.STATICFILES_DIRS:
        urlpatterns += static(settings.STATIC_URL, document_root=settings.STATICFILES_DIRS[0])
    else:
        urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
