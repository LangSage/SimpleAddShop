from django import forms
from .models import Product, Category, SubCategory

class ProductForm(forms.ModelForm):
    class Meta:
        model = Product
        fields = ['name', 'category', 'subcategory', 'description', 'image', 'characteristics']

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['subcategory'].required = False
        self.fields['category'].required = False

from django import forms

class ProductSearchForm(forms.Form):
    query = forms.CharField(label='Search', max_length=255, required=False, widget=forms.TextInput(attrs={
        'class': 'form-control',
        'placeholder': 'Search for products...',
    }))

from django import forms

from django import forms

class OrderForm(forms.Form):
    name = forms.CharField(label="Ваше имя", max_length=100)
    email = forms.EmailField(label="Email")
    phone = forms.CharField(label="Телефон", max_length=20)
    message = forms.CharField(label="Комментарий", widget=forms.Textarea, required=False)

