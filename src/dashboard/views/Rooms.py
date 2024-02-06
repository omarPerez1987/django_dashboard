from django.shortcuts import render, redirect, get_object_or_404
from django.http import Http404
from django.views import View
from dashboard.models import Room



def rooms_list(request, template_name='index.html'):
    if request.method == 'GET':
        try:
            room = Room.objects.all()
            data = {}
            data['object_list'] = room
            print(data)
            return render(request, template_name, data)
        except Exception as e:
            return render(request, template_name, {'error': str(e)})

    

def room_view(request, id, template_name='rooms/room_view.html'):
    if request.method == 'GET':
        try:
            room= get_object_or_404(Room, id=id)    
            return render(request, template_name, {'data':room})
        except Exception as e:
            return render(request, template_name, {'error': str(e)})
        

def rooms(request):
    return render(request, 'rooms-grid.html')


def room_details_html(request):
    return render(request, 'rooms-details.html')


def offers_html(request):
    return render(request, 'offers.html')

def room_listar(request):
    return render(request, 'rooms-list.html')