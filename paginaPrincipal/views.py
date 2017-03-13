from django.shortcuts import render
from django.http import Http404
from paginaPrincipal.models import Reseña
from precise_bbcode import get_parser
from django import forms
from paginaPrincipal.models import Noticia
from django.db.models import Count
from django.contrib.auth.decorators import login_required

#Esta class nos ayuda a poder hacer en el main el buscar
class buscar(forms.Form):
	busqueda = forms.CharField(label="", max_length=50)

# Create your views here.
def index(request):
	return render(request, 'paginaPrincipal/index.html')

@login_required(login_url='/login/')
def main(request):
	grade = Reseña.objects.annotate(num_gra=Count('califReview')).order_by('-califReview').exclude(borrado = 1)[:5]
	like = Reseña.objects.annotate(num_like=Count('like')).order_by('-like').exclude(borrado = 1)[:5]
	#La forma para buscar
	formaBuscar = buscar()
	noticias=Noticia.objects.annotate(num_news=Count('id')).order_by('-id').exclude(borrado = 1)[:5]
	return render(request, 'paginaPrincipal/main.html', {
		#Busqueda se es como esta en main.html
		'busqueda': formaBuscar,
		'noticias':noticias,
		'grade':grade,
		'like': like,
		})

