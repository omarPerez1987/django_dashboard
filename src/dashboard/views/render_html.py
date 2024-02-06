from django.shortcuts import render

def home_html(request):
    return render(request, 'index.html')


def about_html(request):
    return render(request, 'about.html')


