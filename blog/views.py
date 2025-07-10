from django.shortcuts import render, get_object_or_404
from .models import Post
from shop.models import Category
import random


def post_list(request):
    # Get all posts ordered by 'published_at' in descending order
    posts = Post.objects.all().order_by('-published_at')

    # Get all categories
    categories = Category.objects.all()

    # Add both posts and categories to the context
    context = {
        'posts': posts,
        'categories': categories,  # Pass the categories to the template
    }

    return render(request, 'blog/post_list.html', context)

def post_detail(request, post_id):
    # Fetch the specific post based on the provided post_id
    post = get_object_or_404(Post, id=post_id)

    # Fetch all posts, excluding the current one
    other_posts = Post.objects.exclude(id=post_id)

    # Choose a random set of posts, but ensure there's at least something to display
    random_posts = other_posts.order_by('?')[:4] if other_posts.count() > 0 else other_posts

    # Render the post detail with the context including the random posts
    return render(request, 'blog/post_detail.html', {'post': post, 'posts': random_posts})

# from django.shortcuts import render, get_object_or_404
# from shop.models import Category  # Import Category model from shop app
# from .models import Post
#
# def post_list(request):
#     posts = Post.objects.all()
#     categories = Category.objects.all()  # Query all categories from the shop app
#     context = {
#         'posts': posts,
#         'categories': categories,  # Pass the categories to the template
#     }
#     return render(request, 'blog/post_list.html', context)
#
# def post_detail(request, post_id):
#     post = get_object_or_404(Post, id=post_id)
#     categories = Category.objects.all()  # Fetch categories for the sidebar
#     return render(request, 'blog/post_detail.html', {'post': post, 'categories': categories})
