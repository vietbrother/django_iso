from rest_framework import serializers
from . import models


class OrganizationSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = models.Organization
        fields = ('id', 'name', 'parent_id', 'description')
