from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^unaResena/$', views.resena, name='resena'),
    url(r'^eliminaResena/(?P<resena_id>[0-9]+)/$', views.eliminaResena, name='eliminaResena'),
    url(r'^$', views.resenas, name='resenas'),
]
