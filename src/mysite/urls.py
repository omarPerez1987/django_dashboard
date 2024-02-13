from django.contrib import admin
from django.urls import path, include
from django.contrib.auth import views
from dashboard.views.Bookings import post_form_and_get_details
from dashboard.views.Contacts import *
from dashboard.views.Rooms import *
from dashboard.views.render_html import *
from dashboard.views.Login import *
from dashboard.views.Profile import *
from dashboard.views.Orders import *


urlpatterns = [
    path('admin/', admin.site.urls),
    path('accounts/login/', Login.as_view(), name='login'),
    path('accounts/logout/', login_required(views.LogoutView.as_view(template_name='registration/logout.html')), name='logout'),
    path('accounts/password_change/', login_required(views.PasswordChangeView.as_view(template_name='registration/password_change.html')), name='password_change'),
    path('accounts/password_change/done/', login_required(views.PasswordChangeDoneView.as_view(template_name='registration/password_change_done.html')), name='password_change_done'),
    path('accounts/password_reset/', views.PasswordResetView.as_view(template_name='registration/password_reset.html'), name='password_reset'),
    path('accounts/password_reset/done/', views.PasswordResetDoneView.as_view(template_name='registration/password_reset_done.html'), name='password_reset_done'),
    path('accounts/reset/<uidb64>/<token>/', views.PasswordResetConfirmView.as_view(template_name='registration/password_reset_confirm.html'), name='password_reset_confirm'),
    path('accounts/reset/done/', views.PasswordResetCompleteView.as_view(template_name='registration/password_reset_complete.html'), name='password_reset_complete'),
    path("accounts/signup/", Sign_up.as_view(), name="signup"),

    path('accounts/profile/', login_required(UserProfileView.as_view()), name='profile'),

     path('orders/', OrderListView.as_view(template_name='orders/order_list.html'), name='order_list'),
    path('orders/create/', OrderCreateView.as_view(template_name='orders/order_form.html'), name='order_create'),
    path('orders/<int:pk>/update/', OrderUpdateView.as_view(template_name='orders/order_update.html'), name='order_update'),
    path('orders/<int:pk>/delete/', OrderDeleteView.as_view(template_name='orders/order_delete.html'), name='order_delete'),
    
    
    
    path('', home_html, name='home'),
    path('about/', about_html, name='about'),


    path('rooms/', rooms_get_all, name='rooms'),
    path('rooms_list', rooms_available, name='rooms_list'),
    path('rooms_details/<int:id>/', post_form_and_get_details, name='room_details'),
    path('offers/', rooms_offers, name='offers'),
    path('contacts/', contact_create, name='contacts'),

]
