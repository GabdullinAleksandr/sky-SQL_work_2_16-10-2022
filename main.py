from utlis import *


def main():
    """
    Вызывает функции и проверяет конект с БД
    :return:
    """
    conn = connect_bd()
    if conn:
        cursor = conn.cursor()
        while True:
            if user_input(cursor) == False:
                break
        cursor.close()
        conn.close()


if __name__ == '__main__':
    main()
