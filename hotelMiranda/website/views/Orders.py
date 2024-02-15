from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
from django.contrib.auth.mixins import LoginRequiredMixin
from website.models import Order

class OrderListView(LoginRequiredMixin, ListView):
    model = Order
    template_name = 'orders/order_list.html'
    context_object_name = 'orders'

    def get_queryset(self):
        return Order.objects.filter(user=self.request.user)

class OrderCreateView(LoginRequiredMixin, CreateView):
    model = Order
    fields = ['room_id', 'type', 'description']
    template_name = 'orders/order_form.html'
    success_url = reverse_lazy('order_list')

    def form_valid(self, form):
        form.instance.user = self.request.user
        room_id = form.cleaned_data['room_id']
        form.instance.room_id = room_id
        return super().form_valid(form)

class OrderUpdateView(LoginRequiredMixin, UpdateView):
    model = Order
    fields = ['type', 'description']
    template_name = 'orders/order_update.html'
    success_url = reverse_lazy('order_list')

class OrderDeleteView(LoginRequiredMixin, DeleteView):
    model = Order
    template_name = 'orders/order_delete.html'
    success_url = reverse_lazy('order_list')