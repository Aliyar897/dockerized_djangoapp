from django.contrib import admin
from django.urls import path
from .views import ser
urlpatterns = [
    path('news/', ser, name='ser')
]