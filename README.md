# zlayasova_microservices
zlayasova microservices repository

Homework №14

Основное задание:

Прохождение практики по созданию, запуску удалению и пр. контейнеров docker. Написание Dockerfile. Создание и отправка образа в docker hub.
Сравнение информации по образу и контейнеру.

Homework №15

Основное задание:

Прохождение практики по созданию образов для сервисов.

Дополнительное задание:

Собран образ на основе Alphine linux для сервиса UI.

Homework №16

Основное задание:

Прохождение практики по созданию сетей в docker, практика написания файлов для docker-compose.

Базовое имя проекта задается при запуске  через опцию "-p". Например:
docker-compose -f docker-compose.override.yml -p micro up -d

Дополнительно задание:

Создан файл docker-compose.override.yml для проекта reddit без сборки образа и с запуском puma в дебаг режиме.

Homework №17

Основное задание:

Прохождение практики по настройке сервиса мониторинга prometheus и подключения к нему таргетов.

Дополнительное задание:

Добавлены Dockerfile для сборки docker-образов blackbox-exporter и mongodb-exporter. Создан Makefile для сборки и отправки образов в докер хаб.

Homework №18

Основное задание:

Прохождение практики по настройке сервисов мониторинга grafana, alertmanager. Так же к prometheus подключен экспортер cadvisor.

Запушены образы сервисов:
https://hub.docker.com/repository/docker/zlayasova/ui
https://hub.docker.com/repository/docker/zlayasova/post
https://hub.docker.com/repository/docker/zlayasova/comment
https://hub.docker.com/repository/docker/zlayasova/prometheus
https://hub.docker.com/repository/docker/zlayasova/blackbox-exporter
https://hub.docker.com/repository/docker/zlayasova/mongodb_exporter
https://hub.docker.com/repository/docker/zlayasova/alertmanager

Homeowkr №19

Прохождение практики по настройке сервисов логирования и подключения к ним сервисов.
