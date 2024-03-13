from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from website.forms import UserForm
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
    template_name = 'registration/sign_up.html'
    success_url = reverse_lazy('login')

    def form_valid(self, form):
        response = super().form_valid(form)
        user = form.save(commit=False)
        user.username = form.cleaned_data['email']
        user.save()
        return response