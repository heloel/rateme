from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponseRedirect

from .forms import NameForm

paginaPrincipal='/paginaPrincipal'

def loginUsuario(request):

    if request.user.is_authenticated():
        return HttpResponseRedirect(paginaPrincipal)
    else:
        if request.method == 'POST':
            form = NameForm(request.POST)
            if form.is_valid():
                user = authenticate(username=form.cleaned_data['username'],password=form.cleaned_data['password'])
                if user is not None:
                    if user.is_active:
                        login(request,user)
                        return HttpResponseRedirect(paginaPrincipal)
                    else:
                        error = "Esta cuenta ha sido desactivada. Lo sentimos mucho"
                        return render(request, 'login/', {'form': form,'error':error})
                else:
                    error = "Usuario y/o contraseña incorrectos. Intente de nuevo, por favor."
                    return render(request, 'login/login.html', {'form': form,'error': error}) 
        else:
            form = NameForm()
        return render(request, 'login/login.html', {'form': form})

def logoutUsuario(request):
    logout(request)
    return HttpResponseRedirect(paginaPrincipal)
