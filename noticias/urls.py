from django.conf.urls import url

from . import views

urlpatterns = [
	url(r'^$',views.nuevaNoticia, name='nuevaNoticia'),
	url(r'^adminNoticia/', views.adminNoticia, name='adminNoticia'),
	url(r'^verNoticias/', views.verNoticias, name='verNoticias'),
	url(r'^eliminaNoticia/(?P<noticia_id>[0-9]+)/$', views.eliminaNoticia, name='eliminaNoticia'),
]