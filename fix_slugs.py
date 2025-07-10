# fix_slugs.py

import os
import django

# Set Django settings correctly
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "SimpleAdd.settings")
django.setup()

from shop.models import Product
from autoslug.utils import slugify

def fix_product_slugs():
    products = Product.objects.all()
    updated = 0
    seen = set()

    for product in products:
        # Always regenerate slug if missing or empty or duplicate
        if not product.slug or product.slug.strip() == "" or product.slug in seen:
            base_slug = slugify(product.name) or f"product-{product.id}"
            slug = base_slug
            counter = 1

            while Product.objects.filter(slug=slug).exclude(id=product.id).exists():
                slug = f"{base_slug}-{counter}"
                counter += 1

            product.slug = slug
            product.save()
            print(f"[✓] Product ID {product.id} → slug: {slug}")
            seen.add(slug)
            updated += 1
        else:
            seen.add(product.slug)

    print(f"\n✅ Done. {updated} slugs updated.")

if __name__ == "__main__":
    fix_product_slugs()
