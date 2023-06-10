# nginx-k8s
simple http nginx server running in kubernetes

1. Создать простой HTTP сервер(любой язык программирования\nginx\etc.), который имеет 2 эндпоинта:
- /message - возвращает сообщение, заданное в конфигурационном файле;
- /health - возвращает 200 Ok;
2. Создать Dockerfile для этого сервера.
3. Создать манифесты Kubernetes, необходимые для этого сервера (namespace, service, deployment, configmap):
- configmap должен содержать сообщение, которое будет возвращать эндпоинт /message;
- deployment должен содержать startup probe и liveness probe;
4. Создать bash-скрипт, который должен содержать:
- команду для сборки docker-образа сервера;
- команду для отправки docker-образа в удаленный репозиторий;
- команду kubectl для создания объектов kubernetes из п.3;
- команду kubectl для вывода статуса deployment из п.3;
5. Результат положить в открытый репозитарий git-сервера (GitHub, GitLab, ect.)
