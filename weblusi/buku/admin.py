from django.contrib import admin

# Register your models here.

from . models import post, Kategori

admin.site.register(post)
admin.site.register(Kategori)

