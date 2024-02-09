from django.shortcuts import render, redirect, get_object_or_404
from django.http import Http404
from django.views import View
from dashboard.models import Room



def rooms_get_all(request):
    rooms = Room.objects.all()
    return render(request, 'rooms-grid.html', {'rooms': rooms})


def rooms_available(request):
    rooms = Room.objects.filter(status='available')
    return render(request, 'rooms-list.html', {'rooms': rooms})
        

def rooms_offers(request):
    rooms = Room.objects.all()
    amenities = ['Air conditioner', 'High speed WiFi', 'Breakfast', 'Kitchen', 'Cleaning', 'Shower', 'Grocery', 'Single bed', 'Shop near', 'Towels', '24/7 Online Support', 'Strong Locker', 'Smart Security', 'Expert Team'] 
    for room in rooms:
        room.discounted_price = room.price * (1 - room.discount/100)
        room.discounted_price = int(room.discounted_price)
    return render(request, 'offers.html', {'amenities': amenities,'rooms': rooms})