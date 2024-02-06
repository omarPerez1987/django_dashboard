"""
URL configuration for mysite project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from dashboard.views.Bookings import create_booking
from dashboard.views.Contacts import *
from dashboard.views.Rooms import *
from dashboard.views.render_html import *

urlpatterns = [
    path('admin/', admin.site.urls),

    path('home/', home_html, name='home'),
    path('about/', about_html, name='about'),


    path('rooms/', rooms, name='rooms'),
    # path('rooms_details/<int:id>/', room_view, name='room_view'),
    path('rooms_details/', room_details_html, name='room_details'),
    path('rooms_list/', room_listar, name='room_list'),
    path('bookings/', create_booking, name='bookings'),
    path('offers/', offers_html, name='offers'),

    # path('contacts/', contact_view, name='contacts'),
    path('contacts/', contact, name='contacts'),


]
