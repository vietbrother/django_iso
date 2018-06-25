# from django.shortcuts import render, redirect
from .models import Member
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required


# Create your views here.
@login_required
def index(request):
    members = Member.objects.all()
    context = {'members': members}
    return render(request, 'crud/index.html', context)

# @login_required(login_url="login/")
@login_required
def create(request):
    member = Member(firstname=request.POST['firstname'], lastname=request.POST['lastname'])
    member.save()
    return redirect('/crud')

# @login_required(login_url="login/")
@login_required
def edit(request, id):
    members = Member.objects.get(id=id)
    context = {'members': members}
    return render(request, 'crud/edit.html', context)

# @login_required(login_url="login/")
@login_required
def update(request, id):
    member = Member.objects.get(id=id)
    member.firstname = request.POST['firstname']
    member.lastname = request.POST['lastname']
    member.save()
    return redirect('/crud/')

# @login_required
@login_required
def delete(request, id):
    member = Member.objects.get(id=id)
    member.delete()
    return redirect('/crud/')