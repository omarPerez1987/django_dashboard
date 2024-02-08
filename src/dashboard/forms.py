from django import forms
from dashboard.models import *
from django import forms
from dashboard.models import Contact
from dashboard.models import Booking

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
