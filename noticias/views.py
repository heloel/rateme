from django.shortcuts import render
from django.http import HttpResponseRedirect
from paginaPrincipal.models import Categoria
from paginaPrincipal.models import Noticia
from paginaPrincipal.models import Usuario
from django import forms
from django.forms.models import ModelForm 
from django.forms.widgets import Textarea
import datetime
from django.contrib.auth.models import User

paginaPrincipal='/paginaPrincipal'

# Create your views here.
class FormaNoticia(ModelForm):
	class Meta:
		model = Noticia
		exclude = ['formNoticia', 'usuario', 'fecha']
		fields = ['titulo', 'resumen', 'contenido', 'categoria', 'usuario']
		widgets = {
            'contenido': Textarea(attrs={'cols':140, 'rows':50}),
        }

def nuevaNoticia(request):
	if request.method == 'POST':
		formNoticia = FormaNoticia(request.POST, prefix='formNoticia')
		if formNoticia.is_valid():
			f = formNoticia.save(commit=False)
			f.usuario = request.user.usuario
			f.save()
			return HttpResponseRedirect(paginaPrincipal)
	else:
		formNoticia = FormaNoticia(prefix='formNoticia')
	return render(request, 'noticias/nuevaNoticia.html', {
		'formNoticia':formNoticia
		})

def adminNoticia(request):
	noticias=Noticia.objects.all()
	return render(request, 'noticias/adminNoticia.html', {
		'noticias':noticias
	})

def eliminaNoticia(request, noticia_id):
	aux = Noticia.objects.get(id=noticia_id)
	aux.borrado = True
	aux.save()
	return HttpResponseRedirect('/noticias/adminNoticia')

def verNoticias(request):
	encontrado = request.GET.get('noticia', '')
	noticia = Noticia.objects.get(id = encontrado)
	return render(request, 'noticias/verNoticias.html', {
			'noticia':noticia,
	})
