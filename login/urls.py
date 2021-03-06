from django.conf.urls import url
from django.contrib import admin
from django.contrib.auth import views as auth_views
from django.views.generic.base import TemplateView

from django.conf.urls import include
from django.contrib.auth.decorators import login_required, permission_required
# from crud import views

urlpatterns = [
    url(r'^$', TemplateView.as_view(template_name='home.html'), name='home'),
    url(r'^login/$', auth_views.login, {'template_name': 'login.html'}, name='login'),
    url(r'^logout/$', auth_views.logout, {'template_name': 'logged_out.html'}, name='logout'),

    url(r'^crud/', include('crud.urls')),
    url(r'^admin/', admin.site.urls),
    url(r'^organization/', include('orgManager.urls')),

]
