from django import forms
from django.utils.safestring import mark_safe

class CKEditor5Widget(forms.Textarea):
    class Media:
        js = ('https://cdn.ckeditor.com/ckeditor5/40.1.0/classic/ckeditor.js',)

    def render(self, name, value, attrs=None, renderer=None):
        textarea = super().render(name, value, attrs, renderer)
        return mark_safe(f"""
            {textarea}
            <script>
                document.addEventListener("DOMContentLoaded", function () {{
                    ClassicEditor
                        .create(document.querySelector('[name="{name}"]'))
                        .catch(error => console.error(error));
                }});
            </script>
        """)
