#!/bin/bash

# Переход в каталог /opt
cd /opt

# Удаление старой версии репозитория (если есть)
if [ -d "shvirtd-example-python" ]; then
  rm -rf shvirtd-example-python
fi

# Клонирование репозитория
git clone https://github.com/Chika1703/shvirtd-example-python.git

# Переход в каталог проекта
cd /opt/shvirtd-example-python

# Запуск проекта с помощью Docker Compose
sudo docker compose up -d

# Вывод информации о запущенных контейнерах
sudo docker ps -a
