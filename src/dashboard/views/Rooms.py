from django.shortcuts import render, redirect, get_object_or_404
from django.http import Http404
from django.views import View
from dashboard.models import Room



def rooms_get_all(request, template_name='rooms-grid.html'):
    if request.method == 'GET':
        try:
            rooms = Room.objects.all()
            return render(request, template_name, {'rooms': rooms})
        except Exception as e:
            return render(request, template_name, {'error': str(e)})


def rooms_available(request, template_name='rooms-list.html'):
    if request.method == 'GET':
        try:
            rooms = Room.objects.all()
            available_rooms = [room for room in rooms if room.status == 'available']
            return render(request, template_name, {'rooms': available_rooms})
        except Exception as e:
            return render(request, template_name, {'error': str(e)})
        

def rooms_offers(request, template_name='offers.html'):
    if request.method == 'GET':
        try:
            rooms = Room.objects.all()
            amenities = ['Air conditioner', 'High speed WiFi', 'Breakfast', 'Kitchen', 'Cleaning', 'Shower', 'Grocery', 'Single bed', 'Shop near', 'Towels', '24/7 Online Support', 'Strong Locker', 'Smart Security', 'Expert Team'] 
            for room in rooms:
                room.discounted_price = room.price * (1 - room.discount/100)
                room.discounted_price = int(room.discounted_price)
            return render(request, template_name, {'amenities': amenities,'rooms': rooms})
        except Exception as e:
            return render(request, template_name, {'error': str(e)})