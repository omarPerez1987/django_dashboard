from django import forms
from dashboard.models import *

from django import forms
from dashboard.models import Contact

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
