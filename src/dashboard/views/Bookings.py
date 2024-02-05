from django.http import HttpResponse
from django.views import View


def create_booking(request):
    return HttpResponse("Soy Bookings")