for reminder of notification
i made four sql table
User,Truck,Notifications,User_Truck_Notifications
in User_Truck_Notification i made three foreign keys
User_id,Truck_id,Notifications_id
after that i made three simple method for sign in ,sign up
and also check all notifications 
for making reminder i have choosen make dictonary for check exact days 7 ,15 ,30 
i have used rabbitmq for server and celery for sending periodic function to check every night 
at 12 am for expiry date of license
dependecies are :
install celery , rabbitmq, django-celery
