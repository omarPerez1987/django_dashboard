from django.shortcuts import render, redirect, get_object_or_404
from dashboard.models import *
from dashboard.forms import *
from django.contrib import messages 
from django.shortcuts import redirect
from datetime import datetime

def post_booking (request, id, template_name):
    form = BookingForm(request.POST)
    if form.is_valid():
        booking = form.save(commit=False)
        booking.orderDate = datetime.now().strftime('%Y-%m-%d')
        booking.orderTime = datetime.now().strftime('%H:%M:%S')
        booking.checkinTime = '09:00:00'
        booking.checkoutTime = '12:00:00'
        booking.idRoom = get_object_or_404(Room, id=id)
        booking.status = 'booked'
        booking.save()
        messages.success(request, 'Su reserva se ha creado con éxito.')
        return redirect('home')
    else:
        messages.error(request, 'Su reserva no se ha podido crear.')
        return render(request, template_name, {'form': form})
    

def rooms_details(request, id, template_name):
    room = get_object_or_404(Room, id=id)
    rooms = Room.objects.all()
    amenities = ['Air conditioner', 'High speed WiFi', 'Breakfast', 'Kitchen', 'Cleaning', 'Shower', 'Grocery', 'Single bed', 'Shop near', 'Towels', '24/7 Online Support', 'Strong Locker', 'Smart Security', 'Expert Team'] 
    room.discounted_price = room.price * (1 - room.discount/100)
    room.discounted_price = int(room.discounted_price)
    form = BookingForm()
    return render(request, template_name, {'amenities': amenities, 'data': room, 'rooms': rooms, 'form': form})

    

def post_form_and_get_details(request, id, template_name='rooms-details.html'):
    if request.method == 'POST':
        return post_booking(request, id, template_name)
    else:
        return rooms_details(request, id, template_name)