from django.shortcuts import render
from paginaPrincipal.models import Reseña
from django import forms
#Esta class nos ayuda a poder hacer en el main el buscar
class buscara(forms.Form):
	busqueda = forms.CharField(label="", max_length=50)
# Create your views here.
def buscar(request):
	buscado = request.GET.get('busqueda', '')
	resenasEncontradas=Reseña.objects.filter(titulo__icontains=buscado)
	formaBuscar = buscara()
	return render(request, 'resenaBuscada/resenaBuscada.html', {
		'resenasEncontradas':resenasEncontradas,
		'busqueda': formaBuscar,
		})