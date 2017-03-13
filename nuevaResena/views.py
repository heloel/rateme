from django.shortcuts import render
from django.http import HttpResponseRedirect
from paginaPrincipal.models import Categoria
from paginaPrincipal.models import Reseña
from paginaPrincipal.models import Usuario
from django import forms
from django.forms.models import ModelForm 
from django.forms.widgets import Textarea
import datetime
from django.contrib.auth.models import User

paginaPrincipal='/paginaPrincipal'

class FormaResena(ModelForm):
	class Meta:
		model = Reseña
		exclude = ['formResena', 'usuario', 'fecha', 'califGente']
		fields = ['titulo', 'contenido', 'califReview', 'categoria', 'referencia', 'usuario']
		widgets = {
            'contenido': Textarea(attrs={'cols':140, 'rows':50}),
        }

def nuevaResena(request):
	if request.method == 'POST':
		formResena = FormaResena(request.POST, prefix='formResena')
		if formResena.is_valid():
			f = formResena.save(commit=False)
			f.usuario = request.user.usuario 
			f.save()
			return HttpResponseRedirect(paginaPrincipal)
	else:
		formResena = FormaResena(prefix='formResena')
	return render(request, 'nuevaResena/nuevaResena.html', {
		'formResena':formResena
		})
