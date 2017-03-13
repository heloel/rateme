from django.shortcuts import render
from django.http import HttpResponseRedirect
from django import forms
from django.forms.widgets import PasswordInput, DateInput

from django.forms.models import ModelForm 
from paginaPrincipal.models import Usuario
from django.contrib.auth.models import User

paginaPrincipal='/paginaPrincipal'

class DateInput(DateInput):
    input_type='date'
class FormaPerfil(ModelForm):
    class Meta:
        model = Usuario
        exclude = ['formPerfil']
        fields = ['fechaDeNacimiento','categoria']
        widgets = {
            'fechaDeNacimiento': DateInput()
        }
class FormaUsuario(ModelForm):
    class Meta:
        model = User
        exclude = ['formUsuario']
        fields = ['username','password','first_name','last_name', 'email']
        widgets = {
            'password': PasswordInput(), 
        }

def registra(request):
    if request.user.is_authenticated():
        return HttpResponseRedirect(paginaPrincipal)
    else:
        if request.method == 'POST':
            formPerfil = FormaPerfil(request.POST, prefix='formPerfil')
            formUsuario = FormaUsuario(request.POST, prefix='formUsuario')

            if formPerfil.is_valid() and formUsuario.is_valid():
                usuario = User.objects.create_user(formUsuario.cleaned_data['username'],formUsuario.cleaned_data['email'],formUsuario.cleaned_data['password'])
                usuario.first_name=formUsuario.cleaned_data['first_name']
                usuario.last_name=formUsuario.cleaned_data['last_name']
                perfil = formPerfil.save(commit=False)
                perfil.user = usuario
                perfil.save()

                return HttpResponseRedirect(paginaPrincipal)  
        else:
            formPerfil = FormaPerfil(prefix='formPerfil')
            formUsuario = FormaUsuario(prefix='formUsuario')
        return render(request, 'registro/registro.html', {
            'formUsuario': formUsuario,
            'formPerfil': formPerfil
        })
