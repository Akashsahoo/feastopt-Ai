from django.shortcuts import render,HttpResponse,redirect
from .models import  User,Truck,Notifications,UserTruckNotifications
from datetime import datetime,timedelta
from django.core.mail import send_mail
from django.contrib.auth import settings
from celery.schedules import crontab
from celery.task import periodic_task




def index(request):
    render(request,'index.html')



# Create your views here.
def signin(request):
    if request.method=='GET':
        return render(request,'signin.html',{})
    else:
        email = request.POST['email']
        password = request.POST['password']
        try:
          if User.objects.get(email=email,password=password):
             request.session['id']=User.objects.get(email=email,password=password).id
             return redirect('truckreminder:notifications')
        except:
            return HttpResponse('unsucessful')
def signup(request):
    if request.method == 'GET':
        return render(request,'signup.html',{})
    else:
        name=request.POST['name']
        password=request.POST['password']
        email=request.POST['email']
        if(User.objects.filter(email=email).exists()):
            return HttpResponse("User already exists")
        else:
            user=User(
                name=name,
                email=email,
                password=password,
            )
            user.save()

            print('succefully sign up')
            return redirect('signin')

@periodic_task(run_everyday=crontab(hour=0,min=0))
def sendnotifictions()  :
    dates = {'7': (datetime.now() + timedelta(days=7)).strftime("%Y-%m-%d"),
             '15': (datetime.now() + timedelta(days=15)).strftime("%Y-%m-%d"),
             '30': (datetime.now() + timedelta(days=30)).strftime("%Y-%m-%d")
             }
    Trucks=Truck.objects.all()
    for truck in Trucks:
        for date in dates:
            if str(dates[date]) == str(truck.insurance_date):
                user=User.objects.get(email=truck.customer_email)
                send_mail("Feasoptai",
                          'please update your,s truck insurance papers which no is' + str(truck.truckno) + '  ' + str(
                              date) + "days are remaining to expire",
                          settings.EMAIL_HOST_USER, [user.email],
                          fail_silently=False)
                notification = Notifications(
                    message='please update your truck insurance papers which no is' + str(truck.truckno) + '  ' + str(
                        date) + "days are remaining to expire")
                notification.save()
                UserTruckNotifications(user_id=user, notifications_id=notification, truck_id=truck).save()






def checknotifications(request):
    user = User.objects.get(id=request.session['id'])
    usertrucknotifications=UserTruckNotifications.objects.filter(user_id=user)
    print(usertrucknotifications)
    notifications_list=[]

    for usertrucknotification in usertrucknotifications:
        print(usertrucknotification.notifications_id.id)
        notification=Notifications.objects.get(id=int(usertrucknotification.notifications_id.id))
        print(notification.message)
        notifications_list.append(notification.message)
    notifications_list.reverse()
    print(notifications_list)

    return render(request,'notifications.html',{'notifications': notifications_list,})
