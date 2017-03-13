from django.db import models
from precise_bbcode.fields import BBCodeTextField
from django.contrib.auth.models import User
import datetime

# Create your models here.

class Categoria(models.Model):
    nombre=models.CharField(max_length=30)
    def __str__(self):
        return self.nombre


""" 
Al extender de la clase User (con el campo user y el OneToOneField), tenemos acceso a:

    * Usuario -> username
    * Contraseña -> password
    * Nombre -> first_name
    * Apellido -> last_name
    * Privilegios -> user_permissions

así como a todos los otros atributos y métodos de esta
"""

class Usuario(models.Model):
    user=models.OneToOneField(User)
    fechaDeNacimiento=models.DateTimeField()
    categoria=models.ForeignKey(Categoria)
    def __str__(self):
        return self.user.username

class Reseña(models.Model):
    titulo=models.CharField(max_length=50)
    fecha=models.DateTimeField(default=datetime.datetime.now())
    usuario=models.ForeignKey(Usuario)
    referencia=models.CharField(max_length=100)
    contenido=BBCodeTextField(blank=True)
    califReview=models.FloatField()
    borrado=models.BooleanField(default=False)
    califGente=models.FloatField(null=True, blank=True)
    categoria=models.ForeignKey(Categoria)
    like=models.IntegerField(default=0, null=True, blank=True)
    dislike=models.IntegerField(default=0, null=True, blank=True)
    def __str__(self):
        return self.titulo

class Noticia(models.Model):
    titulo=models.CharField(max_length=100)
    resumen=models.CharField(max_length=140, blank=True, null=True)
    contenido=BBCodeTextField(blank=True)
    fecha=models.DateTimeField(default=datetime.datetime.now())
    usuario=models.ForeignKey(Usuario)
    categoria=models.ForeignKey(Categoria) 
    borrado=models.BooleanField(default=False)
    def __str__(self):
        return self.titulo

class Likes(models.Model):
    usuario = models.ForeignKey(User)
    reseña = models.ForeignKey(Reseña)

class Comentarios(models.Model):
    usuario = models.ForeignKey(Usuario)
    reseña = models.ForeignKey(Reseña)
    contenido = models.TextField(max_length=200)
