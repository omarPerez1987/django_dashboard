from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from dashboard.forms import UserForm
from django.urls import reverse_lazy
from django.views import generic
from django.contrib.auth.views import LoginView
from django.shortcuts import redirect

class Login(LoginView):
    template_name = 'registration/login.html'

    def dispatch(self, request, *args, **kwargs):
        if self.request.user.is_authenticated:
            return redirect('profile') 
        return super().dispatch(request, *args, **kwargs)



class Sign_up(generic.CreateView):
    form_class = UserForm
    success_url = reverse_lazy("login")
    template_name = "registration/sign_up.html"