:- use_module(library(odbc)).

% Предикат для подключения к базе данных PostgreSQL
connect_to_database :-
    odbc_connect('TestConnect', Connection, [user(maksimalsevskih), password(mafree)]).

% Предикат для извлечения данных из базы данных и создания фактов
load_data_from_database :-
    odbc_connect('TestConnect', Connection, [user(maksimalsevskih), password(mafree)]),
    
    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStm9''', row(ServiceIdentifierSubStm9, ModuleStatusSubStm9, OperationTypeSubStm9, DataClassSubStm9, DataIdentifierSubStm9, NumberOfCopySubStm9)),
    assertz(mdl_substm9(ServiceIdentifierSubStm9, ModuleStatusSubStm9, OperationTypeSubStm9, DataClassSubStm9, DataIdentifierSubStm9, NumberOfCopySubStm9)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStm9, ModuleStatusSubStm9, OperationTypeSubStm9, DataClassSubStm9, DataIdentifierSubStm9, NumberOfCopySubStm9]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStm6''', row(ServiceIdentifierSubStm6, ModuleStatusSubStm6, OperationTypeSubStm6, DataClassSubStm6, DataIdentifierSubStm6, NumberOfCopySubStm6)),
    assertz(mdl_substm6(ServiceIdentifierSubStm6, ModuleStatusSubStm6, OperationTypeSubStm6, DataClassSubStm6, DataIdentifierSubStm6, NumberOfCopySubStm6)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStm6, ModuleStatusSubStm6, OperationTypeSubStm6, DataClassSubStm6, DataIdentifierSubStm6, NumberOfCopySubStm6]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStmTest''', row(ServiceIdentifierSubStmTest, ModuleStatusSubStmTest, OperationTypeSubStmTest, DataClassSubStmTest, DataIdentifierSubStmTest, NumberOfCopySubStmTest)),
    assertz(mdl_substmtest(ServiceIdentifierSubStmTest, ModuleStatusSubStmTest, OperationTypeSubStmTest, DataClassSubStmTest, DataIdentifierSubStmTest, NumberOfCopySubStmTest)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStmTest, ModuleStatusSubStmTest, OperationTypeSubStmTest, DataClassSubStmTest, DataIdentifierSubStmTest, NumberOfCopySubStmTest]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStm13''', row(ServiceIdentifierSubStm13, ModuleStatusSubStm13, OperationTypeSubStm13, DataClassSubStm13, DataIdentifierSubStm13, NumberOfCopySubStm13)),
    assertz(mdl_substm13(ServiceIdentifierSubStm13, ModuleStatusSubStm13, OperationTypeSubStm13, DataClassSubStm13, DataIdentifierSubStm13, NumberOfCopySubStm13)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStm13, ModuleStatusSubStm13, OperationTypeSubStm13, DataClassSubStm13, DataIdentifierSubStm13, NumberOfCopySubStm13]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStm12''', row(ServiceIdentifierSubStm12, ModuleStatusSubStm12, OperationTypeSubStm12, DataClassSubStm12, DataIdentifierSubStm12, NumberOfCopySubStm12)),
    assertz(mdl_substm12(ServiceIdentifierSubStm12, ModuleStatusSubStm12, OperationTypeSubStm12, DataClassSubStm12, DataIdentifierSubStm12, NumberOfCopySubStm12)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStm12, ModuleStatusSubStm12, OperationTypeSubStm12, DataClassSubStm12, DataIdentifierSubStm12, NumberOfCopySubStm12]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStm5''', row(ServiceIdentifierSubStm5, ModuleStatusSubStm5, OperationTypeSubStm5, DataClassSubStm5, DataIdentifierSubStm5, NumberOfCopySubStm5)),
    assertz(mdl_substm5(ServiceIdentifierSubStm5, ModuleStatusSubStm5, OperationTypeSubStm5, DataClassSubStm5, DataIdentifierSubStm5, NumberOfCopySubStm5)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStm5, ModuleStatusSubStm5, OperationTypeSubStm5, DataClassSubStm5, DataIdentifierSubStm5, NumberOfCopySubStm5]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStm1''', row(ServiceIdentifierSubStm1, ModuleStatusSubStm1, OperationTypeSubStm1, DataClassSubStm1, DataIdentifierSubStm1, NumberOfCopySubStm1)),
    assertz(mdl_substm1(ServiceIdentifierSubStm1, ModuleStatusSubStm1, OperationTypeSubStm1, DataClassSubStm1, DataIdentifierSubStm1, NumberOfCopySubStm1)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStm1, ModuleStatusSubStm1, OperationTypeSubStm1, DataClassSubStm1, DataIdentifierSubStm1, NumberOfCopySubStm1]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStm8''', row(ServiceIdentifierSubStm8, ModuleStatusSubStm8, OperationTypeSubStm8, DataClassSubStm8, DataIdentifierSubStm8, NumberOfCopySubStm8)),
    assertz(mdl_substm8(ServiceIdentifierSubStm8, ModuleStatusSubStm8, OperationTypeSubStm8, DataClassSubStm8, DataIdentifierSubStm8, NumberOfCopySubStm8)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStm8, ModuleStatusSubStm8, OperationTypeSubStm8, DataClassSubStm8, DataIdentifierSubStm8, NumberOfCopySubStm8]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStm11''', row(ServiceIdentifierSubStm11, ModuleStatusSubStm11, OperationTypeSubStm11, DataClassSubStm11, DataIdentifierSubStm11, NumberOfCopySubStm11)),
    assertz(mdl_substm11(ServiceIdentifierSubStm11, ModuleStatusSubStm11, OperationTypeSubStm11, DataClassSubStm11, DataIdentifierSubStm11, NumberOfCopySubStm11)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStm11, ModuleStatusSubStm11, OperationTypeSubStm11, DataClassSubStm11, DataIdentifierSubStm11, NumberOfCopySubStm11]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStm14''', row(ServiceIdentifierSubStm14, ModuleStatusSubStm14, OperationTypeSubStm14, DataClassSubStm14, DataIdentifierSubStm14, NumberOfCopySubStm14)),
    assertz(mdl_substm14(ServiceIdentifierSubStm14, ModuleStatusSubStm14, OperationTypeSubStm14, DataClassSubStm14, DataIdentifierSubStm14, NumberOfCopySubStm14)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStm14, ModuleStatusSubStm14, OperationTypeSubStm14, DataClassSubStm14, DataIdentifierSubStm14, NumberOfCopySubStm14]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStm7''', row(ServiceIdentifierSubStm7, ModuleStatusSubStm7, OperationTypeSubStm7, DataClassSubStm7, DataIdentifierSubStm7, NumberOfCopySubStm7)),
    assertz(mdl_substm7(ServiceIdentifierSubStm7, ModuleStatusSubStm7, OperationTypeSubStm7, DataClassSubStm7, DataIdentifierSubStm7, NumberOfCopySubStm7)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStm7, ModuleStatusSubStm7, OperationTypeSubStm7, DataClassSubStm7, DataIdentifierSubStm7, NumberOfCopySubStm7]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStm4''', row(ServiceIdentifierSubStm4, ModuleStatusSubStm4, OperationTypeSubStm4, DataClassSubStm4, DataIdentifierSubStm4, NumberOfCopySubStm4)),
    assertz(mdl_substm4(ServiceIdentifierSubStm4, ModuleStatusSubStm4, OperationTypeSubStm4, DataClassSubStm4, DataIdentifierSubStm4, NumberOfCopySubStm4)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStm4, ModuleStatusSubStm4, OperationTypeSubStm4, DataClassSubStm4, DataIdentifierSubStm4, NumberOfCopySubStm4]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStm3''', row(ServiceIdentifierSubStm3, ModuleStatusSubStm3, OperationTypeSubStm3, DataClassSubStm3, DataIdentifierSubStm3, NumberOfCopySubStm3)),
    assertz(mdl_substm3(ServiceIdentifierSubStm3, ModuleStatusSubStm3, OperationTypeSubStm3, DataClassSubStm3, DataIdentifierSubStm3, NumberOfCopySubStm3)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStm3, ModuleStatusSubStm3, OperationTypeSubStm3, DataClassSubStm3, DataIdentifierSubStm3, NumberOfCopySubStm3]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStm10''', row(ServiceIdentifierSubStm10, ModuleStatusSubStm10, OperationTypeSubStm10, DataClassSubStm10, DataIdentifierSubStm10, NumberOfCopySubStm10)),
    assertz(mdl_substm10(ServiceIdentifierSubStm10, ModuleStatusSubStm10, OperationTypeSubStm10, DataClassSubStm10, DataIdentifierSubStm10, NumberOfCopySubStm10)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStm10, ModuleStatusSubStm10, OperationTypeSubStm10, DataClassSubStm10, DataIdentifierSubStm10, NumberOfCopySubStm10]),

    odbc_query(Connection, 'SELECT service_identifier, module_status, operation_type, data_class, data_identifier, number_of_copy FROM back_secservicemodel WHERE service_identifier = ''SubStm2''', row(ServiceIdentifierSubStm2, ModuleStatusSubStm2, OperationTypeSubStm2, DataClassSubStm2, DataIdentifierSubStm2, NumberOfCopySubStm2)),
    assertz(mdl_substm2(ServiceIdentifierSubStm2, ModuleStatusSubStm2, OperationTypeSubStm2, DataClassSubStm2, DataIdentifierSubStm2, NumberOfCopySubStm2)),
    format('Service Identifier: ~w, Module Status: ~w, Operation Type: ~w, Data Class: ~w, Data Identifier: ~w, Number of Copy: ~w~n', [ServiceIdentifierSubStm2, ModuleStatusSubStm2, OperationTypeSubStm2, DataClassSubStm2, DataIdentifierSubStm2, NumberOfCopySubStm2]),

    odbc_disconnect(Connection).


% Правило для передачи данных от подсистемы №11 к подсистеме №10, проверяя статус и другие параметры
передать_данные('SubStm11', mdl_substm10, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm10(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm10' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от подсистемы №10 к подсистеме №9, проверяя статус и другие параметры
передать_данные('SubStm10', mdl_substm9, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm9(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm9' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от подсистемы №9 к подсистеме №5, проверяя статус и другие параметры
передать_данные('SubStm9', mdl_substm5, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm5(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm5' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от подсистемы №7 к подсистеме №8, проверяя статус и другие параметры
передать_данные('SubStm7', mdl_substm8, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm8(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm8' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от подсистемы №6 к подсистеме №7, проверяя статус и другие параметры
передать_данные('SubStm6', mdl_substm7, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm7(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm7' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от подсистемы №6 к подсистеме №5, проверяя статус и другие параметры
передать_данные('SubStm6', mdl_substm5, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm5(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm5' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от подсистемы №12 к подсистеме №5, проверяя статус и другие параметры
передать_данные('SubStm12', mdl_substm5, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm5(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm5' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от подсистемы №13 к подсистеме №5, проверяя статус и другие параметры
передать_данные('SubStm13', mdl_substm5, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm5(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm5' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от подсистемы №14 к подсистеме №5, проверяя статус и другие параметры
передать_данные('SubStm14', mdl_substm5, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    mdl_substm5(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm5' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от подсистемы №1 к подсистеме №2, проверяя статус и другие параметры
передать_данные('SubStm1', mdl_substm2, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm2(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('От подсистемы №1 к подсистеме №2 - Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm2' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от подсистемы №1 к подсистеме №4, проверяя статус и другие параметры
передать_данные('SubStm1', mdl_substm4, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm4(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('От подсистемы №1 к подсистеме №4 - Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm4' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от подсистемы №1 к подсистеме №3 mdl_grd0, проверяя статус и другие параметры
передать_данные('SubStm1', mdl_substm3, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm3(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('От подсистемы №1 к подсистеме №3 - Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm3' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от подсистемы №2 к подсистеме №5, проверяя статус и другие параметры
передать_данные('SubStm2', mdl_substm5, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm5(ServiceIdentifier, ModuleStatus, _, _,  DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm5' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от подсистемы №5 к подсистеме №1, проверяя статус и другие параметры
передать_данные('SubStm5', mdl_substm1, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm1(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n, Data Class: ~w~n', [ModuleStatus, DataIdentifier, DataClass]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm1' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от подсистемы №5 к подсистеме №14, проверяя статус и другие параметры
передать_данные('SubStm5', mdl_substm14, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm14(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm14' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от подсистемы №5 к подсистеме №13, проверяя статус и другие параметры
передать_данные('SubStm5', mdl_substm13, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm13(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm13' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от подсистемы №5 к подсистеме №12 mdl_soil0, проверяя статус и другие параметры
передать_данные('SubStm5', mdl_substm12, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm12(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm12' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от подсистемы №5 к подсистеме №9, проверяя статус и другие параметры
передать_данные('SubStm5', mdl_substm9, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm9(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm9' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].

% Правило для передачи данных от подсистемы №5 к подсистеме №6, проверяя статус и другие параметры
передать_данные('SubStm5', mdl_substm6, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm6(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm6' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от подсистемы №4 к подсистеме №1, проверяя статус и другие параметры
передать_данные('SubStm4', mdl_substm1, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm1(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm1' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].


% Правило для передачи данных от подсистемы №3 к подсистеме №1, проверяя статус и другие параметры
передать_данные('SubStm3', mdl_substm1, ExcludeDataIdentifier, ExcludeDataClass, Result) :-
    load_data_from_database,
    mdl_substm1(ServiceIdentifier, ModuleStatus, _, _, DataIdentifier, _),
    format('Module Status: ~w, Data Identifier: ~w~n', [ModuleStatus, DataIdentifier]),
    (ModuleStatus = 'RST' -> MSCheck = true ; MSCheck = false),
    (ExcludeDataClass = 'data_for_substm1' -> DCCheck = true ; DCCheck = false),
    (DataIdentifier \= ExcludeDataIdentifier -> DIExcludeCheck = true ; DIExcludeCheck = false),
    % Проверка, что все проверки истинны
    MSCheck, DCCheck, DIExcludeCheck,
    Result = [ServiceIdentifier, 'true', module_status_check, MSCheck, data_identifier_check, DIExcludeCheck, data_class_check, DCCheck].