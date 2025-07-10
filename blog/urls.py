from django.urls import path
from . import views

urlpatterns = [
    path('', views.post_list, name='post_list'),  # URL pattern for the list of posts
    path('<int:post_id>/', views.post_detail, name='post_detail'),  # URL pattern for a specific post detail
]
