from django.shortcuts import render, redirect, get_object_or_404
from django.views import View
from dashboard.models import Contact



def contact_create(request, template_name='contact.html'):
    if request.method == 'POST':
        try:
            contact = Contact(request.POST or None)
            contact.save()
            return render(request, template_name, {'data':contact})
        except Exception as e:
            return render(request, template_name, {'error': str(e)})


def contact_view(request, id, template_name='contact.html'):
    if request.method == 'GET':
        try:
            contact= get_object_or_404(Contact, id=id) 
            return render(request, template_name, {'object':contact})
        except Exception as e:
            return render(request, template_name, {'error': str(e)})


def contact(request):
    return render(request, 'contact.html')