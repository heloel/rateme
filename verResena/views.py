from django.shortcuts import render
from django.http import HttpResponseRedirect
from paginaPrincipal.models import Reseña, Likes, Comentarios
from precise_bbcode import get_parser
from django.forms.models import ModelForm 
from django.forms.widgets import Textarea

paginaPrincipal='/paginaPrincipal'

class comenta(ModelForm):
        class Meta:
                model = Comentarios
                exclude = ['formComenta', 'usuario', 'reseña']
                fields = [ 'contenido', 'usuario', 'reseña']
                widgets = {
                        'contenido': Textarea(attrs={'cols':40, 'rows':6}),
                }

def resenas(request):
	resenas=Reseña.objects.all()
	return render(request, 'verResena/verResena.html', {
		'resenas':resenas
        })

def resena(request):
        encontrado = request.GET.get('resena', '')
        resena = Reseña.objects.get(id = encontrado)
        comentario = Comentarios.objects.all()
        hayLike = bool(Likes.objects.filter(reseña=resena, usuario=request.user))
        formaComentar = comenta(prefix='formComentar')
        return render(request, 'verResena/unaResena.html', {
                'comenta': formaComentar,
                'resena':resena,
                'comentarios':comentario,
                'hayLike':hayLike,
        })

def eliminaResena(request, resena_id):
	lulz = Reseña.objects.get(id=resena_id)
	lulz.borrado = True
	lulz.save()
	return HttpResponseRedirect('/verResena')