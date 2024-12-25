from pyswip import Prolog

# Инициализация Prolog
prolog = Prolog()

# Загрузка Prolog файла
prolog.consult('/Users/maksimalsevskih/Downloads/ExpertSystemPrj/dom/Expert_System_for_GEOAI_systems/module_Expert_system/expert_stm_vrs1.pl')

# Вызов правила 'передать_данные' с нужными параметрами
def transfer_data(source, exclude_data_identifier, exclude_data_class):
    target = "X"
    query = f"передать_данные({source}, {target}, '{exclude_data_identifier}', '{exclude_data_class}', Result)"
    
    solutions = list(prolog.query(query))
    print("-----------------solutions\n:", solutions, "\n-----------------")

    unique_solutions = []
    seen_results = set()

    for solution in solutions:
        result = tuple(solution['Result'])
        if result not in seen_results:
            seen_results.add(result)
            unique_solutions.append(solution)
    print()
    print("unique_solutions:", unique_solutions)

    # Проверяем все решения
    for solution in solutions:
        if 'Result' in solution:
            result = solution['Result']
            # Проверяем значение data_class_check
            if all(x == 'true' for x in result[1::2]):
                print("solution: ", solution)
                print("result: ", result)
                return solution


# Пример вызова
def launch_expert_system(exclude_module_identifier, exclude_data_class, exclude_data_identifier):
    print("transfer_data: exclude_module_identifier =", exclude_module_identifier, " X= ? ", "exclude_data_identifier =", exclude_data_identifier, "exclude_data_class =", exclude_data_class)
    result = transfer_data(exclude_module_identifier, exclude_data_identifier, exclude_data_class)
    if not result:
        print(result, "Ошибка. Результат не найден")
    else:
        print("----- result ----", result)
        return result['Result']



data_class = 'data_for_substm3'
data_identifier = 'data00001'

launch_expert_system("SubStm1", data_class, data_identifier)



