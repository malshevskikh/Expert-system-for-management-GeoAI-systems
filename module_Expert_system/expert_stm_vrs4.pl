:- use_module(library(odbc)).

% Предикат для подключения к базе данных PostgreSQL
connect_to_database :-
    odbc_connect('TestConnect', Connection, [user(maksimalsevskih), password(mafree)]).

% Предикат для извлечения данных из базы данных и создания фактов
load_data_from_database :-
    odbc_connect('TestConnect', Connection, [user(maksimalsevskih), password(mafree)]),
    
    % Копии подсистем верификации
    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV0''', row(ServiceIdentifierMV0, ModuleStatusMV0, OperationTypeMV0, DataClassMV0, DataIdentifierMV0, NumberOfCopyMV0)),
    assertz(mdl_vrf0(ServiceIdentifierMV0, ModuleStatusMV0, OperationTypeMV0, DataClassMV0, DataIdentifierMV0, NumberOfCopyMV0)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV0, ModuleStatusMV0, OperationTypeMV0, DataClassMV0, DataIdentifierMV0, NumberOfCopyMV0]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV1''', row(ServiceIdentifierMV1, ModuleStatusMV1, OperationTypeMV1, DataClassMV1, DataIdentifierMV1, NumberOfCopyMV1)),
    assertz(mdl_vrf1(ServiceIdentifierMV1, ModuleStatusMV1, OperationTypeMV1, DataClassMV1, DataIdentifierMV1, NumberOfCopyMV1)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV1, ModuleStatusMV1, OperationTypeMV1, DataClassMV1, DataIdentifierMV1, NumberOfCopyMV1]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV2''', row(ServiceIdentifierMV2, ModuleStatusMV2, OperationTypeMV2, DataClassMV2, DataIdentifierMV2, NumberOfCopyMV2)),
    assertz(mdl_vrf2(ServiceIdentifierMV2, ModuleStatusMV2, OperationTypeMV2, DataClassMV2, DataIdentifierMV2, NumberOfCopyMV2)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV2, ModuleStatusMV2, OperationTypeMV2, DataClassMV2, DataIdentifierMV2, NumberOfCopyMV2]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV3''', row(ServiceIdentifierMV3, ModuleStatusMV3, OperationTypeMV3, DataClassMV3, DataIdentifierMV3, NumberOfCopyMV3)),
    assertz(mdl_vrf3(ServiceIdentifierMV3, ModuleStatusMV3, OperationTypeMV3, DataClassMV3, DataIdentifierMV3, NumberOfCopyMV3)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV3, ModuleStatusMV3, OperationTypeMV3, DataClassMV3, DataIdentifierMV3, NumberOfCopyMV3]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV4''', row(ServiceIdentifierMV4, ModuleStatusMV4, OperationTypeMV4, DataClassMV4, DataIdentifierMV4, NumberOfCopyMV4)),
    assertz(mdl_vrf4(ServiceIdentifierMV4, ModuleStatusMV4, OperationTypeMV4, DataClassMV4, DataIdentifierMV4, NumberOfCopyMV4)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV4, ModuleStatusMV4, OperationTypeMV4, DataClassMV4, DataIdentifierMV4, NumberOfCopyMV4]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV5''', row(ServiceIdentifierMV5, ModuleStatusMV5, OperationTypeMV5, DataClassMV5, DataIdentifierMV5, NumberOfCopyMV5)),
    assertz(mdl_vrf5(ServiceIdentifierMV5, ModuleStatusMV5, OperationTypeMV5, DataClassMV5, DataIdentifierMV5, NumberOfCopyMV5)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV5, ModuleStatusMV5, OperationTypeMV5, DataClassMV5, DataIdentifierMV5, NumberOfCopyMV5]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV6''', row(ServiceIdentifierMV6, ModuleStatusMV6, OperationTypeMV6, DataClassMV6, DataIdentifierMV6, NumberOfCopyMV6)),
    assertz(mdl_vrf6(ServiceIdentifierMV6, ModuleStatusMV6, OperationTypeMV6, DataClassMV6, DataIdentifierMV6, NumberOfCopyMV6)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV6, ModuleStatusMV6, OperationTypeMV6, DataClassMV6, DataIdentifierMV6, NumberOfCopyMV6]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV7''', row(ServiceIdentifierMV7, ModuleStatusMV7, OperationTypeMV7, DataClassMV7, DataIdentifierMV7, NumberOfCopyMV7)),
    assertz(mdl_vrf7(ServiceIdentifierMV7, ModuleStatusMV7, OperationTypeMV7, DataClassMV7, DataIdentifierMV7, NumberOfCopyMV7)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV7, ModuleStatusMV7, OperationTypeMV7, DataClassMV7, DataIdentifierMV7, NumberOfCopyMV7]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV8''', row(ServiceIdentifierMV8, ModuleStatusMV8, OperationTypeMV8, DataClassMV8, DataIdentifierMV8, NumberOfCopyMV8)),
    assertz(mdl_vrf8(ServiceIdentifierMV8, ModuleStatusMV8, OperationTypeMV8, DataClassMV8, DataIdentifierMV8, NumberOfCopyMV8)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV8, ModuleStatusMV8, OperationTypeMV8, DataClassMV8, DataIdentifierMV8, NumberOfCopyMV8]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV9''', row(ServiceIdentifierMV9, ModuleStatusMV9, OperationTypeMV9, DataClassMV9, DataIdentifierMV9, NumberOfCopyMV9)),
    assertz(mdl_vrf9(ServiceIdentifierMV9, ModuleStatusMV9, OperationTypeMV9, DataClassMV9, DataIdentifierMV9, NumberOfCopyMV9)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV9, ModuleStatusMV9, OperationTypeMV9, DataClassMV9, DataIdentifierMV9, NumberOfCopyMV9]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV10''', row(ServiceIdentifierMV10, ModuleStatusMV10, OperationTypeMV10, DataClassMV10, DataIdentifierMV10, NumberOfCopyMV10)),
    assertz(mdl_vrf10(ServiceIdentifierMV10, ModuleStatusMV10, OperationTypeMV10, DataClassMV10, DataIdentifierMV10, NumberOfCopyMV10)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV10, ModuleStatusMV10, OperationTypeMV10, DataClassMV10, DataIdentifierMV10, NumberOfCopyMV10]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV11''', row(ServiceIdentifierMV11, ModuleStatusMV11, OperationTypeMV11, DataClassMV11, DataIdentifierMV11, NumberOfCopyMV11)),
    assertz(mdl_vrf11(ServiceIdentifierMV11, ModuleStatusMV11, OperationTypeMV11, DataClassMV11, DataIdentifierMV11, NumberOfCopyMV11)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV11, ModuleStatusMV11, OperationTypeMV11, DataClassMV11, DataIdentifierMV11, NumberOfCopyMV11]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV12''', row(ServiceIdentifierMV12, ModuleStatusMV12, OperationTypeMV12, DataClassMV12, DataIdentifierMV12, NumberOfCopyMV12)),
    assertz(mdl_vrf12(ServiceIdentifierMV12, ModuleStatusMV12, OperationTypeMV12, DataClassMV12, DataIdentifierMV12, NumberOfCopyMV12)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV12, ModuleStatusMV12, OperationTypeMV12, DataClassMV12, DataIdentifierMV12, NumberOfCopyMV12]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV13''', row(ServiceIdentifierMV13, ModuleStatusMV13, OperationTypeMV13, DataClassMV13, DataIdentifierMV13, NumberOfCopyMV13)),
    assertz(mdl_vrf13(ServiceIdentifierMV13, ModuleStatusMV13, OperationTypeMV13, DataClassMV13, DataIdentifierMV13, NumberOfCopyMV13)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV13, ModuleStatusMV13, OperationTypeMV13, DataClassMV13, DataIdentifierMV13, NumberOfCopyMV13]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV14''', row(ServiceIdentifierMV14, ModuleStatusMV14, OperationTypeMV14, DataClassMV14, DataIdentifierMV14, NumberOfCopyMV14)),
    assertz(mdl_vrf14(ServiceIdentifierMV14, ModuleStatusMV14, OperationTypeMV14, DataClassMV14, DataIdentifierMV14, NumberOfCopyMV14)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV14, ModuleStatusMV14, OperationTypeMV14, DataClassMV14, DataIdentifierMV14, NumberOfCopyMV14]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV15''', row(ServiceIdentifierMV15, ModuleStatusMV15, OperationTypeMV15, DataClassMV15, DataIdentifierMV15, NumberOfCopyMV15)),
    assertz(mdl_vrf15(ServiceIdentifierMV15, ModuleStatusMV15, OperationTypeMV15, DataClassMV15, DataIdentifierMV15, NumberOfCopyMV15)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV15, ModuleStatusMV15, OperationTypeMV15, DataClassMV15, DataIdentifierMV15, NumberOfCopyMV15]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV16''', row(ServiceIdentifierMV16, ModuleStatusMV16, OperationTypeMV16, DataClassMV16, DataIdentifierMV16, NumberOfCopyMV16)),
    assertz(mdl_vrf16(ServiceIdentifierMV16, ModuleStatusMV16, OperationTypeMV16, DataClassMV16, DataIdentifierMV16, NumberOfCopyMV16)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV16, ModuleStatusMV16, OperationTypeMV16, DataClassMV16, DataIdentifierMV16, NumberOfCopyMV16]),


    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV17''', row(ServiceIdentifierMV17, ModuleStatusMV17, OperationTypeMV17, DataClassMV17, DataIdentifierMV17, NumberOfCopyMV17)),
    assertz(mdl_vrf17(ServiceIdentifierMV17, ModuleStatusMV17, OperationTypeMV17, DataClassMV17, DataIdentifierMV17, NumberOfCopyMV17)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV17, ModuleStatusMV17, OperationTypeMV17, DataClassMV17, DataIdentifierMV17, NumberOfCopyMV17]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV18''', row(ServiceIdentifierMV18, ModuleStatusMV18, OperationTypeMV18, DataClassMV18, DataIdentifierMV18, NumberOfCopyMV18)),
    assertz(mdl_vrf18(ServiceIdentifierMV18, ModuleStatusMV18, OperationTypeMV18, DataClassMV18, DataIdentifierMV18, NumberOfCopyMV18)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV18, ModuleStatusMV18, OperationTypeMV18, DataClassMV18, DataIdentifierMV18, NumberOfCopyMV18]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV19''', row(ServiceIdentifierMV19, ModuleStatusMV19, OperationTypeMV19, DataClassMV19, DataIdentifierMV19, NumberOfCopyMV19)),
    assertz(mdl_vrf19(ServiceIdentifierMV19, ModuleStatusMV19, OperationTypeMV19, DataClassMV19, DataIdentifierMV19, NumberOfCopyMV19)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV19, ModuleStatusMV19, OperationTypeMV19, DataClassMV19, DataIdentifierMV19, NumberOfCopyMV19]),

    % Остальные подсистемы
    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''DZZ0''', row(ServiceIdentifierDZZ, ModuleStatusDZZ, OperationTypeDZZ, DataClassDZZ, DataIdentifierDZZ, NumberOfCopyDZZ)),
    assertz(mdl_dzz0(ServiceIdentifierDZZ, ModuleStatusDZZ, OperationTypeDZZ, DataClassDZZ, DataIdentifierDZZ, NumberOfCopyDZZ)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierDZZ, ModuleStatusDZZ, OperationTypeDZZ, DataClassDZZ, DataIdentifierDZZ, NumberOfCopyDZZ]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStmTest''', row(ServiceIdentifierMUD, ModuleStatusMUD, OperationTypeMUD, DataClassMUD, DataIdentifierMUD, NumberOfCopyMUD)),
    assertz(mdl_ud0(ServiceIdentifierMUD, ModuleStatusMUD, OperationTypeMUD, DataClassMUD, DataIdentifierMUD, NumberOfCopyMUD)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMUD, ModuleStatusMUD, OperationTypeMUD, DataClassMUD, DataIdentifierMUD, NumberOfCopyMUD]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MM0''', row(ServiceIdentifierMM, ModuleStatusMM, OperationTypeMM, DataClassMM, DataIdentifierMM, NumberOfCopyMM)),
    assertz(mdl_meteo0(ServiceIdentifierMM, ModuleStatusMM, OperationTypeMM, DataClassMM, DataIdentifierMM, NumberOfCopyMM)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMM, ModuleStatusMM, OperationTypeMM, DataClassMM, DataIdentifierMM, NumberOfCopyMM]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MSl0''', row(ServiceIdentifierMSl0, ModuleStatusMSl0, OperationTypeMSl0, DataClassMSl0, DataIdentifierMSl0, NumberOfCopyMSl0)),
    assertz(mdl_soil0(ServiceIdentifierMSl0, ModuleStatusMSl0, OperationTypeMSl0, DataClassMSl0, DataIdentifierMSl0, NumberOfCopyMSl0)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMSl0, ModuleStatusMSl0, OperationTypeMSl0, DataClassMSl0, DataIdentifierMSl0, NumberOfCopyMSl0]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MD0''', row(ServiceIdentifierMD, ModuleStatusMD, OperationTypeMD, DataClassMD, DataIdentifierMD, NumberOfCopyMD)),
    assertz(mdl_dth0(ServiceIdentifierMD, ModuleStatusMD, OperationTypeMD, DataClassMD, DataIdentifierMD, NumberOfCopyMD)),
    format('Service Identifier : ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMD, ModuleStatusMD, OperationTypeMD, DataClassMD, DataIdentifierMD, NumberOfCopyMD]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MDAP0''', row(ServiceIdentifierMDAP, ModuleStatusMDAP, OperationTypeMDAP, DataClassMDAP, DataIdentifierMDAP, NumberOfCopyMDAP)),
    assertz(mdl_dap0(ServiceIdentifierMDAP, ModuleStatusMDAP, OperationTypeMDAP, DataClassMDAP, DataIdentifierMDAP, NumberOfCopyMDAP)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMDAP, ModuleStatusMDAP, OperationTypeMDAP, DataClassMDAP, DataIdentifierMDAP, NumberOfCopyMDAP]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MNSI0''', row(ServiceIdentifierMNSI, ModuleStatusNSI, OperationTypeNSI, DataClassNSI, DataIdentifierNSI, NumberOfCopyNSI)),
    assertz(mdl_nsi0(ServiceIdentifierMNSI, ModuleStatusNSI, OperationTypeNSI, DataClassNSI, DataIdentifierNSI, NumberOfCopyNSI)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMNSI, ModuleStatusNSI, OperationTypeNSI, DataClassNSI, DataIdentifierNSI, NumberOfCopyNSI]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MFE0''', row(ServiceIdentifierMFE, ModuleStatusMFE, OperationTypeMFE, DataClassMFE, DataIdentifierMFE, NumberOfCopyMFE)),
    assertz(mdl_fieldexp0(ServiceIdentifierMFE, ModuleStatusMFE, OperationTypeMFE, DataClassMFE, DataIdentifierMFE, NumberOfCopyMFE)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMFE, ModuleStatusMFE, OperationTypeMFE, DataClassMFE, DataIdentifierMFE, NumberOfCopyMFE]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MMd0''', row(ServiceIdentifierMMd, ModuleStatusMMd, OperationTypeMMd, DataClassMMd, DataIdentifierMMd, NumberOfCopyMMd)),
    assertz(mdl_mediad0(ServiceIdentifierMMd, ModuleStatusMMd, OperationTypeMMd, DataClassMMd, DataIdentifierMMd, NumberOfCopyMMd)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMMd, ModuleStatusMMd, OperationTypeMMd, DataClassMMd, DataIdentifierMMd, NumberOfCopyMMd]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MR0''', row(ServiceIdentifierMR0, ModuleStatusMR0, OperationTypeMR0, DataClassMR0, DataIdentifierMR0, NumberOfCopyMR0)),
    assertz(mdl_r0(ServiceIdentifierMR0, ModuleStatusMR0, OperationTypeMR0, DataClassMR0, DataIdentifierMR0, NumberOfCopyMR0)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMR0, ModuleStatusMR0, OperationTypeMR0, DataClassMR0, DataIdentifierMR0, NumberOfCopyMR0]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MCls0''', row(ServiceIdentifierMCls0, ModuleStatusMCls0, OperationTypeMCls0, DataClassMCls0, DataIdentifierMCls0, NumberOfCopyMCls0)),
    assertz(mdl_cls0(ServiceIdentifierMCls0, ModuleStatusMCls0, OperationTypeMCls0, DataClassMCls0, DataIdentifierMCls0, NumberOfCopyMCls0)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMCls0, ModuleStatusMCls0, OperationTypeMCls0, DataClassMCls0, DataIdentifierMCls0, NumberOfCopyMCls0]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MGrd0''', row(ServiceIdentifierMGrd0, ModuleStatusMGrd0, OperationTypeMGrd0, DataClassMGrd0, DataIdentifierMGrd0, NumberOfCopyMGrd0)),
    assertz(mdl_grd0(ServiceIdentifierMGrd0, ModuleStatusMGrd0, OperationTypeMGrd0, DataClassMGrd0, DataIdentifierMGrd0, NumberOfCopyMGrd0)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMGrd0, ModuleStatusMGrd0, OperationTypeMGrd0, DataClassMGrd0, DataIdentifierMGrd0, NumberOfCopyMGrd0]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MP0''', row(ServiceIdentifierMP0, ModuleStatusMP0, OperationTypeMP0, DataClassMP0, DataIdentifierMP0, NumberOfCopyMP0)),
    assertz(mdl_p0(ServiceIdentifierMP0, ModuleStatusMP0, OperationTypeMP0, DataClassMP0, DataIdentifierMP0, NumberOfCopyMP0)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMP0, ModuleStatusMP0, OperationTypeMP0, DataClassMP0, DataIdentifierMP0, NumberOfCopyMP0]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MMod0''', row(ServiceIdentifierMMod0, ModuleStatusMMod0, OperationTypeMMod0, DataClassMMod0, DataIdentifierMMod0, NumberOfCopyMMod0)),
    assertz(mdl_models0(ServiceIdentifierMMod0, ModuleStatusMMod0, OperationTypeMMod0, DataClassMMod0, DataIdentifierMMod0, NumberOfCopyMMod0)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMMod0, ModuleStatusMMod0, OperationTypeMMod0, DataClassMMod0, DataIdentifierMMod0, NumberOfCopyMMod0]),

    odbc_disconnect(Connection).



% Правило для передачи данных от mdl_fieldexp0 к mdl_p0, проверяя статус mdl_p0
передать_данные('MFE0', mdl_p0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_p0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_mup' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_p0 к mdl_vrf0, проверяя статус mdl_vrf0
передать_данные('MP0', mdl_vrf0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_p0 к mdl_vrf1, проверяя статус mdl_vrf1
передать_данные('MP0', mdl_vrf1, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf1(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_p0 к mdl_vrf2, проверяя статус mdl_vrf2
передать_данные('MP0', mdl_vrf2, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf2(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_p0 к mdl_vrf3, проверяя статус mdl_vrf3
передать_данные('MP0', mdl_vrf3, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf3(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_p0 к mdl_vrf4, проверяя статус mdl_vrf4
передать_данные('MP0', mdl_vrf4, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf4(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_p0 к mdl_vrf5, проверяя статус mdl_vrf5
передать_данные('MP0', mdl_vrf5, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf5(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_p0 к mdl_vrf6, проверяя статус mdl_vrf6
передать_данные('MP0', mdl_vrf6, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf6(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_p0 к mdl_vrf7, проверяя статус mdl_vrf7
передать_данные('MP0', mdl_vrf7, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf7(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_p0 к mdl_vrf8, проверяя статус mdl_vrf8
передать_данные('MP0', mdl_vrf8, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf8(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_p0 к mdl_vrf9, проверяя статус mdl_vrf9
передать_данные('MP0', mdl_vrf9, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf9(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_p0 к mdl_vrf10, проверяя статус mdl_vrf10
передать_данные('MP0', mdl_vrf10, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf10(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_p0 к mdl_vrf11, проверяя статус mdl_vrf11
передать_данные('MP0', mdl_vrf11, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf11(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_p0 к mdl_vrf12, проверяя статус mdl_vrf12
передать_данные('MP0', mdl_vrf12, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf12(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_p0 к mdl_vrf13, проверяя статус mdl_vrf13
передать_данные('MP0', mdl_vrf13, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf13(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_p0 к mdl_vrf14, проверяя статус mdl_vrf14
передать_данные('MP0', mdl_vrf14, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf14(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_p0 к mdl_vrf15, проверяя статус mdl_vrf15
передать_данные('MP0', mdl_vrf15, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf15(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_p0 к mdl_vrf16, проверяя статус mdl_vrf16
передать_данные('MP0', mdl_vrf16, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf16(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_p0 к mdl_vrf17, проверяя статус mdl_vrf17
передать_данные('MP0', mdl_vrf17, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf17(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_p0 к mdl_vrf18, проверяя статус mdl_vrf18
передать_данные('MP0', mdl_vrf18, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf18(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_p0 к mdl_vrf19, проверяя статус mdl_vrf19
передать_данные('MP0', mdl_vrf19, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf19(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_vrf0 к mdl_dth0, проверяя статус mdl_dth0
передать_данные('MV0', mdl_dth0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_dth0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_dth' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_r0 к mdl_nsi0, проверяя статус mdl_nsi0
передать_данные('MR0', mdl_nsi0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_nsi0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_nsi' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_dzz0 к mdl_r0, проверяя статус mdl_r0
передать_данные('DZZ0', mdl_r0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_r0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_ds' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_dzz0 к mdl_dth0, проверяя статус mdl_dth0
передать_данные('DZZ0', mdl_dth0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_dth0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_dth' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_soil0 к mdl_dth0, проверяя статус mdl_dth0
передать_данные('MSI0', mdl_dth0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_dth0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_dth' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_meteo0 к mdl_dth0, проверяя статус mdl_dth0
передать_данные('MM0', mdl_dth0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_dth0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_dth' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_mediad0 к mdl_dth0, проверяя статус mdl_dth0
передать_данные('MMd0', mdl_dth0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    mdl_dth0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_dth' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_dap0 к mdl_models0, проверяя статус mdl_models0
передать_данные('MDAP0', mdl_models0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_models0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_mdl' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_dap0 к mdl_cls0, проверяя статус mdl_cls0
передать_данные('MDAP0', mdl_cls0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_cls0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_clf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_dap0 к mdl_grd0, проверяя статус mdl_grd0
передать_данные('MDAP0', mdl_grd0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_grd0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_grd' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_models0 к mdl_dth0, проверяя статус mdl_dth0
передать_данные('MMod0', mdl_dth0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_dth0(ServiceIdentifier, ModuleStatus, _, _,  DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_dth' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_dth0 к mdl_dap0, проверяя статус mdl_dap0
передать_данные('MD0', mdl_dap0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_dap0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n, Data Class: ~w~n', [ModuleStatus, DataIdentifier, DataClass]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_dap' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_dth0 к mdl_mediad0, проверяя статус mdl_mediad0
передать_данные('MD0', mdl_mediad0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_mediad0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_med' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_dth0 к mdl_meteo0, проверяя статус mdl_meteo0
передать_данные('MD0', mdl_meteo0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_meteo0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_met' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_dth0 к mdl_soil0, проверяя статус mdl_soil0
передать_данные('MD0', mdl_soil0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_soil0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_soil' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_dth0 к mdl_vrf0, проверяя статус mdl_vrf0
передать_данные('MD0', mdl_vrf0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_vrf0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_vrf' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от mdl_dth0 к mdl_dzz0, проверяя статус mdl_dzz0
передать_данные('MD0', mdl_dzz0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_dzz0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_dzz' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_cls0 к mdl_dap0, проверяя статус mdl_dap0
передать_данные('MCls0', mdl_dap0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_dap0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_dap' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от mdl_grd0 к mdl_dap0, проверяя статус mdl_dap0
передать_данные('MGrd0', mdl_dap0, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_dap0(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_dap' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].