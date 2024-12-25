from django.shortcuts import render
from back.models import SecServiceModel
import datetime
import time
from django.http import JsonResponse

# Create your views here.

def index(request):
    obj=SecServiceModel.objects.all()
    print("obj:", obj)
    for i in obj:
        #print(i.start_time)
        #print("i = ", i.start_time, " = ", datetime.datetime.fromtimestamp(i.start_time).strftime('%Y-%m-%d %H:%M:%S'))
        if (i.start_time != 0):
            i.start_time = datetime.datetime.fromtimestamp(i.start_time).strftime('%Y-%m-%d %H:%M:%S')
        if (i.end_time != 0):
            i.end_time = datetime.datetime.fromtimestamp(i.end_time).strftime('%Y-%m-%d %H:%M:%S')
    context={
        "obj":obj
    }
    print("context", context)
    return render(request, "index.html", context)


def get_services(request):
    obj = SecServiceModel.objects.all()
    services = []
    for i in obj:
        services.append({
            "service_identifier": i.service_identifier,
            "service_name": i.service_name,
            "module_status": i.module_status,
            "operation_type": i.operation_type,
            "data_class": i.data_class,
            "data_identifier": i.data_identifier,
            "start_time": datetime.datetime.fromtimestamp(i.start_time).strftime('%Y-%m-%d %H:%M:%S') if i.start_time != 0 else '',
            "end_time": datetime.datetime.fromtimestamp(i.end_time).strftime('%Y-%m-%d %H:%M:%S') if i.end_time != 0 else '',
            "number_of_copy": i.number_of_copy,
            "ip_address": i.ip_address
        })
    return JsonResponse(services, safe=False)