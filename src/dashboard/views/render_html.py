from django.shortcuts import render

def render_html(request):
    return render(request, 'contact.html')
