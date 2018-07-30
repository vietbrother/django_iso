# from .models import Member
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from .models import Organization

from rest_framework import viewsets
from orgManager.serializers import OrganizationSerializer

from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from rest_framework.renderers import JSONRenderer
from rest_framework.parsers import JSONParser
from orgManager.models import Organization
import json


# Create your views here.
@login_required
def index(request):
    # members = Member.objects.all()
    # context = {'members': members}
    # organization = Organization().dump_bulk();
    # print(organization)
    treelist = {}
    treelist["list"] = []
    organization = Organization.objects.all();
    for val in organization:
        organization_info = {}
        organization_info['id'] = str(val.id)
        organization_info['parent'] = val.parent_id
        organization_info['text'] = val.name
        organization_info['type'] = "root" if val.parent_id == "#" else "default";
        treelist["list"].append(organization_info)

    print(treelist);
    context = {'treelist': json.dumps(treelist)}
    return render(request, 'organization/index.html', context)


# @login_required(login_url="login/")
@login_required
def add(request, id):
    context = {'parentIdNode': id}
    return render(request, 'organization/add.html', context)


# @login_required(login_url="login/")
@login_required
def create(request):
    organization = Organization(name=request.POST['name'],
                                description=request.POST['description'],
                                parent_id=request.POST['parentIdNode'])
    organization.save()
    return redirect('/organization')


# @login_required(login_url="login/")
@login_required
def edit(request, id):
    organization = Organization.objects.get(id=id)
    context = {'organization': organization}
    return render(request, 'organization/edit.html', context)


# @login_required(login_url="login/")
@login_required
def update(request, id):
    organization = Organization.objects.get(id=id)
    organization.name = request.POST['name']
    organization.description = request.POST['description']
    organization.save()
    return redirect('/organization/')


# @login_required
@login_required
def delete(request, id):
    organization = Organization.objects.get(id=id)
    organization.delete()
    return redirect('/organization/')


@csrf_exempt
def org_list(request):
    """
    List all code Organizations, or create a new Organization.
    """
    if request.method == 'GET':
        Organizations = Organization.objects.all()
        serializer = OrganizationSerializer(Organizations, many=True)
        return JsonResponse(serializer.data, safe=False)

    elif request.method == 'POST':
        data = JSONParser().parse(request)
        serializer = OrganizationSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data, status=201)
        return JsonResponse(serializer.errors, status=400)


@csrf_exempt
def org_detail(request, pk):
    """
    Retrieve, update or delete a code Organization.
    """
    try:
        organization = Organization.objects.get(pk=pk)
    except Organization.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'GET':
        serializer = OrganizationSerializer(organization)
        return JsonResponse(serializer.data)

    elif request.method == 'PUT':
        data = JSONParser().parse(request)
        serializer = OrganizationSerializer(organization, data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data)
        return JsonResponse(serializer.errors, status=400)

    elif request.method == 'DELETE':
        organization.delete()
        return HttpResponse(status=204)


class OrganizationViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Organization.objects.all()
    serializer_class = OrganizationSerializer
