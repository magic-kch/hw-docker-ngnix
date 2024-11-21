# Используем официальный образ nginx как основу
FROM nginx:latest

# Копируем файл конфигурации nginx
# COPY ./nginx.conf /etc/nginx/nginx.conf

# Копируем файлы веб-сайта в директорию /usr/share/nginx/html
COPY ./index.html /usr/share/nginx/html

# Открываем порт 80 для доступа к веб-сайту
EXPOSE 80

# Запускаем nginx при запуске контейнера
CMD ["nginx", "-g", "daemon off;"]