from django.shortcuts import render
from website.models import Room

def home_html(request):
    rooms = Room.objects.all()
    return render(request, 'index.html', {'rooms': rooms})


def about_html(request):
    return render(request, 'about.html')


