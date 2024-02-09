from django.shortcuts import render
from django.core.paginator import Paginator
from dashboard.models import Room



def rooms_get_all(request):
    rooms = Room.objects.all()
    paginator = Paginator(rooms, 6)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    return render(request, 'rooms-grid.html', {'page_obj': page_obj})


def rooms_available(request):
    rooms = Room.objects.filter(status='available')
    paginator = Paginator(rooms, 6)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    return render(request, 'rooms-list.html', {'page_obj': page_obj})
        

def rooms_offers(request):
    rooms = Room.objects.all()
    amenities = ['Air conditioner', 'High speed WiFi', 'Breakfast', 'Kitchen', 'Cleaning', 'Shower', 'Grocery', 'Single bed', 'Shop near', 'Towels', '24/7 Online Support', 'Strong Locker', 'Smart Security', 'Expert Team'] 
    for room in rooms:
        room.discounted_price = room.price * (1 - room.discount/100)
        room.discounted_price = int(room.discounted_price)
    return render(request, 'offers.html', {'amenities': amenities,'rooms': rooms})