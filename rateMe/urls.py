"""rateMe URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import include, url
from django.contrib import admin

urlpatterns = [
    url(r'^paginaPrincipal/', include('paginaPrincipal.urls', namespace="paginaPrincipal")),
    url(r'^login/', include('login.urls', namespace="login")),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^registro/', include('registro.urls', namespace="registro")),
    url(r'^nuevaResena/', include('nuevaResena.urls', namespace="nuevaResena")),
    url(r'^verResena/', include('verResena.urls', namespace="verResena")),
    url(r'^resenaBuscada/', include('resenaBuscada.urls', namespace="resenaBuscada")),
    url(r'^noticias/', include('noticias.urls', namespace="noticias")),
    url(r'^likes/', include('likes.urls', namespace="likes")),
    url(r'^comentarios/', include('comentarios.urls', namespace="comentarios")),
    url(r'^', include('paginaPrincipal.urls', namespace="paginaPrincipal")),
]