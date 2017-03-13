from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import User

from .models import Usuario, Reseña, Noticia, Categoria, Likes

class UsuarioInline(admin.StackedInline):
    model=Usuario
    can_delete=False
    verbose_name_plural = 'Usuarios'

class UserAdmin(admin.ModelAdmin):
    inlines=[
        UsuarioInline,
    ]

# Register your models here.
admin.site.unregister(User)
admin.site.register(User,UserAdmin)

admin.site.register(Reseña)
admin.site.register(Noticia)
admin.site.register(Categoria)

admin.site.register(Likes)