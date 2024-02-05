from django.http import HttpResponse
from django.views import View


def view_rooms(request):
    return HttpResponse("Soy rooms")