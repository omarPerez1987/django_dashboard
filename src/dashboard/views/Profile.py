from django.views.generic import TemplateView

class UserProfileView(TemplateView):
    template_name = 'profile.html'

    def get_context_data(self, **kwargs):
        print(**kwargs)
        context = super().get_context_data(**kwargs)
        context['user'] = self.request.user
        return context