# Тестовое задания для junior python-разработчика
[Ссылка на исходное тестовое задание ](https://yandex.ru/q/pythontalk/12735212546/)



## Задача
* Вам нужно разработать онлайн-каталог сотрудников для компании, чей штат насчитывает больше 50 000 человек.  

## Описание
* Команда для запуска docker-compose up
* Генерация 50 000 записей занимает продолжительное время, поэтому для ускорения процесса в стандартном исполнении поставил создание 250 сотрудников. Кол-во генерируемых записей регулируется в файле [run.sh](run.sh) переменными --levels= и --emp_amount= 
* При развертывании автоматически создаётся учетная запись администратора (login: admin, pass: admin)
* Адрес главной страницы http://localhost:8000/


### Реализованный функционал
#### Часть № 1 (обязательная)
Создайте веб-страницу, которая будет выводить иерархию сотрудников в древовидной форме.  
+ Информация о каждом сотруднике должна храниться в базе данных и содержать следующие данные:
    - ФИО;
    - должность;
    - дата приёма на работу;
    - размер заработной платы;
+ У каждого сотрудника есть 1 начальник.
+ База данных должна содержать не менее 50 000 сотрудников и 5 уровней иерархий.
+ Не забудьте отобразить должность сотрудника.

#### Часть № 2 (выполненные дополнительные функции)
+ Создайте базу данных, используя миграции Django / Flask.
+ Используйте DB seeder для Django ORM / Flask-SQLAlchemy для заполнения базы данных. 
+ Используйте Twitter Bootstrap для создания базовых стилей вашей страницы.
+ Создайте ещё одну страницу и выведите на ней список сотрудников со всей имеющейся о них информацией из базы данных, реализуйте возможность сортировки по любому полю. (сортировка реализована по клику на название столбца)
+ Добавьте возможность поиска сотрудников по любому полю для страницы, созданной в пункте 4.
+ Используя стандартные функции Django / Flask, осуществите аутентификацию пользователя для раздела веб-сайта, 
доступного только для зарегистрированных пользователей.(Аутентификация для страницы с подробной информацией и проверка прав администратора для страницы редактирования данных)
+ Осуществите возможность загружать фотографию сотрудника и отобразите её на странице, где можно редактировать данные о сотруднике. Добавьте дополнительную колонку с уменьшенной фотографией сотрудника на странице списка всех сотрудников.
+ Осуществите возможность перераспределения сотрудников в случае изменения начальника (на странице редактирования данных реализована возможность изменения начальника при это, уровень иехархии для всех субподчиненных также изменяется)