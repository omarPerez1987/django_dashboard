from django import forms
from website.models import *
from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from website.models import Contact
from website.models import Booking

class ContactForm(forms.ModelForm):
    class Meta:
        model = Contact
        fields = ['name', 'last_name', 'email', 'telephone', 'review']
        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-contact__form__column__box__input', 'placeholder': 'Your name'}),
            'last_name': forms.TextInput(attrs={'class': 'form-contact__form__column__box__input', 'placeholder': 'Your last name'}),
            'email': forms.TextInput(attrs={'class': 'form-contact__form__column__box__input', 'placeholder': 'Add email'}),
            'telephone': forms.TextInput(attrs={'class': 'form-contact__form__column__box__input', 'placeholder': 'Add telephone'}),
            'review': forms.Textarea(attrs={'class': 'form-contact__form__flex__boxarea__textarea', 'cols': 30, 'rows': 10, 'placeholder': 'Your comment about us'})
        }

class BookingForm(forms.ModelForm):
    class Meta:
        model = Booking
        fields = ['name', 'checkin', 'checkout', 'notes']
        widgets = {
            'name': forms.TextInput(attrs={'class':'info-check__container__check__form__input', 'placeholder': 'Your name'}),
            'checkin': forms.DateInput(attrs={'class':'info-check__container__check__form__input','type': 'date'}),
            'checkout': forms.DateInput(attrs={'class':'info-check__container__check__form__input','type': 'date'}),
            'notes': forms.Textarea(attrs={'class': 'info-check__container__check__form__textarea', 'cols': 30, 'rows': 10, 'placeholder': 'Your message'})
        }

class UserForm(UserCreationForm):
    first_name = forms.CharField(max_length=30, required=True)
    last_name = forms.CharField(max_length=30, required=True)
    email = forms.EmailField(max_length=254, help_text='Required. Inform a valid email address.')

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'password1', 'password2')
