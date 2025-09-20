your_proj/
├─ Dockerfile
├─ requirements.txt
├─ .gitignore
├─ .dockerignore
├─ notebooks/
└─ README.md   ← ты здесь


# Чтобы запустить

## собери образ из текущего Dockerfile
docker build -t choose_images_name .

## далее создай .env файл с токенами (если хочешь)
touch .env
nano .env #пропиши переменные окружения в открывшемся окне

##запусти контейнер
docker run -it --rm \
  -p 8888:8888 \
  --env-file .env \
  -v "$(pwd)/notebooks:/home/jovyan/work" \
  choose_images_name

##перейди по ссылке и наслаждайся работой в контейнере
http://localhost:8888/lab

## если не открывает ноутбуки, то вероятно ошибка в правах: из-за того, что мы пытаемся прокинуть маунт на хост и хост ругается
## чтобы пофиксить - надо через sudo разрешить эту операцию (загугли как это сделать)
