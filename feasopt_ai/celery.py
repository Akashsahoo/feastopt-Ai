import os
from celery import Celery
os._Environ.setdefault('DJANGO_SETTINGS_MODULE','feasopt_ai.settings')
app=Celery('feasopt_ai')
app.config_from_object('django.conf:settings', namespace='CELERY')
app.autodiscover_tasks()

