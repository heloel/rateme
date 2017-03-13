from django import forms

class NameForm(forms.Form):
    username = forms.CharField(label='Usuario', widget=forms.TextInput(attrs={'id':'campo_usuario'}), max_length=10)
    password = forms.CharField(label='Contraseña',widget=forms.PasswordInput(attrs={'id':'campo_contra'}))
