import psycopg2


def connect_bd():
    """
    Подключает БД
    :return:
    """
    try:
        connection = psycopg2.connect(user="postgres", password="99493876", host="127.0.0.1",
                                      port="5432", database="sky-SQL_work_1")
        print('Connection DONE')
        return connection
    except:
        print('Connection FAILED')
        return False


def output_all(cursor) -> str:
    """
    Возвращает все объявления
    :param cursor: курсор для работы с БД
    :return: запрос к БД в строке
    """
    req = """SELECT * FROM abs"""
    return req



def output_users(cursor) -> str:
    """
    Возвращает Объявления определенного пользователя
    :param cursor: курсор для работы с БД
    :return: запрос к БД в строке
    """
    try:
        us_input = int(input("""Выберите нужного пользователя:
1 - Павел\n2 - Галина\n3 - Борис\n4 - Виолетта\n5 - Петр\n6 - Никита"""))
    except:
        print('incorrect input')
        quit()

    req = f"""
        SELECT id, author, name, price, description
        FROM abs
        JOIN author ON abs.fk_author = author.id_author
        WHERE fk_author = {us_input}
    """
    return req


def output_price_range(cursor) -> str:
    """
    Возвращает объявления в диапозоне цены
    :param cursor: курсор для работы с БД
    :return: запрос к БД в строке
    """
    try:
        us_input_from = float(input('Введите от какой суммы брать - '))
        us_input_to = float(input('Введите до какой суммы брать - '))
    except:
        print('incorrect input')
        quit()

    req = f"""
        SELECT *
        FROM abs
        WHERE price >= {us_input_from} and price <= {us_input_to} 
    """
    return req


def output_for_city(cursor) -> str:
    """
    Возвращает объйвления в зависимости от выбранного города
    :param cursor: курсор для работы с БД
    :return: запрос к БД в строке
    """
    us_input = input('Введите какой город искать - ').title()

    req = f"""
        SELECT id, name, price, description, address_sity
        FROM abs
        JOIN address ON abs.fk_address = address.id_address
        WHERE address_sity = '{us_input}'
    """
    return req


def output_city_price(cursor) -> str:
    """
    Возвращает объявление в зависимости от цены и автора
    :param cursor: курсор для работы с БД
    :return: запрос к БД в строке
    """
    try:
        us_input_price = float(input('Введите какую цену искать - '))
    except:
        print('incorrect input')
        quit()

    us_input_author = input('Введите какого автора искать - ').title()

    req = f"""
            SELECT id, author, name, price, description
            FROM abs
            JOIN author ON abs.fk_author = author.id_author
            WHERE price = '{us_input_price}' and author = '{us_input_author}'
        """
    return req


def user_input(cursor):
    """
    Показывает результат в зависимости от ввода пользователя
    :param cursor: курсор для работы с БД
    :return: False что бы завершить работу проги
    """
    print("""Выберете действие:
    1 - Вывести все объявления
    2 - Вывести объявления конкретного пользователя
    3 - Вывести в диапозоне цен 
    4 - Вывести для города 
    5 - Вывести по пользвателю и цене
    6 - Остановить работу программы
    """)
    try:
        us_input = int(input())
    except:
        print('incorrect input')
        quit()

    match us_input:
        case 1:
            req = output_all(cursor)
        case 2:
            req = output_users(cursor)
        case 3:
            req = output_price_range(cursor)
        case 4:
            req = output_for_city(cursor)
        case 5:
            req = output_city_price(cursor)
        case 6:
            return False
        case _:
            print('incorrect input')
            quit()

    cursor.execute(req)
    data = cursor.fetchall()
    for i in data:
        j = list(map(lambda x: str(x).strip(), i))
        print(j)
