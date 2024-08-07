# InterShopImage

Папка net8.0 это API проекта

```
./net8.0
```

Папка wwwroot Веб-сайт проекта

```
./wwwroot
```

конфигурация dockerfile отвечает за создание образов

```
dockerfile
```

Пакет для обновления репозиторий для скачки runtime библиотек dotnet-core и aspnetcore

```
packages-microsoft-prod.deb
```

Кастомная конфигурация postgreSQL для одобрения запросов всех с дефолтного пользователя postgres

```
pg_hba.conf
```

Скрипт требуемый для функциональной работы контейнера

```
configContainer.sh
```

## Docker-compose.yml и работа с удаленным репозиторием

Потребуется установка движка самого docker

[Документация к установке](https://docs.docker.com/engine/install/)

После установки движка нам потребуется команда

```
docker compose -f ./docker-compose.yml up
```

Внутри файла

```
version: '3.8'
services: //Сервисы
  InterShop:  //Название Сервиса
    image: vandal1334/intershop:latest //Установка с удаленного репозитория образа 
    ports:
      - "5000:80" //Прокинутые через 
```

Ссылка на репозиторий dockerhub с образом проекта

```
https://hub.docker.com/repository/docker/vandal1334/intershop/general
```
