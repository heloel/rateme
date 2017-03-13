from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^dislike/$', views.quitaLike, name='quitaLike'),
    url(r'^$', views.likes, name='likes'),
]
