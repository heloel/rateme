from django.shortcuts import render
from django import forms
from paginaPrincipal.models import Comentarios, Reseña, Usuario
from django.forms.models import ModelForm 
from django.forms.widgets import Textarea
from django.http import HttpResponseRedirect
from django.contrib.auth.models import User

class comenta(ModelForm):
        class Meta:
                model = Comentarios
                exclude = ['formComenta', 'usuario', 'reseña']
                fields = [ 'contenido', 'usuario', 'reseña']
                widgets = {
                        'contenido': Textarea(attrs={'cols':40, 'rows':6}),
                }

# Create your views here.
def comentarios(request):
	content = request.GET.get('contenido', '')
	resenaid = request.GET.get('resena', '')
	resena = Reseña.objects.get(id = resenaid)
	comentario = Comentarios()
	if content:
		comentario.reseña = resena
		comentario.usuario = request.user.usuario
		comentario.contenido = content
		comentario.save()
		return HttpResponseRedirect("/verResena/unaResena?resena=" + resenaid)
	else:
		return HttpResponseRedirect("/verResena/unaResena?resena=" + resenaid)
