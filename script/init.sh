#!/bin/bash

# Создание БД
sleep 10
airflow upgradedb
sleep 10

airflow users create --username admin --firstname Alex --lastname Rum --role Admin --email admin@example.org -p admin

# Запуск шедулера и вебсервера
airflow scheduler & airflow webserver

