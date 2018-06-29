##https://github.com/sibtc/simple-django-login.git

---------------------------------------------------------------
### Flow code moi
---------------------------------------------------------------
### 1. vao thu muc django_iso
### 2. tao app
python manage.py startapp <app_name>
VD : 	python manage.py startapp employee  
### 3. Them app vua tao trong file settings.py
//them application create o buoc 2
INSTALLED_APPS = [
    ....
    'employee',
]

//them vao file urls.py o thu muc project tong (django_iso)
urlpatterns = [
	...
    url(r'^employee/', include('crud.urls')),
]

### 4. Vao thu muc app vua tao o tren (thu muc employee)
### 5. Create a Model trong file models.py
### 6. Create a ModelForm
// forms.py
### 7. Tao ham hien thi trong views.py
### 8. Tao lien ket giua trang html va function viet trong view (routing url) trong urls.py
### 9. Tao cac file page trong thu muc templates
### 10. Cac file js/css/image dat trong thu muc static neu can dung


------------------------------------------------------------------
### RUN
------------------------------------------------------------------

### 1. Run migrations:
    python manage.py migrate

### 2. Run the server:
    python manage.py runserver

### 3. And open 127.0.0.1:8000/ in your web browser by admin/admin123

### NOTE
 Create a user 
    python manage.py createsuperuser