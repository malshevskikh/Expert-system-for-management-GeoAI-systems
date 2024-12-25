:- use_module(library(odbc)).

% Предикат для подключения к базе данных PostgreSQL
connect_to_database :-
    odbc_connect('TestConnect', Connection, [user(maksimalsevskih), password(mafree)]).

% Предикат для извлечения данных из базы данных и создания фактов
load_data_from_database :-
    odbc_connect('TestConnect', Connection, [user(maksimalsevskih), password(mafree)]),
    
    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MV0''', row(ServiceIdentifierMV0, ModuleStatusMV0, OperationTypeMV0, DataClassMV0, DataIdentifierMV0, NumberOfCopyMV0)),
    assertz(mdl_vrf0(ServiceIdentifierMV0, ModuleStatusMV0, OperationTypeMV0, DataClassMV0, DataIdentifierMV0, NumberOfCopyMV0)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMV0, ModuleStatusMV0, OperationTypeMV0, DataClassMV0, DataIdentifierMV0, NumberOfCopyMV0]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''DZZ0''', row(ServiceIdentifierDZZ, ModuleStatusDZZ, OperationTypeDZZ, DataClassDZZ, DataIdentifierDZZ, NumberOfCopyDZZ)),
    assertz(mdl_dzz0(ServiceIdentifierDZZ, ModuleStatusDZZ, OperationTypeDZZ, DataClassDZZ, DataIdentifierDZZ, NumberOfCopyDZZ)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierDZZ, ModuleStatusDZZ, OperationTypeDZZ, DataClassDZZ, DataIdentifierDZZ, NumberOfCopyDZZ]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''MUD0''', row(ServiceIdentifierMUD, ModuleStatusMUD, OperationTypeMUD, DataClassMUD, DataIdentifierMUD, NumberOfCopyMUD)),
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
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierMD, ModuleStatusMD, OperationTypeMD, DataClassMD, DataIdentifierMD, NumberOfCopyMD]),

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