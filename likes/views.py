from django.shortcuts import render
from django.http import HttpResponseRedirect
from paginaPrincipal.models import Reseña
from precise_bbcode import get_parser
from django import forms
from paginaPrincipal.models import Likes

# Create your views here.
def likes(request):
	likeada = request.GET.get('resena', '')
	resena = Reseña.objects.get(id = likeada)
	like = Likes()
	like.usuario = request.user
	like.reseña = resena
	like.save()
	resena.like = resena.like+1
	resena.save()
	return HttpResponseRedirect("/verResena/unaResena?resena=" + likeada)

def quitaLike(request):
        deslikeada = request.GET.get('resena', '')
        resena = Reseña.objects.get(id = deslikeada)
        Likes.objects.get(reseña=resena, usuario=request.user).delete()
        resena.like = resena.like-1
        resena.save()
        return HttpResponseRedirect("/verResena/unaResena?resena=" + deslikeada)
