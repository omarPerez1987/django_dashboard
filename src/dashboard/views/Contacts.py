from django.http import HttpResponse
from django.views import View


def view_contacts(request):
    return HttpResponse("Soy contacto")