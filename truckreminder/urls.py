from django.conf.urls import url
from . import views
app_name='truckreminder'
urlpatterns = [
      url(r'^signin/',views.signin, name='signin'),
      url(r'^signup/',views.signup, name='signup'),
      url(r'^notifications/',views.checknotifications, name='notifications'),
      url(r'^index/',views.index,name='index')

]