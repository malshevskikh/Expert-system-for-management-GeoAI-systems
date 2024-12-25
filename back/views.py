from django.shortcuts import render
from .models import ServiceModel, SecServiceModel
from django.http import JsonResponse
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.parsers import JSONParser
from .serializers import SecServiceSerializer
import datetime
import time
import requests
import sys
import os
from module_activator.cnt_vrs2 import launch_expert_system


#Обновить данные в БД
@api_view(['PATCH'])
def update_data_of_service(request):
    time1 = time.time()
    try:
        serv_ident = request.data['service_identifier']
        serv_name = request.data['service_name']
        serv_data_class = request.data['data_class']
        serv_data_identifier = request.data['data_identifier']
        valid_service_sender = SecServiceModel.objects.get(service_identifier=serv_ident, service_name = serv_name)
        
        print("request:", request.data)
        print("valid_service:", valid_service_sender)
        reciever = launch_expert_system(serv_ident, serv_data_class, serv_data_identifier)
        print("reciever:", reciever)
        valid_service_reciever = SecServiceModel.objects.get(service_identifier = reciever[0])
        print("valid_service_reciever", valid_service_reciever)
        dict = {}
        
        for i in range(0, len(reciever), 2):
            dict[reciever[i]] = reciever[i + 1]

        if valid_service_sender and valid_service_reciever is not None:

            # Отправка информации о модуле-получателе в модуль-отправитель
            info_dto = {
                "service_identifier": valid_service_reciever.data_identifier,
                "ip_address": valid_service_reciever.ip_address,
                "number_of_copy": valid_service_reciever.number_of_copy
            }
            url = "http://" + valid_service_sender.ip_address + ":80"
            #url = "http://" + valid_service_sender.ip_address + ":80/route"
            print("url", url)
            send_to_sender = requests.post(url, data=info_dto)
            # Изменение статуса подсистем reciever и sender
            valid_service_sender.module_status = SecServiceModel.ServicesStatus.REST
            valid_service_reciever.module_status = SecServiceModel.ServicesStatus.WORK
            # Изменение идентификатора данных reciever
            valid_service_reciever.data_identifier = serv_data_identifier
            # Изменение start time и end time
            cur_time = int(time.time())
            print("cur_time:", cur_time)
            #valid_service_sender.end_time = cur_time
            valid_service_reciever.start_time = cur_time
            valid_service_reciever.end_time = 0
            # Сохранение данных

            valid_service_sender.save()
            valid_service_reciever.save()

            time2 = time.time()
            exec_time = time2 - time1
            dict1 = {
                'execute_time': exec_time
            }
            print("время выполнения в секундах: ", exec_time)
            info_dto.update(dict1)
            return JsonResponse(info_dto,  status=status.HTTP_204_NO_CONTENT, safe=False)
    except:
        return JsonResponse({'message': 'Исключение'}, status=status.HTTP_404_NOT_FOUND)
    return JsonResponse(status=status.HTTP_200_OK, safe=False)


#Разместить данные в БД
@api_view(['POST'])
def add_data_of_service(request):
    if (request.data['module_status'] == 'Отдых'):
        mod_status = SecServiceModel.ServicesStatus.REST
    elif (request.data['module_status'] == 'В работе'):
        mod_status = SecServiceModel.ServicesStatus.WORK
    if request.data['number_of_copy'] is not None:
        nmb_of_cp = request.data['number_of_copy']
    else:
        nmb_of_cp = 0

    data_of_req = {
        "service_identifier": request.data['service_identifier'],
        "service_name": request.data['service_name'],
        "module_status": mod_status,
        "operation_type": request.data['operation_type'],
        "data_class": request.data['data_class'],
        "data_identifier": request.data['data_identifier'],
        "start_time": request.data['start_time'],
        "end_time": request.data['end_time'],
        "number_of_copy": nmb_of_cp,
        "ip_address": request.data['ip_address'],
    }
    print(data_of_req)
    serializer = SecServiceSerializer(data = data_of_req)
    print("serializer:", serializer)
    if serializer.is_valid():
        print("Всё корректно!")
        serializer.save()
        return JsonResponse(serializer.data, status=status.HTTP_201_CREATED, safe=False)
    else:
        print("Не корректно!")
        return JsonResponse(serializer.errors, status=status.HTTP_404_NOT_FOUND)
    

#Разместить данные в БД
@api_view(['GET'])
def standart_info_checking(request):
    time1 = time.time()
    try:
        serv_ident = request.data['service_identifier']
        serv_name = request.data['service_name']
        serv_data_class = request.data['data_class']
        serv_data_identifier = request.data['data_identifier']
        service_reciever = request.data['service_reciever']
        print("service_reciever - ", service_reciever, "serv_ident -", serv_ident)
        valid_service_reciever = SecServiceModel.objects.get(service_identifier=service_reciever)
        info_dto = {
                "service_reciever_identifier": valid_service_reciever.service_identifier,
                "module_status": valid_service_reciever.module_status
        }
        print("info_dto", info_dto)
        if  (valid_service_reciever.module_status == "RST") or (valid_service_reciever.module_status == "WRK"):
            time2 = time.time()
            exec_time = time2 - time1
            dict1 = {
                'execute_time': exec_time
            }
            info_dto.update(dict1)
        print("info_dto2: ", info_dto)
        return JsonResponse(info_dto,  status=status.HTTP_200_OK, safe=False)
    except:
        return JsonResponse({'message': 'Исключение'}, status=status.HTTP_404_NOT_FOUND)
# Create your views here.
