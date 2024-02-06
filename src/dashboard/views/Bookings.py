from django.shortcuts import render
from dashboard.models import Booking

def create_booking(request, template_name='booking/home.html'):
    if request.method == 'POST':
        try:
            booking = Booking(**request.POST)
            booking.save()
            return render(request, template_name, {'data': booking})
        except Exception as e:
            return render(request, template_name, {'error': str(e)})