from django.conf.urls import url, include
from . import views

from rest_framework import routers
# from orgManager import views

# router = routers.DefaultRouter()
# router.register(r'org', views.OrganizationViewSet)

urlpatterns= [
    url(r'^$', views.index, name='index'),
    url(r'^add/(?P<id>\d+)$', views.add, name='add'),
    url(r'^add/create$', views.create, name='create'),
    url(r'^edit/(?P<id>\d+)$', views.edit, name='edit'),
    url(r'^edit/update/(?P<id>\d+)$', views.update, name='update'),
    url(r'^delete/(?P<id>\d+)$', views.delete, name='delete'),

    # api rest
    # url(r'^', include(router.urls)),
    # url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    url(r'^list/$', views.org_list),
    url(r'^detail/(?P<pk>[0-9]+)/$', views.org_detail),
]