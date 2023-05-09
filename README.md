# MIFIIB-HW-BASH

Реализация трёх частей практического задания в "Модуль 3. Администрирование ОС Linux".

> **!** | Если вы зашли сюда и не понимаете, о чём идёт речь, сохраняйте спокойствие: мне временно потребовалось сделать этот репозиторий публичным в ходе обучения на курсах, чтобы это смогли проверить преподаватели (важно было разместить это общедоступным и именно на GitHub). Можете заниматься своими делами и не обращать внимание на сей казус с моей стороны.

## Первое задание

Реализация в папке [`First task`](/First%20task)

В первом практическом задании написан .sh скрипт со следующими действиями:
1. Получение названия дистрибутива системы и её версии, вывод информации в консоль
2. Проверка наличия apt (отсекаем любую систему не на основе Debian/Ubuntu)
3. Проверка на наличие Backports в списке репозиториев и добавление в случае отсутствия
4. Обновление пакетного менеджера
5. Очистка DNS-кэша
6. Установка и запуск Apache2
7. Установка актуального Python
8. Установка и запуск SSH-сервера
9. Удаление неиспользуемых зависимостей
10. Вывод информации о состоянии системы

Целевая система: Ubuntu 22.04  
Интерпретатор: Bash 5.1.16

## Второе задание

Реализация в папке [`Second task`](/Second%20task)

Во втором практическом задании реализовано следующее:
1. Скрипт производит резервное копирование директории `/home/{текущий пользователь}` (подпапки перечислены вручную, поскольку реализаци через цикл потребовала бы вызывать команду архивации множество раз, создавая множество отдельных архивов), конфигурационных файлов основных утилит удалённого доступа (SSH, RDP, FTP), а также директории /var/log.
2. В скрипте также предусмотрена автоочистка длительно хранящихся бэкапов, срок хранения которых 2 недели и больше.
3. В crontab добавлено задание запускать скрипт каждую пятницу в 18:30.

Целевая система: Ubuntu 22.04  
Интерпретатор: Bash 5.1.16

## Третье задание

Реализация в папке [`Third task`](/Third%20task)

В третьем практическом задании реализована отправка логов на указываемый email через Logwatch для сервисов sshd и vsftpd (сбор логов xrdp не интегрирован в утилиту по умолчанию, так что использование его для этого сервиса невозможно без некоторых дополнительных действий). Скрипт также запускается из crontab каждый день в 8:00.

Целевая система: Ubuntu 22.04  
Интерпретатор: Bash 5.1.16
