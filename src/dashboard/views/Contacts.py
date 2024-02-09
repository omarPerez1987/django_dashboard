from django.shortcuts import render, redirect
from dashboard.models import *
from dashboard.forms import *
from django.contrib import messages 
from django.shortcuts import redirect
from datetime import datetime

def contact_create(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            contact = form.save(commit=False)
            contact.photo = 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/857.jpg'
            contact.date = datetime.now().strftime('%Y-%m-%d')
            contact.hour = datetime.now().strftime('%H:%M:%S')
            contact.archived = False

            contact.save()
            messages.success(request, 'El formulario se ha enviado con éxito.')
            return redirect('contacts')
        else:
            messages.error(request, 'No se ha podido enviar el formulario.')
    else:
        form = ContactForm()

    return render(request, 'contact.html', {'form': form})
